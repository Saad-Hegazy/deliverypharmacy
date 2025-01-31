class AppLink {
  static  const String server = "https://pharmacy.gripbh.org/delivery";
  static  const String servermain = "https://pharmacy.gripbh.org";

  static  const String imageststatic = "$servermain/upload";
//========================== Image ============================
  static const String imagestCategories = "$imageststatic/categories";
  static const String imagestItems = "$imageststatic/items";
  static const String imagestOrders = "$imageststatic/orders";
// =============================================================
//

  static const String notification = "$servermain/notification.php";

// ================================= Auth ========================== //

  static const String login = "$server/auth/login.php";
  static const String verifycodessignup = "$server/auth/verfiycode.php";
  static const String resend = "$server/auth/resend.php";

// ================================= ForgetPassword ========================== //

  static const String checkEmail = "$server/forgetpassword/checkemail.php";
  static const String resetPassword = "$server/forgetpassword/resetpassword.php";
  static const String verifycodeforgetpassword = "$server/forgetpassword/verifycode.php";

// Home
  static const String homepage = "$servermain/home.php";
// ================================= Orders ========================== //
  static const String pendingOrders  = "$server/orders/pending.php";
  static const String viweacceptedOrders  = "$server/orders/accepted.php";
  static const String donedeliveryOrders  = "$server/orders/done.php";
  static const String approveOrders  = "$server/orders/approve.php";
  static const String viwearchiveOrders  = "$server/orders/archive.php";
  static const String detailsOrders  = "$server/orders/details.php";
  static const String customerdetails  = "$servermain/orders/customerdetails.php";

}