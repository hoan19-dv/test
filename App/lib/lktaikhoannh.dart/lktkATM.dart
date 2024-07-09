import 'dart:ui';

import 'package:app/chuyentiennoibo/ttgd.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class lktaikhoannhATM extends StatefulWidget {
  const lktaikhoannhATM({super.key});

  @override
  State<lktaikhoannhATM> createState() => _lktaikhoannhATMState();
}

class _lktaikhoannhATMState extends State<lktaikhoannhATM> {
  bool checkbox = false;
  bool checkbox2 = false;

  bool _showpass = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Liên kết tài khoản ngân hàng',
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Tên ngân hàng',
                        style: TextStyle(
                            fontSize: 12,
                            color: Color.fromRGBO(160, 163, 175, 1))),
                    SizedBox(width: 48),
                    dropdown_button2()
                  ],
                ),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Hình thức liên kết',
                        style: TextStyle(
                            fontSize: 12,
                            color: Color.fromRGBO(160, 163, 175, 1))),
                    SizedBox(width: 48),
                    dropdown_button22()
                  ],
                ),
                SizedBox(height: 12),
                Row(
                  children: [
                    checkboxx(),
                    SizedBox(width: 10),
                    Text('Tài khoản thụ hưởng',
                        style: TextStyle(
                            fontSize: 12,
                            color: Color.fromRGBO(160, 163, 175, 1))),
                  ],
                ),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Họ và tên',
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Số thẻ',
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Mật khẩu SmartBanking',
                        style: TextStyle(
                            fontSize: 12,
                            color: Color.fromRGBO(160, 163, 175, 1))),
                    Flexible(
                      child: SizedBox(
                        width: 200,
                        height: 36,
                        child: TextField(
                          obscureText: !_showpass,
                          style: TextStyle(fontSize: 12),
                          decoration: InputDecoration(
                              suffixIcon: showpass(),
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
                SizedBox(
                  height: 28,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Tên tài khoản',
                          style: TextStyle(
                              fontSize: 12,
                              color: Color.fromRGBO(160, 163, 175, 1))),
                      Text('NGUYEN DINH KHIEM',
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
                      Text('Tiền mặt khả dụng',
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
                SizedBox(height: 32),
                Row(
                  children: [
                    checkboxx2(),
                    SizedBox(width: 10),
                    Expanded(
                      child: SizedBox(
                        width: double.infinity,
                        child: RichText(
                            text: TextSpan(
                                style: TextStyle(fontSize: 12),
                                children: <TextSpan>[
                              TextSpan(
                                  text: 'Đồng ý với ',
                                  style: TextStyle(
                                      color: Color.fromRGBO(226, 226, 226, 1))),
                              TextSpan(
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {},
                                  text: 'điều khoản điều kiện dịch vụ',
                                  style: TextStyle(
                                      color: Color.fromRGBO(105, 177, 255, 1))),
                              TextSpan(
                                  text:
                                      ' thanh toán của Ngân hàng TMCP Việt Nam Thịnh Vượng',
                                  style: TextStyle(
                                      color: Color.fromRGBO(226, 226, 226, 1)))
                            ])),
                      ),
                    ),
                  ],
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

  Widget showpass() {
    return GestureDetector(
        onTap: () {
          setState(() {
            _showpass = !_showpass;
          });
        },
        child: _showpass
            ? Image.asset('assets/icon/eyet.png')
            : Image.asset('assets/icon/eyef.png'));
  }

  Widget checkboxx() {
    return GestureDetector(
      onTap: () {
        setState(() {
          checkbox = !checkbox;
        });
      },
      child: checkbox
          ? Icon(Icons.check_box, size: 16)
          : Icon(Icons.check_box_outline_blank, size: 16),
    );
  }

  Widget checkboxx2() {
    return GestureDetector(
      onTap: () {
        setState(() {
          checkbox2 = !checkbox2;
        });
      },
      child: checkbox2
          ? Icon(Icons.check_box, size: 16)
          : Icon(Icons.check_box_outline_blank, size: 16),
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
    'VPBank',
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

class dropdown_button22 extends StatefulWidget {
  const dropdown_button22({super.key});

  @override
  State<dropdown_button22> createState() => _dropdown_button22State();
}

class _dropdown_button22State extends State<dropdown_button22> {
  final List<String> items = [
    'SmartBanking',
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
