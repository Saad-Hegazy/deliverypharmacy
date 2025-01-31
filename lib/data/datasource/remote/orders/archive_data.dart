import '../../../../core/class/crud.dart';
import '../../../../linkapi.dart';

class OrdersArchiveData {
  Crud crud;
  OrdersArchiveData(this.crud);
  getData(String userid) async {
    var response = await crud.postData(AppLink.viwearchiveOrders, {"id": userid});
    return response.fold((l) => l, (r) => r);
  }



}