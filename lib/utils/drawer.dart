import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rc_app/constants.dart';

class OurDrawer extends StatelessWidget {
  const OurDrawer({
    Key? key,
  }) : super(key: key);

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
            ),
          ),
          Container(
            child: OurListTile(
              icon: Icons.contacts,
              text: 'Members',
            ),
          ),
          Container(
            child: OurListTile(
              icon: Icons.build_outlined,
              text: 'Developers',
            ),
          ),
          Container(
            child: OurListTile(
              icon: Icons.image_rounded,
              text: 'Gallery',
            ),
          ),
          Container(
            child: OurListTile(
              icon: Icons.amp_stories,
              text: 'Stories',
            ),
          ),
          Container(
            child: OurListTile(
              icon: Icons.assignment_ind,
              text: 'Faculties',
            ),
          ),
          Container(
            child: OurListTile(
              icon: Icons.border_color_outlined,
              text: 'Projects',
            ),
          ),
          Container(
            child: OurListTile(
              icon: Icons.mail,
              text: 'Reach Us',
            ),
          ),
        ],
      ),
    );
  }
}

class OurListTile extends StatelessWidget {
  final IconData icon;
  final String text;
  OurListTile({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(icon),
          title: Text(
            text,
            style: kDrawerListItemTextStyle,
          ),
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
