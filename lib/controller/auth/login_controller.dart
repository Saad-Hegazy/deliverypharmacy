import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:googleapis/connectors/v2.dart';
import '../../core/class/statusrequest.dart';
import '../../core/constant/routes.dart';
import '../../core/functions/handingdatacontroller.dart';
import '../../core/services/notification_service.dart';
import '../../core/services/services.dart';
import '../../data/datasource/remote/auth/login.dart';
import 'package:googleapis_auth/auth_io.dart' as auth;
import 'package:googleapis/servicecontrol/v1.dart' as servicecontrol;
import 'package:http/http.dart' as http;
abstract class LoginController extends GetxController {
  login();
  goToForgetPassword();
}

class LoginControllerImp extends LoginController {
  LoginData loginData  = LoginData(Get.find()) ;
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;
  bool isshowpassword = true;
  MyServices myServices=Get.find();
  StatusRequest statusRequest=StatusRequest.none ;
  showPassword() {
    isshowpassword = isshowpassword == true ? false : true;
    update();
  }
  @override
  login() async {
    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update() ;
      var response = await loginData.postdata(email.text , password.text);
      print("=============================== loginController $response ");
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          // data.addAll(response['data']);
          if (response['data']['delivery_approve'] == 1) {
            myServices.sharedPreferences.setString("id", response['data']['delivery_id'].toString());
            String deliveryid = myServices.sharedPreferences.getString("id")!;
            myServices.sharedPreferences.setString("username", response['data']['delivery_name']);
            myServices.sharedPreferences.setString("email", response['data']['delivery_email']);
            myServices.sharedPreferences.setString("phone", response['data']['delivery_phone'].toString());
            myServices.sharedPreferences.setString("step", "2");
            FirebaseMessaging.instance.subscribeToTopic("delivery");
            FirebaseMessaging.instance.subscribeToTopic("delivery${deliveryid}");

            NotificationService notificationService =NotificationService();
            String DeviceToken =await notificationService.getDeviceToken();
           myServices.sharedPreferences.setString("userDeviceToken", DeviceToken);
            Get.offNamed(AppRoute.homepage);

          }
        } else {
          Get.defaultDialog(title: "ُWarning" , middleText: "Email Or Password Not Correct");
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    } else {

    }
  }




  @override
  void onInit() async{
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  goToForgetPassword() {
    Get.toNamed(AppRoute.forgetPassword);
  }
}