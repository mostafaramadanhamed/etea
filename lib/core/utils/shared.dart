
import '../helper/shared_pref_helper.dart';
import 'package:etea/core/helper/custom_extension.dart';

class SharedPrefKeys {
  static const String userToken = "userToken";
}
bool isLoggedInUser = false;

 int selectedIndex = 0;

checkIfLoggedInUser() async {
  String? userToken =
      await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);
  if (! userToken.isNullOrEmpty()) {
    isLoggedInUser = true;
  } else {
    isLoggedInUser = false;
  }
}