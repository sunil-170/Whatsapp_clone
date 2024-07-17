import 'package:flutter/material.dart';

class Chat_main_screen extends StatelessWidget {
  const Chat_main_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        ListTile(
          onTap: () {},
          leading: Image.asset("assets/images/chat_img1.png"),
          title: Text("Sunil"),
          subtitle: Text("thik h kl milte h.."),
        ),
        ListTile(
          onTap: () {},
          leading: Image.asset("assets/images/chat_img5.png"),
          title: Text("Kaliyo"),
          subtitle: Text("hlo"),
        ),
        ListTile(
          onTap: () {},
          leading: Image.asset("assets/images/chat_img2.png"),
          title: Text("Ramphal"),
          subtitle: Text("thik h"),
        ),
        ListTile(
          onTap: () {},
          leading: Image.asset("assets/images/chat_img3.png"),
          title: Text("Dholiyo"),
          subtitle: Text("ha"),
        ),
        ListTile(
          onTap: () {},
          leading: Image.asset("assets/images/chat_img4.png"),
          title: Text("Bntiyo"),
          subtitle: Text("welcome"),
        ),
      ],
    ));
  }
}
