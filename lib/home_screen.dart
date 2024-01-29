import 'package:flutter/material.dart';
import 'package:routes_2/utils/routes_name.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffEABFD1),
        title: Text('Navigation and Routes'),
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
                Navigator.pushNamed(context, RouteName.screenTwo,
                  arguments: {
                  'Node' : 'Js Module',
                    'Flutter' : 'Good for Apps'
                  }
                );
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffE094C0),
                ),
                child: Center(child: Text('Screen 1')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
