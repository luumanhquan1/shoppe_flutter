import 'package:http/http.dart' as http;
import 'dart:convert';
class Suathongtin{
  Future<String> suathongtin(String id,String name) async {

    String link='http://192.168.211.1:3000/suathongtin';
    http.Response response= await http.post(link,body: {
                'hoten':name,
      'id':id
    });
    dynamic jsonRaw=json.decode(response.body);
    return jsonRaw['trangthai'];
  }
}