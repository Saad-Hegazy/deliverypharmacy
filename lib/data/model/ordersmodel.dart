class OrdersModel {
  int? ordersId;
  int? ordersUsersid;
  String? ordersUserstype;
  int? ordersAddress;
  int? ordersType;
  num? ordersPricedelivery;
  num? ordersPrice;
  num? ordersTotalprice;
  int? ordersCoupon;
  String? ordersNoterating;
  int? ordersRating;
  int? ordersPaymentmethod;
  int? ordersStatus;
  String? ordersdoneimage;
  int? ordersdeliveryid;
  String? ordersDatetime;
  int? addressId;
  int? addressUsersid;
  String? addressName;
  String? addressCity;
  String? addressStreet;
  num? ordersAddressLat;
  num? ordersAddressLong;


  OrdersModel(
      {this.ordersId,
        this.ordersUsersid,
        this.ordersUserstype,
        this.ordersAddress,
        this.ordersType,
        this.ordersPricedelivery,
        this.ordersPrice,
        this.ordersTotalprice,
        this.ordersCoupon,
        this.ordersNoterating,
        this.ordersRating,
        this.ordersPaymentmethod,
        this.ordersStatus,
        this.ordersdoneimage,
        this.ordersdeliveryid,
        this.ordersDatetime,
        this.addressId,
        this.addressUsersid,
        this.addressName,
        this.addressCity,
        this.addressStreet,
        this.ordersAddressLat,
        this.ordersAddressLong});

  OrdersModel.fromJson(Map<String, dynamic> json) {
    ordersId = json['orders_id'];
    ordersUsersid = json['orders_usersid'];
    ordersUserstype = json['orders_userstype'];
    ordersAddress = json['orders_address'];
    ordersType = json['orders_type'];
    ordersPricedelivery = json['orders_pricedelivery'];
    ordersPrice = json['orders_price'];
    ordersTotalprice = json['orders_totalprice'];
    ordersCoupon = json['orders_coupon'];
    ordersNoterating = json['orders_noterating'];
    ordersRating = json['orders_rating'];
    ordersPaymentmethod = json['orders_paymentmethod'];
    ordersStatus = json['orders_status'];
    ordersdoneimage = json['orders_done_image'];
    ordersdeliveryid = json['orders_delivery'];
    ordersDatetime = json['orders_datetime'];
    addressId = json['address_id'];
    addressUsersid = json['address_usersid'];
    addressName = json['address_name'];
    addressCity = json['address_city'];
    addressStreet = json['address_street'];
    ordersAddressLat = json['orders_address_lat'];
    ordersAddressLong = json['orders_address_long'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['orders_id'] = this.ordersId;
    data['orders_usersid'] = this.ordersUsersid;
    data['orders_userstype'] = this.ordersUserstype;
    data['orders_address'] = this.ordersAddress;
    data['orders_type'] = this.ordersType;
    data['orders_pricedelivery'] = this.ordersPricedelivery;
    data['orders_price'] = this.ordersPrice;
    data['orders_totalprice'] = this.ordersTotalprice;
    data['orders_coupon'] = this.ordersCoupon;
    data['orders_noterating'] = this.ordersNoterating;
    data['orders_rating'] = this.ordersRating;
    data['orders_paymentmethod'] = this.ordersPaymentmethod;
    data['orders_status'] = this.ordersStatus;
    data['orders_done_image'] = this.ordersdoneimage;
    data['orders_delivery'] = this.ordersdeliveryid;
    data['orders_datetime'] = this.ordersDatetime;
    data['address_id'] = this.addressId;
    data['address_usersid'] = this.addressUsersid;
    data['address_name'] = this.addressName;
    data['address_city'] = this.addressCity;
    data['address_street'] = this.addressStreet;
    data['orders_address_lat'] = this.ordersAddressLat;
    data['orders_address_long'] = this.ordersAddressLong;
    return data;
  }
}