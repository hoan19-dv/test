import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class settingsms extends StatefulWidget {
  const settingsms({super.key});

  @override
  State<settingsms> createState() => _settingsmsState();
}

class _settingsmsState extends State<settingsms> {
  bool checkbox = false;
  bool checkbox1 = false;
  bool checkbox2 = false;
  bool checkbox3 = false;
  bool checkbox4 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cài đặt SMS'),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(left: 16, right: 16, top: 16),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Cài đặt SMS',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  child: Text(
                    'Nhận thông báo qua SMS được gửi về số điện thoại đã đăng ký của Quý khách.',
                    style: TextStyle(color: Colors.grey),
                    softWrap: true,
                    maxLines: null,
                    overflow: TextOverflow.clip,
                  ),
                ),
                SizedBox(
                  height: 22,
                ),
                InkWell(
                  onTap: check_box,
                  child: Container(
                    height: 46,
                    padding: EdgeInsets.only(bottom: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Biến động số dư tiền'),
                        checkbox
                            ? Icon(Icons.check_box, color: Colors.yellowAccent)
                            : Icon(
                                Icons.check_box_outline_blank,
                                color: Colors.grey,
                              ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: check_box1,
                  child: Container(
                    height: 46,
                    padding: EdgeInsets.only(bottom: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Biến động số dư chứng khoán'),
                        checkbox1
                            ? Icon(Icons.check_box, color: Colors.yellowAccent)
                            : Icon(
                                Icons.check_box_outline_blank,
                                color: Colors.grey,
                              ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: check_box2,
                  child: Container(
                    height: 46,
                    padding: EdgeInsets.only(bottom: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Thông báo khớp lệnh'),
                        checkbox2
                            ? Icon(Icons.check_box, color: Colors.yellowAccent)
                            : Icon(
                                Icons.check_box_outline_blank,
                                color: Colors.grey,
                              ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: check_box3,
                  child: Container(
                    height: 46,
                    padding: EdgeInsets.only(bottom: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Thông tin tài khoản'),
                        checkbox3
                            ? Icon(Icons.check_box, color: Colors.yellowAccent)
                            : Icon(
                                Icons.check_box_outline_blank,
                                color: Colors.grey,
                              ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: check_box4,
                  child: Container(
                    height: 46,
                    padding: EdgeInsets.only(bottom: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Thông báo dịch vụ'),
                        InkWell(
                          onTap: check_box4,
                          child: checkbox4
                              ? Icon(Icons.check_box,
                                  color: Colors.yellowAccent)
                              : Icon(
                                  Icons.check_box_outline_blank,
                                  color: Colors.grey,
                                ),
                        ),
                      ],
                    ),
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
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orangeAccent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                    child: Text(
                      'Xác nhận',
                      style: TextStyle(color: Colors.black),
                    )),
              ))
        ],
      ),
    );
  }

  void check_box() {
    setState(() {
      checkbox = !checkbox;
    });
  }

  void check_box1() {
    setState(() {
      checkbox1 = !checkbox1;
    });
  }

  void check_box2() {
    setState(() {
      checkbox2 = !checkbox2;
    });
  }

  void check_box3() {
    setState(() {
      checkbox3 = !checkbox3;
    });
  }

  void check_box4() {
    setState(() {
      checkbox4 = !checkbox4;
    });
  }
}
