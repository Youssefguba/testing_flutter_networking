import 'package:dio/dio.dart';

class NetworkService {

  Future<Response> getHelloWorld() async {
    // replace localhost with your IP Address
    final response = await Dio().get('http://localhost:8080/');
    return response;
  }

  Future<Response> echo(String word) async {
    // replace localhost with your IP Address
    final response = await Dio().get('http://localhost:8080/echo/$word');
    return response;
  }
}