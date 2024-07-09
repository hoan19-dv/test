import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class dsthuchienquyen extends StatefulWidget {
  const dsthuchienquyen({super.key});

  @override
  State<dsthuchienquyen> createState() => _dsthuchienquyenState();
}

class _dsthuchienquyenState extends State<dsthuchienquyen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Danh sách thực hiện',
            style: TextStyle(
                fontSize: 14, color: Color.fromRGBO(255, 255, 255, 1))),
      ),
      body: Container(
          padding: EdgeInsets.only(left: 16, right: 16, top: 24),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text('Danh sách thực hiện quyền mua',
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 12, color: Color.fromRGBO(231, 171, 33, 1))),
            SizedBox(height: 16),
            Container(
              padding: EdgeInsets.only(left: 6, right: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 32,
                    child: Text('Mã CK',
                        style: TextStyle(
                            fontSize: 10,
                            color: Color.fromRGBO(160, 163, 175, 1))),
                  ),
                  SizedBox(
                    width: 60,
                    child: Text('KL đã mua',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            fontSize: 10,
                            color: Color.fromRGBO(160, 163, 175, 1))),
                  ),
                  SizedBox(
                    width: 90,
                    child: Text('KL mua chờ duyệt',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            fontSize: 10,
                            color: Color.fromRGBO(160, 163, 175, 1))),
                  ),
                  SizedBox(
                    width: 70,
                    child: Text('Tổng tiền',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            fontSize: 10,
                            color: Color.fromRGBO(160, 163, 175, 1))),
                  ),
                  SizedBox(
                    width: 52,
                    child: Text('Thao tác',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 10,
                            color: Color.fromRGBO(160, 163, 175, 1))),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(26, 28, 36, 1)),
              padding: EdgeInsets.all(6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 32,
                    child: Text('VCB',
                        style: TextStyle(
                            fontSize: 10,
                            color: Color.fromRGBO(255, 255, 255, 1))),
                  ),
                  SizedBox(
                    width: 60,
                    child: Text('500',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            fontSize: 10,
                            color: Color.fromRGBO(255, 255, 255, 1))),
                  ),
                  SizedBox(
                    width: 90,
                    child: Text('200',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            fontSize: 10,
                            color: Color.fromRGBO(255, 255, 255, 1))),
                  ),
                  SizedBox(
                    width: 70,
                    child: Text('40,000,000',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            fontSize: 10,
                            color: Color.fromRGBO(255, 255, 255, 1))),
                  ),
                  SizedBox(
                    width: 52,
                    child: Container(
                      height: 18,
                      width: 52,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(horizontal: 4),
                            side: BorderSide(
                                color: Color.fromRGBO(231, 171, 33, 1)),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(3)),
                          ),
                          onPressed: () {
                            showdialog(context);
                          },
                          child: Text('Hủy',
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Color.fromRGBO(231, 171, 33, 1)))),
                    ),
                  ),
                ],
              ),
            )
          ])),
    );
  }
}

Future<dynamic> showdialog(BuildContext context) {
  return showCupertinoDialog(
      barrierDismissible: true,
      context: context,
      builder: (BuildContext context) => Container(
            child: CupertinoAlertDialog(
                title: Center(
                  child: Text(
                    'Xác nhận hủy',
                    style: TextStyle(
                        color: Color.fromRGBO(231, 171, 33, 1), fontSize: 18),
                  ),
                ),
                content: Center(
                  child: Text(
                    'Bạn muốn huỷ khối lượng chờ duyệt?',
                    style: TextStyle(
                        fontSize: 14, color: Color.fromRGBO(226, 226, 226, 1)),
                  ),
                ),
                actions: <CupertinoDialogAction>[
                  CupertinoDialogAction(
                    child: Text(
                      'Đóng',
                      style: TextStyle(
                          color: Color.fromRGBO(231, 171, 33, 1), fontSize: 16),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  CupertinoDialogAction(
                    child: Text('Xác nhận',
                        style: TextStyle(
                            color: Color.fromRGBO(231, 171, 33, 1),
                            fontSize: 16)),
                    onPressed: () {},
                  )
                ]),
          ));
}
