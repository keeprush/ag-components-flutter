import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_ux/image.dart';

class ButtonClass extends StatefulWidget {
  const ButtonClass({Key? key}) : super(key: key);

  @override
  ButtonState createState() => ButtonState();
}

class ButtonState extends State<ButtonClass> {
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
            textButtonChangeSize(context),
            elevatedButton(context),
            elevatedButtonChangeStyle(context),
            outLinecButton(context),
            outLinecButtonIcon(context),
          ],
        ),
      ),
    );
  }

  Widget textButton(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: const Text("Text BUTTON"),
      style: TextButton.styleFrom(
        primary: Colors.red, // foreground
        backgroundColor: Colors.yellow,
      ),
    );
  }

  Widget textButtonChangeSize(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 150,
      child: TextButton(
        onPressed: () {},
        child: const Text("Text BUTTON"),
        style: TextButton.styleFrom(
          primary: Colors.red, // foreground
          backgroundColor: Colors.yellow,
        ),
      ),
    );
  }

  Widget elevatedButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: const Text(
        "Elevated BUTTON",
        style: TextStyle(
          color: Colors.red,
          fontSize: 12,
        ),
      ),
      style: ElevatedButton.styleFrom(
        primary: Colors.blue, // foreground
        elevation: 0,
      ),
    );
  }

  Widget elevatedButtonChangeStyle(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: const Text(
        "Elevated BUTTON",
        style: TextStyle(
          color: Colors.white,
          fontSize: 12,
        ),
      ),
      style: ElevatedButton.styleFrom(
        primary: Colors.red,
        shadowColor: Colors.blue,
        elevation: 10,
      ),
    );
  }

  Widget outLinecButton(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      child: const Text("Outlined BUTTON"),
      style: OutlinedButton.styleFrom(
        primary: Colors.red,
        backgroundColor: Colors.green,
        side: const BorderSide(width: 2, color: Colors.red),
      ),
    );
  }

  Widget outLinecButtonIcon(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: () {},
      icon: const Icon(
        Icons.ac_unit,
        color: Colors.white,
      ),
      label: const Text("Outlined BUTTON"),
      style: OutlinedButton.styleFrom(
        primary: Colors.red,
        backgroundColor: Colors.green,
        side: const BorderSide(width: 2, color: Colors.red),
      ),
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
            onPressed: () {
              Navigator.push<Widget>(
                context,
                MaterialPageRoute(
                  builder: (context) => const ImageClass(),
                ),
              );
            }),
      ],
      elevation: 0,
    );
  }
}
