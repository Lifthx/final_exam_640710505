import 'package:flutter/material.dart';

class Answer1 extends StatefulWidget {
  const Answer1({super.key});

  @override
  State<Answer1> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Answer1> {
  @override
  final String name = "John Doe";
  final String email = "johndoe@example.com";
  final String imageurl =
      'https://www.kasandbox.org/programming-images/avatars/leaf-blue.png';

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('โปรไฟล์ผู้ใช้',
            style: TextStyle(
              color: Colors.black,
            )),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(imageurl),
          ),
          Text(
            "ชื่อผู้ใช้: $name",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "อีเมล: $email",
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: Icon(
                    Icons.settings,
                    color: Colors.blue,
                  ),
                  title: Text("การตั้งค่า"),
                ),
                ListTile(
                  leading: Icon(
                    Icons.lock,
                    color: Colors.blue,
                  ),
                  title: Text("เปลี่ยนรหัสผ่าน"),
                ),
                ListTile(
                  leading: Icon(
                    Icons.question_mark_sharp,
                    color: Colors.blue,
                  ),
                  title: Text("ความเป็นส่วนตัว"),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("แก้ไขโปรไฟล์")),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      //backgroundColor: Colors.blue,
                      ),
                  child: const Text('แก้ไขโปรไฟล์'),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("ออกจากระบบ")),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      //backgroundColor: Colors.red,
                      ),
                  child: const Text('ออกจากระบบ'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
