import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ttgiaodichnh extends StatefulWidget {
  const ttgiaodichnh({super.key});

  @override
  State<ttgiaodichnh> createState() => _ttgiaodichnhState();
}

class _ttgiaodichnhState extends State<ttgiaodichnh> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Thông tin giao dịch', style: TextStyle(fontSize: 14)),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 16, right: 16, top: 16),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(29, 32, 41, 1),
                    borderRadius: BorderRadius.circular(4)),
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Tổng số tiền giao dịch',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(160, 163, 175, 1))),
                        Text('10.000.000 VND',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(255, 255, 255, 1))),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Số tiền chuyển',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(160, 163, 175, 1))),
                        Text('10.000.000 VND',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(255, 255, 255, 1))),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Phí giao dịch',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(160, 163, 175, 1))),
                        Text('0VND',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(255, 255, 255, 1))),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Từ tài khoản',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(160, 163, 175, 1))),
                        Text('81300411',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(255, 255, 255, 1))),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Đến tài khoản',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(160, 163, 175, 1))),
                        Text('123456789',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(255, 255, 255, 1))),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Ngân hàng nhận',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(160, 163, 175, 1))),
                        Text('VP BANK',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(255, 255, 255, 1))),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Nội dung',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(160, 163, 175, 1))),
                        SizedBox(
                          width: 258,
                          child: Text(
                              'TKCK 8130411 - TRUONG THI THUY HUE CHUYEN TIEN',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromRGBO(255, 255, 255, 1))),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          Positioned(
              bottom: 12,
              left: 16,
              right: 16,
              child: SizedBox(
                height: 36,
                child: ElevatedButton(
                    onPressed: () {
                      popup(context);
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(231, 171, 33, 1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                    child: Text(
                      'Xác nhận',
                      style: TextStyle(color: Color.fromRGBO(19, 23, 33, 1)),
                    )),
              ))
        ],
      ),
    );
  }
}

popup(BuildContext context) {
  return showCupertinoDialog(
      barrierDismissible: true,
      context: context,
      builder: (BuildContext context) => Container(
          child: CupertinoAlertDialog(
              title: Center(child: Image.asset('assets/icon/ic-success.png')),
              content: Column(
                children: [
                  SizedBox(height: 12),
                  Text(
                    'Giao dịch thành công',
                    style: TextStyle(
                        fontSize: 18, color: Color.fromRGBO(231, 171, 33, 1)),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(41, 45, 56, 1),
                        borderRadius: BorderRadius.circular(4)),
                    padding: EdgeInsets.all(8),
                    margin: EdgeInsets.only(top: 8, bottom: 20),
                    child: const Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Số tiền chuyển',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromRGBO(160, 163, 175, 1))),
                            Text('10.000.000',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromRGBO(255, 255, 255, 1)))
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Từ tài khoản',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromRGBO(160, 163, 175, 1))),
                            Text('8130411',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromRGBO(255, 255, 255, 1)))
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Đến tài khoản',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromRGBO(160, 163, 175, 1))),
                            Text('123456789',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromRGBO(255, 255, 255, 1)))
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Ngân hàng nhận',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromRGBO(160, 163, 175, 1))),
                            Text('VP BANK',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromRGBO(255, 255, 255, 1)))
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Nội dung',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromRGBO(160, 163, 175, 1))),
                            SizedBox(
                                width: 150,
                                child: Text(
                                  'TKCK 8130411 - TRUONG THI THUY HUE CHUYEN TIEN',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color.fromRGBO(255, 255, 255, 1)),
                                  textAlign: TextAlign.end,
                                ))
                          ],
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)),
                          padding:
                              EdgeInsets.symmetric(horizontal: 47, vertical: 8),
                          backgroundColor: Color.fromRGBO(231, 171, 33, 1)),
                      child: Text(
                        'Chuyển thêm',
                        style: TextStyle(
                            fontSize: 14, color: Color.fromRGBO(19, 23, 33, 1)),
                      )),
                  SizedBox(height: 12),
                  GestureDetector(
                    onTap: () {},
                    child: Text('Lịch sử giao dịch',
                        style: TextStyle(
                            fontSize: 14,
                            color: Color.fromRGBO(238, 116, 32, 1))),
                  )
                ],
              ))));
}
