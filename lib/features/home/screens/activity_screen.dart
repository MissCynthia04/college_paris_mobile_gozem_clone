import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Historique extends StatelessWidget {
  const Historique({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: Colors.white,
          title: const Text("Activités"),
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(1.0),
            child: Row(
              children: <Widget>[
                Expanded(
                    child: Text(
                  "En cours",
                  textAlign: TextAlign.center,
                )),
                Expanded(
                    child: Text(
                  "Historique",
                  textAlign: TextAlign.center,
                ))
              ],
            ),
          ),
        ),
        body: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.only(top: 80.0),
                ),
                Expanded(
                    child: Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: SvgPicture.asset(
                          "assets/images/shopping-cart.svg",
                          width: 25,
                          height: 25,
                          alignment: Alignment.centerLeft,
                        ))),
                Expanded(
                    flex: 2,
                    child: RichText(
                      textAlign: TextAlign.start,
                      text: const TextSpan(children: <TextSpan>[
                        TextSpan(
                            text: "Mes commandes\n",
                            style: TextStyle(color: Colors.black)),
                        TextSpan(
                            text: "Food, Shopping, etc.",
                            style: TextStyle(color: Colors.grey))
                      ]),
                    )),
                Expanded(
                    child: Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: SvgPicture.asset(
                          "assets/images/chevron.svg",
                          width: 15,
                          height: 15,
                          alignment: Alignment.centerRight,
                        )))
              ],
            ),
            Row(
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.only(top: 80.0),
                ),
                Expanded(
                    flex: 1,
                    child: Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: SvgPicture.asset(
                          "assets/images/road.svg",
                          width: 33,
                          height: 33,
                          alignment: Alignment.centerLeft,
                          // ignore: deprecated_member_use
                          color: Colors.black,
                        ))),
                Expanded(
                    flex: 2,
                    child: RichText(
                      textAlign: TextAlign.start,
                      text: const TextSpan(children: <TextSpan>[
                        TextSpan(
                            text: "Mes courses\n",
                            style: TextStyle(color: Colors.black)),
                        TextSpan(
                            text: "Transport",
                            style: TextStyle(color: Colors.grey))
                      ]),
                    )),
                Expanded(
                    child: Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: SvgPicture.asset(
                          "assets/images/chevron.svg",
                          width: 15,
                          height: 15,
                          alignment: Alignment.centerRight,
                        )))
              ],
            ),
            Row(
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.only(top: 80.0),
                ),
                Expanded(
                    flex: 1,
                    child: Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Image.asset(
                          "assets/images/delivery.png",
                          width: 33,
                          height: 33,
                          alignment: Alignment.centerLeft,
                          color: Colors.black,
                        ))),
                Expanded(
                    flex: 2,
                    child: RichText(
                      textAlign: TextAlign.start,
                      text: const TextSpan(children: <TextSpan>[
                        TextSpan(
                            text: "Mes commandes de coursier\n",
                            style: TextStyle(color: Colors.black)),
                        TextSpan(
                            text: "Envoi et réception de colis",
                            style: TextStyle(color: Colors.grey))
                      ]),
                    )),
                Expanded(
                    child: Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: SvgPicture.asset(
                          "assets/images/chevron.svg",
                          width: 15,
                          height: 15,
                          alignment: Alignment.centerRight,
                        )))
              ],
            ),
            Row(
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.only(top: 80.0),
                ),
                Expanded(
                    flex: 1,
                    child: Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Image.asset(
                          "assets/images/delivery.png",
                          width: 33,
                          height: 33,
                          alignment: Alignment.centerLeft,
                          color: Colors.black,
                        ))),
                Expanded(
                    flex: 2,
                    child: RichText(
                      textAlign: TextAlign.start,
                      text: const TextSpan(children: <TextSpan>[
                        TextSpan(
                            text: "Mes commandes de dispatcher transport\n",
                            style: TextStyle(color: Colors.black)),
                        TextSpan(
                            text: "Envoi et réception de colis",
                            style: TextStyle(color: Colors.grey))
                      ]),
                    )),
                Expanded(
                    child: Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: SvgPicture.asset(
                          "assets/images/chevron.svg",
                          width: 15,
                          height: 15,
                          alignment: Alignment.centerRight,
                        )))
              ],
            )
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 243, 238, 238),
        bottomNavigationBar: CustomBottomNavigationBar(
          initialIndex: 3,
        ));
  }
}

class CustomBottomNavigationBar extends StatefulWidget {
  int initialIndex;
  CustomBottomNavigationBar({required this.initialIndex});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int currentIndex = 0;
  @override
  void initState() {
    currentIndex = widget.initialIndex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (value) {
        currentIndex = value;
        print(value);
        setState(() {});
      },
      unselectedItemColor: Colors.black,
      selectedItemColor: Colors.green,
      unselectedLabelStyle: const TextStyle(color: Colors.black),
      selectedLabelStyle: const TextStyle(color: Colors.black),
      currentIndex: currentIndex,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Accueil"),
        BottomNavigationBarItem(icon: Icon(Icons.help), label: "Aide"),
        BottomNavigationBarItem(
            icon: Icon(Icons.location_pin), label: "Adresses"),
        BottomNavigationBarItem(
            icon: Icon(Icons.access_time_filled), label: "Activités"),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_circle), label: "Compte")
      ],
    );
  }
}
