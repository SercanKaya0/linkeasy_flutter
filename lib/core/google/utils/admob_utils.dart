import 'dart:io';

class AdmobUtilsHelper {
  static final AdmobUtilsHelper instance = AdmobUtilsHelper();

    String platformSensitiveAdmobID(
      {required String iosAdmobID, required String androidAdmobID}) {
    if (Platform.isIOS || Platform.isMacOS) {
      return iosAdmobID;
    } else if (Platform.isAndroid) {
      return androidAdmobID;
    } else if (Platform.isLinux) {
      return androidAdmobID;
    } else if (Platform.isWindows) {
      return androidAdmobID;
    } else if (Platform.isFuchsia) {
      return androidAdmobID;
    } else {
      return iosAdmobID;
    }
  }
}
