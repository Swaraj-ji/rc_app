import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rc_app/constants.dart';

class OurDrawer extends StatefulWidget {
  const OurDrawer({
    Key? key,
  }) : super(key: key);

  @override
  State<OurDrawer> createState() => _OurDrawerState();
}

class _OurDrawerState extends State<OurDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            currentAccountPictureSize: Size.fromRadius(45),
            decoration: BoxDecoration(color: Colors.teal[900]),
            accountName: Text('Robotics Club'),
            accountEmail: Text('MMMUT'),
            currentAccountPicture: CircleAvatar(
              radius: 45.0,
              backgroundColor: Colors.transparent,
              child: ClipOval(
                child: Image.asset(
                  'images/rc_logo.jpg',
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
          ),
          Container(
            child: OurListTile(
              icon: Icons.notifications_active,
              text: 'Notification',
              onPress: () {
                Navigator.pushNamed(context, '/noti');
              },
            ),
          ),
          Container(
            child: OurListTile(
              icon: Icons.contacts,
              text: 'Members',
              onPress: () {
                Navigator.pushNamed(context, '/member');
              },
            ),
          ),
          // Container(
          //   child: OurListTile(
          //     icon: Icons.build_outlined,
          //     text: 'Developers',
          //     onPress: () {
          //       Navigator.pushNamed(context, 'developer');
          //     },
          //   ),
          // ),
          Container(
            child: OurListTile(
              icon: Icons.image_rounded,
              text: 'Gallery',
              onPress: () {
                Navigator.pushNamed(context, 'gallery');
              },
            ),
          ),
          Container(
            child: OurListTile(
              icon: Icons.amp_stories,
              text: 'Stories',
              onPress: () {
                Navigator.pushNamed(context, '/stories');
              },
            ),
          ),
          Container(
            child: OurListTile(
              icon: Icons.assignment_ind,
              text: 'Faculties',
              onPress: () {
                Navigator.pushNamed(context, '/faculties');
              },
            ),
          ),
          Container(
            child: OurListTile(
              icon: Icons.border_color_outlined,
              text: 'Projects',
              onPress: () {
                Navigator.pushNamed(context, '/projects');
              },
            ),
          ),
        ],
      ),
    );
  }
}

class OurListTile extends StatefulWidget {
  final IconData icon;
  final String text;
  final Function onPress;
  OurListTile({required this.icon, required this.text, required this.onPress});

  @override
  State<OurListTile> createState() => _OurListTileState();
}

class _OurListTileState extends State<OurListTile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(widget.icon),
          title: Text(
            widget.text,
            style: kDrawerListItemTextStyle,
          ),
          onTap: () {
            widget.onPress();
          },
        ),
        const Divider(
          thickness: 1,
          indent: 10,
          endIndent: 10,
          color: Colors.black,
        ),
      ],
    );
  }
}
