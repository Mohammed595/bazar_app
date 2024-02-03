import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefnsSirves {
  static late SharedPreferences sharedPreferences;
  SharedPrefnsSirves();

  static Future<SharedPrefnsSirves> create() async {
    var instance = SharedPrefnsSirves();
    await instance.initSharedPrefns();

    return instance;
  }

  Future<void> initSharedPrefns() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  void setASNotPassed() {
    sharedPreferences.setString('aaaasPassed', 'no');
  }

  void setASPassed() {
    sharedPreferences.setString('aaaasPassed', 'yes');
  }

  bool isPassed() {
    final y = sharedPreferences.get('aaaasPassed');
    String x = y.toString();
    print('>>>> $x');
    if (x == 'no' || y == null) {
      return false;
    } else {
      return true;
    }
  }
}
