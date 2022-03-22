import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

class FirebaseStore {
  firebase_storage.FirebaseStorage storage =
      firebase_storage.FirebaseStorage.instance;
  Future<List<String>> listNoti() async {
    firebase_storage.ListResult result = await storage.ref('noti').listAll();
    List<String> img = [];
    // if (result != null) {
    result.items.forEach((firebase_storage.Reference ref) async {
      String downloadURL = await storage.ref(ref.fullPath).getDownloadURL();
      print('$downloadURL is added to img');
      img.add(downloadURL);
      //print('Found file: $ref');
    });
    print("length issssssssssssssss ${img.length}");
    // }
    for (int i = 0; i < 8; i++)
      print('outtttttttttttttttttttttttttttttt ${img[i]}');
    return img;
  }
}
