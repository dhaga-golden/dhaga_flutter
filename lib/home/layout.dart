import 'package:dhaga_flutter/responsiveness/responsive_layout.dart';
import 'package:flutter/material.dart';

import '../responsiveness/breakpoints.dart';
import '../responsiveness/max_width_container.dart';
import '../routes.dart';




class MyMobileHome extends StatelessWidget {
  const MyMobileHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xffFFD700),
        child: const Center(child: Text(
            'Mobile Golden Dhaga',
          style: TextStyle(fontSize: 21),
        )),),
    );
  }
}
class MyWebHome extends StatelessWidget {
  const MyWebHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xffFFD700),
        child: const Center(child: Text(
          'Web Golden Dhaga',
          style: TextStyle(fontSize: 21),
        )),),
    );
  }
}
class MyTabletHome extends StatelessWidget {
  const MyTabletHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xffFFD700),
        child: const Center(child: Text(
          'Tablet Golden Dhaga',
          style: TextStyle(fontSize: 21),
        )),),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      // key: globalKeyStaffPage,
      // endDrawer:  DrawerStaffWidget(),
      // drawer:screenWidth <= kTabletBreakpoint ?  NavigationDrawerWidget():NavigationDrawerWebWidget(),
      appBar:  screenWidth <= kTabletBreakpoint ? AppBar(title: const Text('Welcome'),
        actions: <Widget>[
          // LanguageSelectorIconButton(),
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(AppRoutes.template);
            },
            icon: const Icon(
              Icons.settings,
              color: Colors.white,
            ),
          )
        ],
        backgroundColor: const Color(0xffFFD700),):null,
      body: const MaxWidthContainer(
        child: ResponsiveLayout(
          mobileBody: MyMobileHome(),
          // mobileBody: pageSelectHold.state==0? StaffDetailsPage():pageSelectHold.state==1?ManageStaffGroup():StaffAccessPage(),
          tabletBody: MyTabletHome(),
          desktopBody: MyWebHome(),

        ),
      ),
    );
  }
}
