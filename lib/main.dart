import 'package:flutter/material.dart';
import 'package:netclan_explorer/screens/job_aspirant_screen.dart';
import 'package:netclan_explorer/screens/merchant_screen.dart';
import 'package:netclan_explorer/screens/refine_screen.dart';
import 'screens/people_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// AnimationControllers can be created with `vsync: this` because of TickerProviderStateMixin.
class _MyStatefulWidgetState extends State<MyStatefulWidget>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0E2E43),
        leading: Icon(
          Icons.format_align_left,
          size: 35,
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Howdy Name !!',
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(
              height: 7,
            ),
            Row(
              children: [
                Icon(
                  Icons.location_on,
                  size: 15,
                ),
                Text(
                  ' Location',
                  style: TextStyle(fontSize: 13),
                ),
              ],
            )
          ],
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RefineScreen()));
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.format_list_bulleted_outlined),
                Text('Refine')
              ],
            ),
          ),
          SizedBox(
            width: 7,
          ),
        ],
        bottom: TabBar(
          indicatorColor: Colors.white,
          controller: _tabController,
          tabs: const <Widget>[
            Tab(
              icon: Icon(Icons.groups),
            ),
            Tab(
              icon: Icon(Icons.work_sharp),
            ),
            Tab(
              icon: Icon(Icons.sell),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          People_Screen(),
          JobAspirantScreen(),
          MerchantScreen(),
        ],
      ),
    );
  }
}
