import 'dart:io';

import '../../../../core/class/crud.dart';
import '../../../../linkapi.dart';

class OrdersAcceptedData {
  Crud crud;
  OrdersAcceptedData(this.crud);
  getData(String deliveryid) async {
    var response = await crud.postData(AppLink.viweacceptedOrders, {"id": deliveryid});
    return response.fold((l) => l, (r) => r);
  }

  doneDelivery(String ordersid, String usersid,File file) async {
    var response = await crud.addRequestWithImageOne(AppLink.donedeliveryOrders, {
      "ordersid": ordersid, "usersid":usersid },file);
    return response.fold((l) => l, (r) => r);
  }
}