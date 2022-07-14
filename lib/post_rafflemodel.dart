import 'dart:convert';

List<Raffle> postFromJson(String str) =>
    List<Raffle>.from(json.decode(str).map((x) => Raffle.fromMap(x)));

class Raffle {
  Raffle({
    required this.uuid,
    required this.printImage,
    required this.error,
  });


  String uuid;
  String printImage;
  String error;


  factory Raffle.fromMap(Map<String, dynamic> json) =>
      Raffle(
        uuid: json["uuid"],
        printImage: json["pringImage"],
        error: json["error"],
      );
}