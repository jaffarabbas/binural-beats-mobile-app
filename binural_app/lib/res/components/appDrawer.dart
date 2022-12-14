// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:binural_app/res/colors.dart';
import 'package:binural_app/utils/routes/routes_names.dart';
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
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, RoutesName.profile);
            },
            child: DrawerHeader(
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
          ),
         InkWell(
            onTap: () {
              Navigator.pushNamed(context, RoutesName.home);
              // Navigator.pushReplacement(
              //   context,
              //   MaterialPageRoute(builder: (context) => LoginPage()),
              // );
            },
            child: ListTile(
              leading: Icon(
                Icons.home,
                color: secondaryColor,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(color: secondaryColor),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, RoutesName.splash);
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
              Navigator.pushNamed(context, RoutesName.saved);
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => CartPage()),
              // );
            },
            child: ListTile(
              leading: Icon(
                CupertinoIcons.music_albums,
                color: secondaryColor,
              ),
              title: Text(
                "Saved",
                textScaleFactor: 1.2,
                style: TextStyle(color: secondaryColor),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, RoutesName.favourite);
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
