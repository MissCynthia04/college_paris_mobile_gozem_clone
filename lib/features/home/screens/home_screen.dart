import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        actions: const [
          Stack(
            children: [
              Positioned.fill(child: Icon(Icons.notifications)),
              Positioned(child: Text("8"))
            ],
          )
        ],
        centerTitle: true,
        title: Image.asset(
          "assets/images/gozem-logo.png",
          width: size.width * 0.4,
        ),
        leading: const CircleAvatar(
            backgroundImage: AssetImage(
          "assets/images/avatar-profile.png",
        )),
      ),
    );
  }
}
