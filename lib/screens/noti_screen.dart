import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:rc_app/constants.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:rc_app/services/firestore_services.dart';
import 'package:rc_app/utils/image_viewer_screen.dart';

class NotiScreen extends StatefulWidget {
  const NotiScreen({Key? key}) : super(key: key);

  @override
  _NotiScreenState createState() => _NotiScreenState();
}

class _NotiScreenState extends State<NotiScreen> {
  // List<String> img = [
  //   'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/tom-hardy-james-bond-1600873138.jpg',
  //   'https://hips.hearstapps.com/digitalspyuk.cdnds.net/16/21/1464198499-peaky.jpg',
  //   'https://www.a1wineandspirit.com/media/yhwie5wr/liquor-large.jpg',
  //   'https://images.unsplash.com/photo-1526894198609-10b3cdf45c52',
  //   'https://i.pinimg.com/originals/7f/da/d6/7fdad60a903375223b8b07b0ed697a07.jpg',
  //   'https://pbs.twimg.com/media/D6c-idvUUAAPWq2.jpg',
  //   'https://sm.mashable.com/mashable_in/photo/default/got-cover-3_p42q.jpg',
  //   'https://i.ibb.co/0YJgJxT/1-Game-of-thrones.jpg',
  //   'https://i.ibb.co/0YJgJxT/1-Game-of-thrones.jpg',
  // ];

  List<Widget> notices = [];
  bool loading = false;
  Future<void> makeList() async {
    setState(() {
      loading = true;
    });
    FirebaseStore fs = FirebaseStore();
    List<String> img = await fs.listNoti();
    print("Completed Fetch");
    // for (String a in img)
    //   print('yeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee $a');

    for (String a in img) {
      notices.add(
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
          child: Image(
            image: NetworkImage(a),
          ),
        ),
      );
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('Make list called');
    makeList();
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
          'Notification',
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
                mainAxisSpacing: 4.0,
                crossAxisSpacing: 4.0,
                children: notices,
              ),
            ),
      // body: Container(
      //   decoration: const BoxDecoration(
      //     image: DecorationImage(
      //       fit: BoxFit.cover,
      //       image: AssetImage(backGroundImage),
      //     ),
      //   ),
      //   child: loading
      //       ? const CircularProgressIndicator()
      //       : SingleChildScrollView(
      //           child: StaggeredGrid.count(
      //             crossAxisCount: 2,
      //             mainAxisSpacing: 4.0,
      //             crossAxisSpacing: 4.0,
      //             children: notices,
      //           ),
      //         ),
      // ),
    );
  }
}
