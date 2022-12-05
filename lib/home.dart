import 'package:flutter/material.dart';
import 'package:get/get.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.deepPurple,
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  anaSayfaTiklanabilir,
                  anaSayfaTiklanamaz,
                  anaSayfaTiklanamaz
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  anaSayfaTiklanabilir,
                  anaSayfaTiklanabilir,
                  anaSayfaTiklanabilir
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  anaSayfaTiklanamaz,
                  anaSayfaTiklanamaz,
                  anaSayfaTiklanamaz
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget anaSayfaTiklanabilir = Expanded(
  child: Container(
    color: Colors.blue,
  ),
);
Widget anaSayfaTiklanamaz = Expanded(
  child: Container(
    color: Colors.green,
  ),
);
