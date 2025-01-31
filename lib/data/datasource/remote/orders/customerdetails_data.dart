import '../../../../core/class/crud.dart';
import '../../../../linkapi.dart';
class CustomerDetailsData {
  Crud crud;
  CustomerDetailsData(this.crud);
  customerData(String customerid) async {
    var response = await crud.postData(AppLink.customerdetails, {"customerid": customerid});
    return response.fold((l) => l, (r) => r);
  }
}