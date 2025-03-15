import 'package:flutter/material.dart';

class Answer2 extends StatefulWidget {
  const Answer2({super.key});

  @override
  State<Answer2> createState() => _Answer2();
}

class _Answer2 extends State<Answer2> {
  final _formKey = GlobalKey<FormState>();
  String? _space;
  String? _transport;
  String? _selectedItem;
  bool _isChecked = false;
  bool _isChecked2 = false;
  int price = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("คำนวณค่าจัดส่ง"),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "น้ำหนักสินค้า (กก.):",
                    textAlign: TextAlign.left,
                  )
                ],
              ),
              TextFormField(
                decoration: const InputDecoration(),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'โปรดใส่น้ำหนักสินค้า';
                  }
                },
                onChanged: (value) => print(value),
              ),
              Row(
                children: [
                  Text(
                    "เลือกระยะทาง",
                    textAlign: TextAlign.left,
                  )
                ],
              ),
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(),
                value: _selectedItem,
                items: ["ในเมือง", "ต่างจังหวัด", "ต่างประเทศ"]
                    .map((item) => DropdownMenuItem(
                          child: Text(item),
                          value: item,
                        ))
                    .toList(),
                onChanged: (value) =>
                    value == null ? 'Please select an option' : null,
              ),
              SizedBox(height: 10),
              CheckboxListTile(
                  title: const Text("แพคกิ้งพิเศษ (+20 บาท)"),
                  value: _isChecked,
                  onChanged: (value) {
                    setState(() {
                      _isChecked = value!;
                    });
                  }),
              CheckboxListTile(
                  title: const Text("ประกันพัสดุ (+50 บาท)"),
                  value: _isChecked2,
                  onChanged: (value) {
                    setState(() {
                      _isChecked2 = value!;
                    });
                  }),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "เลือกความเร่งด่วน:",
                    textAlign: TextAlign.left,
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: RadioListTile(
                      title: const Text("ปกติ"),
                      value: 'ปกติ',
                      groupValue: _transport,
                      onChanged: (value) {
                        setState(() {
                          _transport = value.toString();
                        });
                      },
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: RadioListTile(
                      title: const Text("ด่วน"),
                      value: 'ด่วน',
                      groupValue: _transport,
                      onChanged: (value) {
                        setState(() {
                          _transport = value.toString();
                        });
                      },
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: RadioListTile(
                      title: const Text("ด่วนพิเศษ"),
                      value: 'ด่วนพิเศษ',
                      groupValue: _transport,
                      onChanged: (value) {
                        setState(() {
                          _transport = value.toString();
                        });
                      },
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) ;

                    

                    if (_isChecked == true && _isChecked2 == true) {
                      price = price + 70;
                    } else if (_isChecked == true && _isChecked2 == false) {
                      price = price + 20;
                    } else if (_isChecked == false && _isChecked2 == true) {
                      price = price + 50;
                    }

                    if (_transport == "ด่วน") {
                      price = price + 30;
                    } else if (_transport == "ด่วนพิเศษ") {
                      price = price + 50;
                    }
                  },
                  child: Text("คำนวณราคา")),
              Row(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "ค่าจัดส่งทั้งหมด: ฿$price",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      backgroundColor: Colors.blue,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
