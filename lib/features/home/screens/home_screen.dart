import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    counter();
  }

  void counter() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    int? counter = prefs.getInt('counter');
    print(counter);
    if (counter == null) {
      counter = 0;
    }
    counter++;
    await prefs.setInt('counter', counter);
    print(counter);
  }

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
