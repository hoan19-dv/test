import 'package:app/otp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class demo extends StatefulWidget {
  const demo({super.key});

  @override
  State<demo> createState() => _demoState();
}

class _demoState extends State<demo> {
  bool checkbox = true;
  bool checkbox2 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mở tài khoản'),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(left: 16, right: 16),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Xác nhận thông tin',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text('Họ và tên'),
                    padding: EdgeInsets.only(bottom: 6, top: 32),
                  ),
                  const SizedBox(
                    height: 36,
                    child: TextField(
                      textCapitalization: TextCapitalization.characters,
                      style: TextStyle(fontSize: 16),
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.only(left: 8, top: 6, bottom: 6),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4))),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text('Ngày sinh'),
                    padding: EdgeInsets.only(bottom: 6, top: 8),
                  ),
                  const SizedBox(
                    height: 36,
                    child: TextField(
                      enabled: false,
                      style: TextStyle(fontSize: 16),
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.only(left: 8, top: 6, bottom: 6),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4))),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text('Giới tính'),
                    padding: EdgeInsets.only(bottom: 6, top: 8),
                  ),
                  const SizedBox(
                    height: 36,
                    child: TextField(
                      style: TextStyle(fontSize: 16),
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.only(left: 8, top: 6, bottom: 6),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4))),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text('Số điện thoại'),
                    padding: EdgeInsets.only(bottom: 6, top: 8),
                  ),
                  SizedBox(
                    height: 36,
                    child: TextField(
                      enabled: false,
                      style: TextStyle(fontSize: 16),
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.only(left: 8, top: 6, bottom: 6),
                        border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4))),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text('Email'),
                    padding: EdgeInsets.only(bottom: 6, top: 8),
                  ),
                  SizedBox(
                    height: 36,
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(fontSize: 16),
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.only(left: 8, top: 6, bottom: 6),
                        border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4))),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text('Số CMND'),
                    padding: EdgeInsets.only(bottom: 6, top: 8),
                  ),
                  SizedBox(
                    height: 36,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      style: TextStyle(fontSize: 16),
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.only(left: 8, top: 6, bottom: 6),
                        border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4))),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text('Ngày cấp'),
                    padding: EdgeInsets.only(bottom: 6, top: 8),
                  ),
                  SizedBox(
                    height: 36,
                    child: TextField(
                      style: TextStyle(fontSize: 16),
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.only(left: 8, top: 6, bottom: 6),
                        border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4))),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text('Nơi cấp'),
                    padding: EdgeInsets.only(bottom: 6, top: 8),
                  ),
                  SizedBox(
                    height: 36,
                    child: TextField(
                      style: TextStyle(fontSize: 16),
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.only(left: 8, top: 6, bottom: 6),
                        border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4))),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text('Địa chỉ liên lạc'),
                    padding: EdgeInsets.only(bottom: 6, top: 8),
                  ),
                  SizedBox(
                    height: 36,
                    child: TextField(
                      style: TextStyle(fontSize: 16),
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.only(left: 8, top: 6, bottom: 6),
                        border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4))),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: check_box,
                        child: checkbox
                            ? Icon(
                                Icons.check_box_outline_blank,
                                color: Colors.orangeAccent,
                              )
                            : Icon(Icons.check_box, color: Colors.orangeAccent),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.841,
                        child: Text(
                          'Tôi cam kết thống tin cung cấp là chính xác, hợp pháp và hoàn toàn chịu trách nhiệm.',
                          softWrap: true,
                          maxLines: null,
                          overflow: TextOverflow.clip,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: check_box2,
                        child: checkbox2
                            ? Icon(
                                Icons.check_box_outline_blank,
                                color: Colors.orangeAccent,
                              )
                            : Icon(Icons.check_box, color: Colors.orangeAccent),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      const Text(
                        'Tôi đồng ý với mọi',
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          'Điều khoản & điều kiện',
                          style: TextStyle(
                            color: Colors.blueAccent,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text('của CTCK')
                    ],
                  ),
                  SizedBox(
                    height: 92,
                  )
                ],
              ),
            ),
          ),
          Positioned(
              bottom: 12,
              left: 16,
              right: 16,
              child: SizedBox(
                height: 36,
                child: ElevatedButton(
                    onPressed: dk,
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orangeAccent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                    child: Text(
                      'Tiếp tục',
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

  void check_box2() {
    setState(() {
      checkbox2 = !checkbox2;
    });
  }

  void dk() {
    setState(() {
      if (checkbox || checkbox2) {
      } else {
        pageotp();
      }
    });
  }

  Future<void> pageotp() async {
    final route = MaterialPageRoute(builder: (context) => OTP());
    await Navigator.push(context, route);
  }
}
