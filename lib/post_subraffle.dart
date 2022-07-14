import 'dart:convert';

List<Raffle1> postFromJson(String str) =>
    List<Raffle1>.from(json.decode(str).map((x) => Raffle1.fromMap(x)));

class Raffle1 {
  Raffle1({

    required this.id,
    required this.name,
    required this.subRaffles,
  });


  int id;
  String name;
  Map<String,dynamic> subRaffles;


  factory Raffle1.fromMap(Map<String, dynamic> json) =>
      Raffle1(
        id: json["id"],
        name: json["name"],
        subRaffles: json["subRaffles"],
      );
}
/*
class SubRaffles{
  List<String> subRaffleNames=[];
}*/
