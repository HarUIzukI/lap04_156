import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String foodradio = "";
  bool staregg = false;
  bool boilegg = false;
  bool pork = false;
  bool chilly = false;
  bool chick = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Input Widget"),
        backgroundColor: Color.fromARGB(255, 191, 235, 252),
      ),
      body: ListView(
        children: [
          radioMenulist("ก๋วยเตี๋ยว", "60 บาท"),
          radioMenulist("คะน้าหมูกรอบ", "55 บาท"),
          radioMenulist("ผัดพริกตับ", "65 บาท"),
          radioMenulist("ข้าวผัด", "45 บาท"),
          radioMenulist("ผัดผัก", "50 บาท"),
          Divider(),
          CheckboxListTile(
            title: Text("ไข่ดาว"),
            controlAffinity: ListTileControlAffinity.leading,
            value: staregg,
            onChanged: (value) {
              setState(() {
                staregg = value!;
              });
            },
          ),
          CheckboxListTile(
            title: Text("ไข่ต้ม"),
            secondary: Text("5 บาท"),
            controlAffinity: ListTileControlAffinity.leading,
            value: boilegg,
            onChanged: (value) {
              setState(() {
                boilegg = value!;
              });
            },
          ),
          CheckboxListTile(
            title: Text("หมูทอด"),
            controlAffinity: ListTileControlAffinity.leading,
            value: pork,
            onChanged: (value) {
              setState(() {
                pork = value!;
              });
            },
          ),
          CheckboxListTile(
            title: Text("ไก่ทอด"),
            controlAffinity: ListTileControlAffinity.leading,
            value: chick,
            onChanged: (value) {
              setState(() {
                chick = value!;
              });
            },
          ),
          CheckboxListTile(
            title: Text("พริก"),
            controlAffinity: ListTileControlAffinity.leading,
            value: chilly,
            onChanged: (value) {
              setState(() {
                chilly = value!;
              });
            },
          ),
        ],
      ),
    );
  }

  RadioListTile<String> radioMenulist(String title, String subtitle) {
    return RadioListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      activeColor: Colors.green,
      value: title,
      groupValue: foodradio,
      onChanged: (value) {
        setState(() {
          foodradio = value!;
        });
        // print(title);
      },
    );
  }
}
