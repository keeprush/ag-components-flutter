import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabBarClass extends StatefulWidget {
  const TabBarClass({Key? key}) : super(key: key);

  @override
  TabBarState createState() => TabBarState();
}

class TabBarState extends State<TabBarClass> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      appBar: appBarStandard(context),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            textButton(context),
            elevatedButton(context),
            outLineButton(context),
          ],
        ),
      ),
    );
  }

  Widget textButton(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: const Text("Text BUTTON"),
    );
  }

  Widget elevatedButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: const Text("Elevated BUTTON"),
    );
  }

  Widget outLineButton(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      child: const Text("Outlined BUTTON"),
    );
  }

  PreferredSizeWidget appBarStandard(context) {
    return AppBar(
      title: const Text(
        'Button',
      ),
      backgroundColor: Colors.blueAccent,
      automaticallyImplyLeading: false,
      leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          }),
      actions: [
        IconButton(
            icon: const Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ),
            onPressed: () {}),
      ],
      elevation: 0,
    );
  }
}
