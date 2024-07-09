import 'package:app/dkquenmua/dangky.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class dkquyen extends StatefulWidget {
  const dkquyen({super.key});

  @override
  State<dkquyen> createState() => _dkquyenState();
}

class _dkquyenState extends State<dkquyen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Đăng ký quyền mua',
          style:
              TextStyle(fontSize: 14, color: Color.fromRGBO(255, 255, 255, 1)),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 16, right: 16, top: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(4)),
                  fillColor: Color.fromRGBO(41, 45, 56, 1),
                  filled: true,
                ),
              ),
              SizedBox(height: 12),
              Row(
                children: [
                  Expanded(child: dropdown_button2()),
                  SizedBox(width: 20),
                  Expanded(
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4)),
                            backgroundColor: Color.fromRGBO(231, 171, 33, 1)),
                        child: Text(
                          'Tìm kiếm',
                          style: TextStyle(
                              fontSize: 14,
                              color: Color.fromRGBO(37, 36, 36, 1)),
                        )),
                  )
                ],
              ),
              SizedBox(height: 24),
              Text('Số tiền tối đa được đăng ký',
                  style: TextStyle(
                      fontSize: 12, color: Color.fromRGBO(121, 127, 138, 1))),
              SizedBox(height: 4),
              Row(
                children: [
                  Text(
                    '150,000,000',
                    style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1), fontSize: 30),
                  ),
                  SizedBox(width: 2),
                  Text(
                    'VND',
                    style: TextStyle(
                        fontSize: 10, color: Color.fromRGBO(121, 127, 138, 1)),
                  )
                ],
              ),
              SizedBox(height: 32),
              Text('Danh sách đăng ký quền mua',
                  style: TextStyle(
                      fontSize: 12, color: Color.fromRGBO(231, 171, 33, 1))),
              SizedBox(height: 16),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color.fromRGBO(29, 32, 41, 1)),
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                margin: EdgeInsets.only(bottom: 8),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('VCB - Quền mua',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(255, 255, 255, 1))),
                        Row(
                          children: [
                            SizedBox(
                              height: 20,
                              child: Opacity(
                                opacity: 0.5,
                                child: ElevatedButton(
                                  onPressed: null,
                                  child: Text(
                                    'Đăng ký',
                                    style: TextStyle(
                                        color: Color.fromRGBO(231, 171, 33, 1),
                                        fontSize: 12),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 6, vertical: 2),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(3)),
                                      side: BorderSide(
                                          color:
                                              Color.fromRGBO(231, 171, 33, 1))),
                                ),
                              ),
                            ),
                            SizedBox(width: 16),
                            SizedBox(
                              height: 20,
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  'Xem chi tiết',
                                  style: TextStyle(
                                      color: Color.fromRGBO(231, 171, 33, 1),
                                      fontSize: 12),
                                ),
                                style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 6, vertical: 2),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(3)),
                                    side: BorderSide(
                                        color:
                                            Color.fromRGBO(231, 171, 33, 1))),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 36,
                                  child: Text('Trạng thái',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color.fromRGBO(
                                              160, 163, 175, 1))),
                                ),
                                SizedBox(height: 4),
                                SizedBox(
                                  width: 80,
                                  height: 36,
                                  child: Text('KL được phép mua',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color.fromRGBO(
                                              160, 163, 175, 1))),
                                ),
                                SizedBox(height: 4),
                                SizedBox(
                                  height: 36,
                                  child: Text('Giá mua',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color.fromRGBO(
                                              160, 163, 175, 1))),
                                )
                              ],
                            ),
                            SizedBox(width: 2),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 36,
                                  child: Text('Đã thực hiện',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color:
                                              Color.fromRGBO(79, 208, 138, 1))),
                                ),
                                SizedBox(height: 4),
                                SizedBox(
                                  width: 78,
                                  height: 36,
                                  child: Text('10,000',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color.fromRGBO(
                                              255, 255, 255, 1))),
                                ),
                                SizedBox(height: 4),
                                SizedBox(
                                  width: 78,
                                  height: 36,
                                  child: Text('80,000',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color.fromRGBO(
                                              255, 255, 255, 1))),
                                )
                              ],
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 80,
                                  height: 36,
                                  child: Text('KL đã đăng ký',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color.fromRGBO(
                                              160, 163, 175, 1))),
                                ),
                                SizedBox(height: 4),
                                SizedBox(
                                  width: 80,
                                  height: 36,
                                  child: Text('KL còn được mua',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color.fromRGBO(
                                              160, 163, 175, 1))),
                                ),
                                SizedBox(height: 4),
                                SizedBox(
                                  width: 80,
                                  height: 36,
                                  child: Text('Hạn đăng ký mua',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color.fromRGBO(
                                              160, 163, 175, 1))),
                                )
                              ],
                            ),
                            SizedBox(width: 2),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 36,
                                  width: 78,
                                  child: Text('5,000',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color:
                                              Color.fromRGBO(79, 208, 138, 1))),
                                ),
                                SizedBox(height: 4),
                                SizedBox(
                                  width: 78,
                                  height: 36,
                                  child: Text('5,000',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color.fromRGBO(
                                              255, 255, 255, 1))),
                                ),
                                SizedBox(height: 4),
                                SizedBox(
                                  height: 36,
                                  child: Text('23/10/2023',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color.fromRGBO(
                                              255, 255, 255, 1))),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color.fromRGBO(29, 32, 41, 1)),
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                margin: EdgeInsets.only(bottom: 8),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('VCB - Quền mua',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(255, 255, 255, 1))),
                        Row(
                          children: [
                            SizedBox(
                              height: 20,
                              child: ElevatedButton(
                                onPressed: () {
                                  todo();
                                },
                                child: Text(
                                  'Đăng ký',
                                  style: TextStyle(
                                      color: Color.fromRGBO(231, 171, 33, 1),
                                      fontSize: 12),
                                ),
                                style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 6, vertical: 2),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(3)),
                                    side: BorderSide(
                                        color:
                                            Color.fromRGBO(231, 171, 33, 1))),
                              ),
                            ),
                            SizedBox(width: 16),
                            SizedBox(
                              height: 20,
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  'Xem chi tiết',
                                  style: TextStyle(
                                      color: Color.fromRGBO(231, 171, 33, 1),
                                      fontSize: 12),
                                ),
                                style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 6, vertical: 2),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(3)),
                                    side: BorderSide(
                                        color:
                                            Color.fromRGBO(231, 171, 33, 1))),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 36,
                                  child: Text('Trạng thái',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color.fromRGBO(
                                              160, 163, 175, 1))),
                                ),
                                SizedBox(height: 4),
                                SizedBox(
                                  width: 80,
                                  height: 36,
                                  child: Text('KL được phép mua',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color.fromRGBO(
                                              160, 163, 175, 1))),
                                ),
                                SizedBox(height: 4),
                                SizedBox(
                                  height: 36,
                                  child: Text('Giá mua',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color.fromRGBO(
                                              160, 163, 175, 1))),
                                )
                              ],
                            ),
                            SizedBox(width: 2),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 36,
                                  width: 78,
                                  child: Text('Chưa thực hiện',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color:
                                              Color.fromRGBO(240, 74, 71, 1))),
                                ),
                                SizedBox(height: 4),
                                SizedBox(
                                  width: 78,
                                  height: 36,
                                  child: Text('20,000',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color.fromRGBO(
                                              255, 255, 255, 1))),
                                ),
                                SizedBox(height: 4),
                                SizedBox(
                                  width: 78,
                                  height: 36,
                                  child: Text('80,000',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color.fromRGBO(
                                              255, 255, 255, 1))),
                                )
                              ],
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 80,
                                  height: 36,
                                  child: Text('KL đã đăng ký',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color.fromRGBO(
                                              160, 163, 175, 1))),
                                ),
                                SizedBox(height: 4),
                                SizedBox(
                                  width: 80,
                                  height: 36,
                                  child: Text('KL còn được mua',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color.fromRGBO(
                                              160, 163, 175, 1))),
                                ),
                                SizedBox(height: 4),
                                SizedBox(
                                  width: 80,
                                  height: 36,
                                  child: Text('Hạn đăng ký mua',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color.fromRGBO(
                                              160, 163, 175, 1))),
                                )
                              ],
                            ),
                            SizedBox(width: 2),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 36,
                                  child: Text('5,000',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color:
                                              Color.fromRGBO(79, 208, 138, 1))),
                                ),
                                SizedBox(height: 4),
                                SizedBox(
                                  width: 80,
                                  height: 36,
                                  child: Text('5,000',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color.fromRGBO(
                                              255, 255, 255, 1))),
                                ),
                                SizedBox(height: 4),
                                SizedBox(
                                  height: 36,
                                  child: Text('23/10/2023',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color.fromRGBO(
                                              255, 255, 255, 1))),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> todo() async {
    final route = MaterialPageRoute(builder: (context) => dangkyquyen());
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
            'Tài khoản',
            style: TextStyle(
              fontSize: 10,
              color: Color.fromRGBO(121, 127, 138, 1),
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
            width: double.infinity,
          ),
          menuItemStyleData: const MenuItemStyleData(
            height: 40,
          ),
        ),
      ),
    );
  }
}
