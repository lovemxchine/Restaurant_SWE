import 'package:flutter/material.dart';
import 'package:test_se/components/my_button.dart';

import '../widgets/drawer_list.dart';


class OrderList extends StatefulWidget {
  const OrderList({super.key});

  @override
  State<OrderList> createState() => _OrderListState();
}

// ignore: non_constant_identifier_names
ConfirmOrder() {
  // ignore: avoid_print
  print('Confirm');
}

// ignore: non_constant_identifier_names
ClearOrder() {
  // ignore: avoid_print
  print('Delete');
}

class _OrderListState extends State<OrderList> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      key: scaffoldKey,
      drawer: DrawerList(),
      appBar: AppBar(
        toolbarHeight: 90,
        leading: IconButton(
          padding: EdgeInsets.only(left: 10),
          onPressed: () {
            scaffoldKey.currentState?.openDrawer();
          },
          icon: const Icon(
            Icons.menu,
            size: 30,
            color: Colors.white,
          ),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xff396870), Color(0xff17333C)],
              stops: [0, 1],
              begin: AlignmentDirectional(0, -0.8),
              end: AlignmentDirectional(0, 1.5),
              tileMode: TileMode.clamp,
            ),
          ),
        ),
        title: const Text(
          "Order",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: Column(
          children: [
            Row(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButton(onTap: ClearOrder, hinText: 'Clear'),
                SizedBox(
                  width: 0,
                ),
                MyButton(onTap: ConfirmOrder, hinText: 'Confirm'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
