import 'dart:ui';

import 'package:app/chuyentiennoibo/ttgd.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class chuyentien extends StatefulWidget {
  const chuyentien({super.key});

  @override
  State<chuyentien> createState() => _chuyentienState();
}

class _chuyentienState extends State<chuyentien> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Chuyển tiền nội bộ',
            style: TextStyle(
                fontSize: 14, color: Color.fromRGBO(255, 255, 255, 1))),
      ),
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(left: 16, right: 16, top: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Nguồn chuyển tiền',
                  style: TextStyle(
                      color: Color.fromRGBO(231, 171, 33, 1), fontSize: 12),
                ),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Tài khoản chuyển tiền',
                        style: TextStyle(
                            fontSize: 12,
                            color: Color.fromRGBO(160, 163, 175, 1))),
                    SizedBox(width: 48),
                    dropdown_button2()
                  ],
                ),
                SizedBox(height: 12),
                SizedBox(
                  height: 28,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Tiền mặt khả dụng',
                          style: TextStyle(
                              fontSize: 12,
                              color: Color.fromRGBO(160, 163, 175, 1))),
                      Text('120,000,000 VND',
                          style: TextStyle(
                              fontSize: 12,
                              color: Color.fromRGBO(255, 255, 255, 1)))
                    ],
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  'Thông tin tài khoản nhận',
                  style: TextStyle(
                      color: Color.fromRGBO(231, 171, 33, 1), fontSize: 12),
                ),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Tài khoản nhận',
                        style: TextStyle(
                            fontSize: 12,
                            color: Color.fromRGBO(160, 163, 175, 1))),
                    SizedBox(width: 48),
                    dropdown_button2()
                  ],
                ),
                SizedBox(height: 12),
                SizedBox(
                  height: 28,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Tên người nhận',
                          style: TextStyle(
                              fontSize: 12,
                              color: Color.fromRGBO(160, 163, 175, 1))),
                      Text('TRUONG THI THUY HUE',
                          style: TextStyle(
                              fontSize: 12,
                              color: Color.fromRGBO(255, 255, 255, 1)))
                    ],
                  ),
                ),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Số tiền chuyển',
                        style: TextStyle(
                            fontSize: 12,
                            color: Color.fromRGBO(160, 163, 175, 1))),
                    Flexible(
                      child: SizedBox(
                        width: 200,
                        height: 36,
                        child: TextField(
                          style: TextStyle(fontSize: 12),
                          decoration: InputDecoration(
                              hintText: 'Số tiền chuyển',
                              hintStyle: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromRGBO(89, 94, 114, 1)),
                              contentPadding: EdgeInsets.all(8),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromRGBO(41, 45, 56, 1)),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4)))),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 22,
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(6)),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 4),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6)),
                              backgroundColor: Color.fromRGBO(41, 45, 56, 1)),
                          onPressed: () {},
                          child: Text(
                            '1.000.000',
                            style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontSize: 10),
                          )),
                    ),
                    SizedBox(width: 8),
                    Container(
                      height: 22,
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(6)),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 4),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6)),
                              backgroundColor: Color.fromRGBO(41, 45, 56, 1)),
                          onPressed: () {},
                          child: Text(
                            '10.000.000',
                            style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontSize: 10),
                          )),
                    ),
                    SizedBox(width: 8),
                    Container(
                      height: 22,
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(6)),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 4),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6)),
                              backgroundColor: Color.fromRGBO(41, 45, 56, 1)),
                          onPressed: () {},
                          child: Text(
                            '100.000.000',
                            style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontSize: 10),
                          )),
                    )
                  ],
                ),
                SizedBox(height: 12),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Nội dung chuyển tiền',
                        style: TextStyle(
                            fontSize: 12,
                            color: Color.fromRGBO(160, 163, 175, 1))),
                    Flexible(
                      child: SizedBox(
                        width: 200,
                        height: 60,
                        child: TextField(
                          style: TextStyle(fontSize: 12),
                          maxLines: null,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(8),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1,
                                      color: Color.fromRGBO(41, 45, 56, 1)),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4)))),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 12),
                SizedBox(
                  height: 28,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Phí giao dịch',
                          style: TextStyle(
                              fontSize: 12,
                              color: Color.fromRGBO(160, 163, 175, 1))),
                      Text('0 VND',
                          style: TextStyle(
                              fontSize: 12,
                              color: Color.fromRGBO(255, 255, 255, 1)))
                    ],
                  ),
                ),
                SizedBox(height: 12),
                SizedBox(
                  height: 28,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Tổng tiền',
                          style: TextStyle(
                              fontSize: 12,
                              color: Color.fromRGBO(160, 163, 175, 1))),
                      Text('0 VND',
                          style: TextStyle(
                              fontSize: 12,
                              color: Color.fromRGBO(255, 255, 255, 1)))
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
              bottom: 12,
              left: 16,
              right: 16,
              child: SizedBox(
                height: 36,
                child: ElevatedButton(
                    onPressed: todopage,
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(231, 171, 33, 1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                    child: Text(
                      'Tiếp tục',
                      style: TextStyle(
                          color: Color.fromRGBO(19, 23, 33, 1), fontSize: 14),
                    )),
              ))
        ],
      ),
    );
  }

  Future<void> todopage() async {
    final route = MaterialPageRoute(builder: (context) => ttgiaodich());
    await Navigator.push(context, route);
  }
}

class dropdown_button2 extends StatefulWidget {
  const dropdown_button2({super.key});

  @override
  State<dropdown_button2> createState() => _dropdown_button2State();
}

class _dropdown_button2State extends State<dropdown_button2> {
  final List<String> items = [
    '8130411',
    '1234567',
  ];
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Color.fromRGBO(41, 45, 56, 1)),
          borderRadius: BorderRadius.circular(4)),
      child: DropdownButtonHideUnderline(
        child: DropdownButton2<String>(
          iconStyleData: IconStyleData(icon: Icon(Icons.arrow_drop_down)),
          isExpanded: true,
          hint: Text(
            items.first,
            style: TextStyle(
              fontSize: 12,
              color: Color.fromRGBO(226, 226, 226, 1),
            ),
          ),
          items: items
              .map((String item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: const TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ))
              .toList(),
          value: selectedValue,
          onChanged: (String? value) {
            setState(() {
              selectedValue = value;
            });
          },
          buttonStyleData: const ButtonStyleData(
            padding: EdgeInsets.symmetric(horizontal: 8),
            height: 36,
            width: 200,
          ),
          menuItemStyleData: const MenuItemStyleData(
            height: 40,
          ),
        ),
      ),
    );
  }
}
