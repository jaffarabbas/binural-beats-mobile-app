// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:binural_app/theme/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: linearColor1,
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: linearColor1,
              ),
              margin: EdgeInsets.zero,
              currentAccountPictureSize: Size(50, 50),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                "https://avatars.githubusercontent.com/u/54433038?v=4"  
                ),
              ),
              accountName: Text("Jaffar"),
              accountEmail: Text("gamaportal8@gmail.com"),
            ),
          ),
          InkWell(
            onTap: () {
              // Navigator.pushReplacement(
              //   context,
              //   MaterialPageRoute(builder: (context) => LoginPage()),
              // );
            },
            child: ListTile(
              leading: Icon(
                Icons.logout,
                color: secondaryColor,
              ),
              title: Text(
                "Logout",
                textScaleFactor: 1.2,
                style: TextStyle(color: secondaryColor),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => CartPage()),
              // );
            },
            child: ListTile(
              leading: Icon(
                CupertinoIcons.cart,
                color: secondaryColor,
              ),
              title: Text(
                "Cart",
                textScaleFactor: 1.2,
                style: TextStyle(color: secondaryColor),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              // Navigator.pushReplacement(
              //   context,
              //   MaterialPageRoute(builder: (context) => Favouritepage()),
              // );
            },
            child: ListTile(
              leading: Icon(
                Icons.favorite,
                color: secondaryColor,
              ),
              title: Text(
                "Favourite",
                textScaleFactor: 1.2,
                style: TextStyle(color: secondaryColor),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => AboutPage()),
              // );
            },
            child: ListTile(
              leading: Icon(
                CupertinoIcons.info_circle,
                color: secondaryColor,
              ),
              title: Text(
                "About",
                textScaleFactor: 1.2,
                style: TextStyle(color: secondaryColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
