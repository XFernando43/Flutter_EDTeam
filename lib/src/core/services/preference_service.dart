import 'package:shared_preferences/shared_preferences.dart';

class PreferenceService{
  PreferenceService._();
  static final instace = PreferenceService._();

  Future<String> getString(String key) async{
    SharedPreferences instace = await SharedPreferences.getInstance();
    return instace.getString(key)?? " "; 
  }

  Future<void> setString(String key, String value) async{
    SharedPreferences instace = await SharedPreferences.getInstance();
    instace.setString(key, value);

  }

  Future<bool> getBool(String key) async{
    SharedPreferences instace = await SharedPreferences.getInstance();
    return instace.getBool(key)?? false; 
  }

  Future<void> setBool(String key, bool value) async{
    SharedPreferences instace = await SharedPreferences.getInstance();
    instace.setBool(key, value);

  }
  
}