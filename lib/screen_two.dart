import 'package:flutter/material.dart';
import 'package:routes_2/utils/routes_name.dart';

class ScreenTwo extends StatefulWidget {
  dynamic data;
  ScreenTwo({Key? key, required this.data}) : super(key: key);

  @override
  _ScreenTwoState createState() => _ScreenTwoState();
}

@override
State<ScreenTwo> createState() => _ScreenTwoState();


class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffFC99C4),
        title: Text(widget.data['Node']),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: (){
                Navigator.pushNamed(context, RouteName.screenThree);
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffDB73B7),
                ),
                child: Center(child: Text('Screen 2')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
