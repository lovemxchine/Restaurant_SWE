import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test_se/screens/menu_screen.dart';
import 'package:test_se/screens/order_list_screen.dart';
import '../promotion/promotion_screen.dart';
import '../status_order.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class EmployeeScreen extends StatefulWidget {
  const EmployeeScreen({super.key});

  @override
  State<EmployeeScreen> createState() => _EmployeeScreenState();
}

class _EmployeeScreenState extends State<EmployeeScreen> {
  int _currentIndex = 0;

  List<Widget> body = [
    const Menu(),
    const OrderList(),
    const Promotion(),
    const Status(),
    // const TimeCheckIn_Out(),
  ];
  @override
  void initState() {
    super.initState();
    _checkUserRole();
  }

  void _checkUserRole() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? userRole = prefs.getString('userRole');
    if (userRole != 'employee') {
      Navigator.pushReplacementNamed(context, '/login');
      FirebaseAuth.instance.signOut();
    }
  }

  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (FirebaseAuth.instance.currentUser != null) {
          return false;
        } else {
          return true;
        }
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(child: body[_currentIndex]),
        bottomNavigationBar: CurvedNavigationBar(
          height: 60,
          buttonBackgroundColor: Colors.amber,
          backgroundColor: Colors.white,
          color: const Color.fromARGB(255, 201, 225, 221),
          animationCurve: Curves.easeInOut,
          animationDuration: const Duration(milliseconds: 300),
          onTap: (int newIndex) {
            setState(() {
              _currentIndex = newIndex;
            });
          },
          items: const [
            Icon(
              Icons.fastfood,
              color: Colors.black,
            ),
            Icon(
              Icons.shopping_basket,
              color: Colors.black,
            ),
            Icon(
              Icons.celebration,
              color: Colors.black,
            ),
            Icon(
              Icons.access_time_filled,
              color: Colors.black,
            ),
            // Icon(
            //   Icons.settings,
            //   color: Colors.black,
            // ),
          ],
        ),
      ),
    );
  }
}
