import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

class FirebaseStore {
  firebase_storage.FirebaseStorage storage =
      firebase_storage.FirebaseStorage.instance;
  Future<List<String>> listNoti() async {
    firebase_storage.ListResult result = await storage.ref('noti').listAll();
    List<String> img = [];
    for (var ref in result.items) {
      String downloadURL = await storage.ref(ref.fullPath).getDownloadURL();
      img.add(downloadURL);
    }
    return img;
  }
}

class FirebaseStoreGallery {
  firebase_storage.FirebaseStorage storage =
      firebase_storage.FirebaseStorage.instance;

  Future<List<String>> listGallery() async {
    firebase_storage.ListResult result = await storage.ref('gallery').listAll();
    List<String> img = [];
    for (var ref in result.items) {
      String downloadURL = await storage.ref(ref.fullPath).getDownloadURL();
      img.add(downloadURL);
    }
    return img;
  }
}

class FirebaseStoreStoriesFest {
  firebase_storage.FirebaseStorage storage =
      firebase_storage.FirebaseStorage.instance;

  Future<List<String>> listFest() async {
    firebase_storage.ListResult result =
        await storage.ref('stories_fest').listAll();
    List<String> img = [];
    for (var ref in result.items) {
      String downloadURL = await storage.ref(ref.fullPath).getDownloadURL();
      img.add(downloadURL);
    }
    return img;
  }
}

class FirebaseStoreStoriesFacts {
  firebase_storage.FirebaseStorage storage =
      firebase_storage.FirebaseStorage.instance;

  Future<List<String>> listFacts() async {
    firebase_storage.ListResult result =
        await storage.ref('stories_facts').listAll();
    List<String> img = [];
    for (var ref in result.items) {
      String downloadURL = await storage.ref(ref.fullPath).getDownloadURL();
      img.add(downloadURL);
    }
    return img;
  }
}

class FirebaseStoreStoriesStories {
  firebase_storage.FirebaseStorage storage =
      firebase_storage.FirebaseStorage.instance;

  Future<List<String>> listStories() async {
    firebase_storage.ListResult result =
        await storage.ref('stories_stories').listAll();
    List<String> img = [];
    for (var ref in result.items) {
      String downloadURL = await storage.ref(ref.fullPath).getDownloadURL();
      img.add(downloadURL);
    }
    return img;
  }
}
