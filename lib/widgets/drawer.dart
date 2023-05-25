import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyDrawer extends StatelessWidget {
  MyDrawer({Key? key}) : super(key: key);

  final String imgUrl = "";

  @override
  Widget build(BuildContext context) {
    return LogInRequiredDrwaer();
  }
}

class LogInRequiredDrwaer extends StatelessWidget {
  const LogInRequiredDrwaer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        padding: EdgeInsets.zero,
        color: Theme.of(context).scaffoldBackgroundColor,
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          children: [
            Container(
                height: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(height: 30),
                        DrawerItems(
                            iconData: Icons.home,
                            title: 'Home',
                            onTapFunc: () => Navigator.of(context)
                                .pushReplacement(MaterialPageRoute(
                                    builder: (context) => Text('hey')))),
                        DrawerItems(
                          iconData: Icons.info_outline_rounded,
                          title: 'About US',
                          onTapFunc: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => Text('hey'))),
                        ),
                        DrawerItems(
                          iconData: CupertinoIcons.settings_solid,
                          title: 'Setting',
                          onTapFunc: () {},
                        ),
                        const Divider(height: 5, color: Colors.grey),
                        DrawerItems(
                            iconData: CupertinoIcons.lock,
                            title: 'singin',
                            onTapFunc: () {
                              // Get.to(() => LoginPage());
                            })
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text('version 2.0.0',
                          style: TextStyle(color: Colors.grey.shade500)),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

class DrawerItems extends StatelessWidget {
  const DrawerItems({
    Key? key,
    required this.title,
    required this.iconData,
    this.onTapFunc,
  }) : super(key: key);
  final String title;
  final IconData iconData;
  final Function? onTapFunc;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (onTapFunc != null) {
          onTapFunc!();
        }
      },
      child: ListTile(
        leading: Icon(
          iconData,
          color: (title == "logout")
              ? Colors.red
              : Theme.of(context).textTheme.bodyText1!.color,
        ),
        title: Text(
          title,
          textScaleFactor: 1.2,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            color: (title == "logout")
                ? Colors.red
                : Theme.of(context).textTheme.bodyText1!.color,
          ),
        ),
      ),
    );
  }
}
