import 'package:flutter/material.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.1,
      child: Container(
        color: const Color(0xFF242430),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            const Spacer(flex: 2),
           const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage("assets/images/my_pic.jpg"),
            ),
           const Spacer(),
            Text(
              "Franklin Osei",
              style: Theme.of(context).textTheme.subtitle2,
            ),
            const Text(
              "Flutter Developer & Machine Learning Engineer",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w200,
                height: 1.5,
              ),
            ),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}