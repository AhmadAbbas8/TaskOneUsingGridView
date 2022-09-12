import 'package:flutter/material.dart';
import 'package:new_app/color_screen.dart';
import 'package:new_app/components.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              begin: Alignment.centerRight,
              colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.5),
              ],
            ),
          ),
          child: const Text(
            'Color Screen',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        child: GridView.count(
          physics: const BouncingScrollPhysics(),
          crossAxisCount: 3,
          children: colorList
              .map((colorItem) => InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ColorScreen(
                                    screenColor: colorItem,
                                  )));
                    },
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: colorItem,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(2, 5),
                            color: Colors.grey,
                            blurRadius: 3,
                          ),
                        ],
                      ),
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
