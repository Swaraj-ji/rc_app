import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:rc_app/constants.dart';
import 'package:rc_app/services/firestore_services.dart';
import 'package:rc_app/utils/image_viewer_screen.dart';

class GalleryScreen extends StatefulWidget {
  const GalleryScreen({Key? key}) : super(key: key);

  @override
  _GalleryScreenState createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  List<Widget> galleryImages = [];

  bool loading = false;
  Future<void> makeList() async {
    setState(() {
      loading = true;
    });
    FirebaseStoreGallery fs = FirebaseStoreGallery();
    List<String> img = await fs.listGallery();
    for (String a in img) {
      galleryImages.add(
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return ImageViewerScreen(
                    image: a,
                  );
                },
              ),
            );
          },
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(16.0)),
            child: Image(
              image: NetworkImage(a),
            ),
          ),
        ),
      );
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    makeList().whenComplete(() => {
          setState(() {
            loading = false;
          })
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios_sharp,
            color: Colors.white,
          ),
        ),
        title: const Text(
          'Gallery',
          style: kAppbarTitleStyle,
        ),
      ),
      body: loading
          ? const Center(
              child: SpinKitSpinningLines(
                color: Colors.black,
                size: 100,
              ),
            )
          : SingleChildScrollView(
              child: StaggeredGrid.count(
                crossAxisCount: 2,
                mainAxisSpacing: 8.0,
                crossAxisSpacing: 8.0,
                children: galleryImages,
              ),
            ),
      // body: Container(
      //   decoration: BoxDecoration(
      //     image: DecorationImage(
      //       fit: BoxFit.cover,
      //       image: AssetImage(backGroundImage),
      //     ),
      //   ),
      //   child: SingleChildScrollView(
      //     child: StaggeredGrid.count(
      //       crossAxisCount: 2,
      //       mainAxisSpacing: 4.0,
      //       crossAxisSpacing: 4.0,
      //       children: galleryImages,
      //     ),
      //   ),
      // ),
    );
  }
}
