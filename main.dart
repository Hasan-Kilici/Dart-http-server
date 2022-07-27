import 'dart:io';

main() async {
  var server = await HttpServer.bind(InternetAddress.ANY_IP_V4, 3030);
  print('Sunucu  ${server.port} portunda çalıştırılıyor');

//Dart HTTP
  await for (HttpRequest req in server) {
    req.response
      ..write('Dart Basic HTTP Server')
      ..close();
  }
}
