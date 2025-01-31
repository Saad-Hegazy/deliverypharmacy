import 'dart:io';

import 'package:get/get.dart';
import '../../core/class/statusrequest.dart';
import '../../core/functions/handingdatacontroller.dart';
import '../../core/functions/uploadfile.dart';
import '../../core/services/services.dart';
import '../../data/datasource/remote/orders/accepted_data.dart';
import '../../data/model/ordersmodel.dart';


class OrdersAcceptedController extends GetxController {

  OrdersAcceptedData ordersAcceptedData = OrdersAcceptedData(Get.find());

  List<OrdersModel> data = [];

  late StatusRequest statusRequest;

  MyServices myServices = Get.find();
  File? file;

  String printOrderType(int val) {
    if (val == 0) {
      return "delivery";
    } else {
      return "Recive";
    }
  }

  String printPaymentMethod(int val) {
    if (val == 0) {
      return "Cash On Delivery";
    } else {
      return "Payment Card";
    }
  }

  String printOrderStatus(int val) {
    if (val == 0) {
      return "Pending Approval";
    } else if (val == 1) {
      return "The Order is being Prepared ";
    } else if (val == 2) {
      return "Ready To Picked up by Delivery man";
    }  else if (val == 3) {
      return "On The Way";
    } else {
      return "Archive";
    }
  }
  getOrders() async {
    data.clear();
    statusRequest = StatusRequest.loading;
    update();
    var response = await ordersAcceptedData.getData(
        myServices.sharedPreferences.getString("id")!
    );
    print("=============================== OrdersAcceptedController $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        List listdata = response['data'];
        data.addAll(listdata.map((e) => OrdersModel.fromJson(e)));
        print("$listdata");
      } else {
        statusRequest = StatusRequest.failure;
      }
      // End
    }
    update();
  }

  doneDlivery(String ordersid,String usersid) async {
    data.clear();
     if(file ==null) Get.snackbar("Warning", "Please Choose Image");
    statusRequest = StatusRequest.loading;
    update();
    var response = await ordersAcceptedData.doneDelivery(
        ordersid,usersid,file!
    );
    print("=============================== OrdersAcceptedController $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        refrehOrder();

      } else {
        statusRequest = StatusRequest.failure;
      }
      // End
    }
    update();
  }
  showOptionImage(){
    showbottommenu(chooseImageCamera,chooseImageGallery);

  }
  chooseImageCamera()async{
    file = await imageUploadCamera();
    update();
  }
  chooseImageGallery()async{
    file = await fileUploadGallery(false);
    update();
  }

  refrehOrder() {
    getOrders();
  }

  @override
  void onInit() {
    getOrders();
    super.onInit();
  }
}