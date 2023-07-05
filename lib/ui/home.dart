import 'package:flutter/material.dart';

String _bodyText = 'Hello Again';

class BizCard extends StatelessWidget {
  const BizCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter AppBar'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [_getCard(), _getAvatar()
          ],
        ),
      ),
    );
  }

  Container _getCard() {
    return Container(
      height: 350,
      width: 350,
      margin: const EdgeInsets.all(50.0),
      decoration: BoxDecoration(
          color: Colors.pinkAccent, borderRadius: BorderRadius.circular(4.5)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text ('Rengiel Frias'),
          const Text('Studying Flutter '),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.person_outline),
              Text('giel@hotmen.com')
            ],
          )
        ],
      ),
    );
  }

  Container _getAvatar() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          border: Border.all(color: Colors.redAccent, width: 1.2),
          image: const DecorationImage(
              image: NetworkImage("https://picsum.photos/300/300"),
              fit: BoxFit.cover)
      ),
    );
  }
}

class ScaffoldExample extends StatelessWidget {
  const ScaffoldExample({Key? key}) : super(key: key);

  _tapButton() {
    debugPrint('email tapped!');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('Scaffold'),
            centerTitle: false,
            backgroundColor: Colors.amberAccent.shade400,
            actions: [
              IconButton(
                  icon: const Icon(Icons.alarm),
                  onPressed: () => debugPrint('alarm tapped!')),
              IconButton(
                  icon: const Icon(Icons.email_rounded), onPressed: _tapButton),
            ]),
        floatingActionButton: FloatingActionButton(
          onPressed: () => debugPrint("Hello Floating Button!"),
          backgroundColor: Colors.lightGreen,
          child: const Icon(Icons.call_missed),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), label: "First"),
            BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: "Second"),
            BottomNavigationBarItem(icon: Icon(Icons.alarm), label: "Third"),
          ],
          onTap: (int index) => debugPrint("Tapped item: $index"),
        ),
        backgroundColor: Colors.redAccent.shade100,
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(),
              // InkWell(
              //   child: const Text("Tap me!"),
              //   onTap: () => debugPrint('Tapped!!!'),
              // )
            ],
          ),
        ));
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final snackBar = SnackBar(
          content: const Text(
            "Hi SnackBar!",
            style: TextStyle(color: Colors.black, fontSize: 15),
          ),
          backgroundColor: Colors.blue.shade200,
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            color: Colors.redAccent, borderRadius: BorderRadius.circular(8.0)),
        child: const Text(
          "Click Me!",
          style: TextStyle(
              fontSize: 14, fontWeight: FontWeight.normal, color: Colors.black),
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Material(
      color: Colors.red,
      child: Center(
          child: Text(
            "Hello Flutter",
            textDirection: TextDirection.ltr,
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 30,
                fontStyle: FontStyle.italic),
          )),
    );
  }
}
