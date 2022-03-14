import 'package:meta/meta.dart';
import 'dart:convert';

List<Data> dataFromJson(String str) =>
    List<Data>.from(json.decode(str).map((x) => Data.fromJson(x)));

String dataToJson(List<Data> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Data {
  final String id;
  final String title;
  final String thumbnailUrl;
  final String channelTitle;

  Data({
    required this.id,
    required this.title,
    required this.thumbnailUrl,
    required this.channelTitle,
  });

  factory Data.fromJson(Map<String, dynamic> snippet) {
    return Data(
      id: snippet['resourceId']['videoId'],
      title: snippet['title'],
      thumbnailUrl: snippet['thumbnails']['high']['url'],
      channelTitle: snippet['channelTitle'],
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "thumbnailUrl": thumbnailUrl,
        "channelTitle": channelTitle
      };
}
