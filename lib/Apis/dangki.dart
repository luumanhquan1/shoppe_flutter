import 'package:http/http.dart' as http;
class ApitPostdangki{
  Future<String> postdangki(String username,String password) async {
    String link='http://192.168.0.2:3000/postdangki';
    http.Response response=await http.post(link,body:  {
      "username" : username,
      'password':password
    });
    return response.body.toString();
  }
}