class CartModel {
  int? countitems;
  int? cartId;
  int? cartUsersid;
  int? cartItemsid;
  num? cartitemprice;
  int? itemsId;
  String? itemsName;
  String? itemsNameAr;
  String? itemsDesc;
  String? itemsDescAr;
  String? itemsImage;
  var itemsCount;
  int? itemsActive;
  int? itemsquantityinbox;
  int? cartitemisbox;
  num? itemspricrofbox;
  num? itemspricrofboxmerchant;
  num? itemspricrofboxmosque;
  num? itemsPrice;
  num? itemsDescount;
  num? itemsPriceMerchant;
  num? itemsDescountMerchant;
  num? itemsPriceMosque;
  num? itemsDescountMosque;
  String? itemsDate;
  int? itemsCat;

  CartModel(
      {
        this.countitems,
        this.cartId,
        this.cartUsersid,
        this.cartItemsid,
        this.cartitemprice,
        this.itemsId,
        this.itemsName,
        this.itemsNameAr,
        this.itemsDesc,
        this.itemsDescAr,
        this.itemsImage,
        this.itemsCount,
        this.itemsActive,
        this.itemsquantityinbox,
        this.cartitemisbox,
        this.itemspricrofbox,
        this.itemspricrofboxmerchant,
        this.itemspricrofboxmosque,
        this.itemsPrice,
        this.itemsDescount,
        this.itemsPriceMerchant,
        this.itemsDescountMerchant,
        this.itemsPriceMosque,
        this.itemsDescountMosque,
        this.itemsDate,
        this.itemsCat});

  CartModel.fromJson(Map<String, dynamic> json) {
    countitems = json['countitems'];
    cartId = json['cart_id'];
    cartUsersid = json['cart_usersid'];
    cartItemsid = json['cart_itemsid'];
    cartitemprice = json['cart_itemprice'];
    itemsId = json['items_id'];
    itemsName = json['items_name'];
    itemsNameAr = json['items_name_ar'];
    itemsDesc = json['items_desc'];
    itemsDescAr = json['items_desc_ar'];
    itemsImage = json['items_image'];
    itemsCount = json['items_count'];
    itemsActive = json['items_active'];
    itemsquantityinbox = json['items_quantityinbox'];
    cartitemisbox = json['cart_itemisbox'];
    itemspricrofbox = json['items_pricrofbox'];
    itemspricrofboxmerchant = json['items_pricrofbox_merchant'];
    itemspricrofboxmosque = json['items_pricrofbox_mosque'];
    itemsPrice = json['items_price'];
    itemsDescount = json['items_descount'];
    itemsPriceMerchant = json['items_price_merchant'];
    itemsPriceMosque = json['items_price_mosque'];
    itemsDescountMosque = json['items_descount_mosque'];
    itemsDescountMerchant = json['items_descount_Merchant'];
    itemsDate = json['items_date'];
    itemsCat = json['items_cat'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['countitems'] = this.countitems;
    data['cart_id'] = this.cartId;
    data['cart_usersid'] = this.cartUsersid;
    data['cart_itemsid'] = this.cartItemsid;
    data['cart_itemprice'] = this.cartitemprice;
    data['items_id'] = this.itemsId;
    data['items_name'] = this.itemsName;
    data['items_name_ar'] = this.itemsNameAr;
    data['items_desc'] = this.itemsDesc;
    data['items_desc_ar'] = this.itemsDescAr;
    data['items_image'] = this.itemsImage;
    data['items_count'] = this.itemsCount;
    data['items_active'] = this.itemsActive;
    data['items_quantityinbox'] = itemsquantityinbox;
    data['cart_itemisbox'] = cartitemisbox;
    data['items_price'] = this.itemsPrice;
    data['items_pricrofbox'] = itemspricrofbox;
    data['items_pricrofbox_merchant'] = itemspricrofboxmerchant;
    data['items_pricrofbox_mosque'] = itemspricrofboxmosque;
    data['items_descount'] = this.itemsDescount;
    data['items_price_merchant'] = this.itemsPriceMerchant;
    data['items_price_mosque'] = this.itemsPriceMosque;
    data['items_descount_mosque'] = this.itemsDescountMosque;
    data['items_descount_Merchant'] = this.itemsDescountMerchant;
    data['items_date'] = this.itemsDate;
    data['items_cat'] = this.itemsCat;
    return data;
  }
}