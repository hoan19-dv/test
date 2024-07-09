import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class card2 extends StatefulWidget {
  const card2({super.key});

  @override
  State<card2> createState() => _card2State();
}

class _card2State extends State<card2> {
  bool selected = false;
  bool visible = false;
  bool selected2 = false;
  bool visible2 = false;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      card(),
      SizedBox(
        height: 12,
      ),
    ]);
  }

  GestureDetector card() {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
          visible = !visible;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 400),
        width: double.infinity,
        height: selected ? 221 : 32,
        curve: Curves.ease,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromRGBO(26, 28, 36, 1)),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(26, 28, 36, 1)),
              padding: EdgeInsets.all(6),
              child: const Row(
                verticalDirection: VerticalDirection.down,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 40,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('HCM',
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromRGBO(255, 255, 255, 1)),
                            textAlign: TextAlign.start),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 40,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Mua',
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromRGBO(79, 208, 138, 1)),
                            textAlign: TextAlign.start),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 40,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('500',
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromRGBO(255, 255, 255, 1)),
                            textAlign: TextAlign.start),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 40,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('89.10',
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromRGBO(255, 255, 255, 1)),
                            textAlign: TextAlign.start),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 60,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('>=34.10',
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromRGBO(255, 255, 255, 1)),
                            textAlign: TextAlign.start),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 78,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Chờ kích hoạt',
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromRGBO(204, 172, 61, 1)),
                            textAlign: TextAlign.start),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Visibility(
              maintainState: false,
              visible: visible,
              child: Flexible(
                child: Column(
                  children: [
                    SizedBox(height: 6),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 6),
                      child: Expanded(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Số hiệu lệnh',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color.fromRGBO(
                                                160, 163, 175, 1)),
                                        textAlign: TextAlign.start),
                                    SizedBox(height: 4),
                                    Text('Lệnh điều kiện',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color.fromRGBO(
                                                160, 163, 175, 1)),
                                        textAlign: TextAlign.start),
                                    SizedBox(height: 4),
                                    Text('Chiều',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color.fromRGBO(
                                                160, 163, 175, 1)),
                                        textAlign: TextAlign.start),
                                    SizedBox(height: 4),
                                    Text('Biên độ cắt lỗ',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color.fromRGBO(
                                                160, 163, 175, 1)),
                                        textAlign: TextAlign.start),
                                    SizedBox(height: 4),
                                    Text('Ngày bắt đầu',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color.fromRGBO(
                                                160, 163, 175, 1)),
                                        textAlign: TextAlign.start),
                                    SizedBox(height: 4),
                                    Text('Thời gian kết thúc',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color.fromRGBO(
                                                160, 163, 175, 1)),
                                        textAlign: TextAlign.start),
                                    SizedBox(height: 12),
                                  ]),
                              Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text('00002',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color.fromRGBO(
                                                255, 255, 255, 1)),
                                        textAlign: TextAlign.end),
                                    SizedBox(height: 4),
                                    Text('SL/TP',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color.fromRGBO(
                                                255, 255, 255, 1)),
                                        textAlign: TextAlign.end),
                                    SizedBox(height: 4),
                                    Text('SL',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color.fromRGBO(
                                                255, 255, 255, 1)),
                                        textAlign: TextAlign.end),
                                    SizedBox(height: 4),
                                    Text('0.05',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color.fromRGBO(
                                                255, 255, 255, 1)),
                                        textAlign: TextAlign.end),
                                    SizedBox(height: 4),
                                    Text('08:29 - 22/9/2023',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color.fromRGBO(
                                                255, 255, 255, 1)),
                                        textAlign: TextAlign.end),
                                    SizedBox(height: 4),
                                    Text('22/9/2023',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color.fromRGBO(
                                                255, 255, 255, 1)),
                                        textAlign: TextAlign.end),
                                    SizedBox(height: 12),
                                  ])
                            ]),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 28,
                              child: OutlinedButton(
                                onPressed: () {
                                  sualenh(context);
                                },
                                style: OutlinedButton.styleFrom(
                                    side: BorderSide(
                                        color: Color.fromRGBO(231, 171, 33, 1)),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8))),
                                child: Text(
                                  'Sửa lệnh',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color.fromRGBO(231, 171, 33, 1)),
                                ),
                              ),
                            ),
                            SizedBox(width: 12),
                            Container(
                              height: 28,
                              child: ElevatedButton(
                                onPressed: () {
                                  huylenh(context);
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Color.fromRGBO(231, 171, 33, 1),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8))),
                                child: Text(
                                  'Hủy lệnh',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color.fromRGBO(19, 23, 33, 1)),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 6)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

huylenh(BuildContext context) {
  return showCupertinoDialog(
      barrierDismissible: true,
      context: context,
      builder: (BuildContext context) => Container(
            child: CupertinoAlertDialog(
                title: Center(
                  child: Text(
                    'Hủy lệnh',
                    style: TextStyle(
                        color: Color.fromRGBO(231, 171, 33, 1), fontSize: 16),
                  ),
                ),
                content: Row(
                  children: [
                    Container(
                      width: 150,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Loại lệnh',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromRGBO(226, 226, 226, 1))),
                          SizedBox(height: 8),
                          Text('Mã chứng khoán',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromRGBO(226, 226, 226, 1))),
                          SizedBox(height: 8),
                          Text('Giá đặt',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromRGBO(226, 226, 226, 1))),
                          SizedBox(height: 8),
                          Text('Khối lượng',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromRGBO(226, 226, 226, 1))),
                          SizedBox(height: 8),
                        ],
                      ),
                    ),
                    Container(
                      width: 80,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Bán',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(240, 74, 71, 1)),
                          ),
                          SizedBox(height: 8),
                          Text('FPT',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromRGBO(255, 255, 255, 1))),
                          SizedBox(height: 8),
                          Text('95.00',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromRGBO(255, 255, 255, 1))),
                          SizedBox(height: 8),
                          Text('500',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromRGBO(255, 255, 255, 1))),
                          SizedBox(height: 8),
                        ],
                      ),
                    ),
                  ],
                ),
                actions: <CupertinoDialogAction>[
                  CupertinoDialogAction(
                    child: Text(
                      'Đóng',
                      style: TextStyle(
                          fontSize: 16, color: Color.fromRGBO(231, 171, 33, 1)),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  CupertinoDialogAction(
                    child: Text('Xác nhận',
                        style: TextStyle(
                            fontSize: 16,
                            color: Color.fromRGBO(231, 171, 33, 1))),
                    onPressed: () {},
                  )
                ]),
          ));
}

sualenh(BuildContext context) {
  num number = 0;
  return showCupertinoDialog(
      barrierDismissible: true,
      context: context,
      builder: (BuildContext context) => Container(
            child: CupertinoAlertDialog(
                title: Center(
                  child: Text(
                    'Sửa lệnh',
                    style: TextStyle(
                        color: Color.fromRGBO(231, 171, 33, 1), fontSize: 16),
                  ),
                ),
                content: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(bottom: 8),
                      child: Row(
                        children: [
                          Expanded(
                              child: Text(
                            'Loại lệnh',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(226, 226, 226, 1)),
                            textAlign: TextAlign.start,
                          )),
                          Expanded(
                              child: Text(
                            'Bán',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(240, 74, 71, 1)),
                            textAlign: TextAlign.start,
                          ))
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 8),
                      child: Row(
                        children: [
                          Expanded(
                              child: Text(
                            'Mã chứng khoán',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(226, 226, 226, 1)),
                            textAlign: TextAlign.start,
                          )),
                          Expanded(
                              child: Text(
                            'FPT',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(255, 255, 255, 1)),
                            textAlign: TextAlign.start,
                          ))
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Expanded(
                              child: Text(
                            'Giá đặt',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(226, 226, 226, 1)),
                            textAlign: TextAlign.start,
                          )),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color.fromRGBO(89, 94, 114, 1)),
                                  borderRadius: BorderRadius.circular(4)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      print('remove');
                                    },
                                    child: Container(
                                        width: 16,
                                        height: 16,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            color:
                                                Color.fromRGBO(41, 45, 56, 1),
                                            borderRadius:
                                                BorderRadius.circular(2)),
                                        child: Icon(Icons.remove, size: 10)),
                                  ),
                                  Text(
                                    '$number',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color:
                                            Color.fromRGBO(255, 255, 255, 1)),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      print('add');
                                    },
                                    child: Container(
                                        width: 16,
                                        height: 16,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            color:
                                                Color.fromRGBO(41, 45, 56, 1),
                                            borderRadius:
                                                BorderRadius.circular(2)),
                                        child: Icon(Icons.add, size: 10)),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 8),
                    Container(
                      child: Row(
                        children: [
                          Expanded(
                              child: Text(
                            'Khối lượng',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(226, 226, 226, 1)),
                            textAlign: TextAlign.start,
                          )),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color.fromRGBO(89, 94, 114, 1)),
                                  borderRadius: BorderRadius.circular(4)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      print('remove');
                                    },
                                    child: Container(
                                        width: 16,
                                        height: 16,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            color:
                                                Color.fromRGBO(41, 45, 56, 1),
                                            borderRadius:
                                                BorderRadius.circular(2)),
                                        child: Icon(Icons.remove, size: 10)),
                                  ),
                                  Text('$number',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color.fromRGBO(
                                              255, 255, 255, 1))),
                                  GestureDetector(
                                    onTap: () {
                                      print('add');
                                    },
                                    child: Container(
                                        width: 16,
                                        height: 16,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            color:
                                                Color.fromRGBO(41, 45, 56, 1),
                                            borderRadius:
                                                BorderRadius.circular(2)),
                                        child: Icon(Icons.add, size: 10)),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                actions: <CupertinoDialogAction>[
                  CupertinoDialogAction(
                    child: Text(
                      'Đóng',
                      style: TextStyle(
                          fontSize: 16, color: Color.fromRGBO(231, 171, 33, 1)),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  CupertinoDialogAction(
                    child: Text('Xác nhận',
                        style: TextStyle(
                            fontSize: 16,
                            color: Color.fromRGBO(231, 171, 33, 1))),
                    onPressed: () {},
                  )
                ]),
          ));
}

// Expanded(
                        //   child: Container(
                        //     child: Column(
                        //       crossAxisAlignment: CrossAxisAlignment.start,
                        //       children: [
                        //         Text('Loại lệnh'),
                        //         SizedBox(height: 8),
                        //         Text('Mã chứng khoán'),
                        //         SizedBox(height: 8),
                        //         Text('Giá đặt'),
                        //         SizedBox(height: 8),
                        //         Text('Khối lượng'),
                        //         SizedBox(height: 8),
                        //       ],
                        //     ),
                        //   ),
                        // ),
                        // Expanded(
                        //   child: Container(
                        //     child: Column(
                        //       crossAxisAlignment: CrossAxisAlignment.start,
                        //       children: [
                        //         Text(
                        //           'Bán',
                        //           style: TextStyle(color: Colors.red),
                        //         ),
                        //         SizedBox(height: 8),
                        //         Text('FPT'),
                        //         SizedBox(height: 8),
                        //         Container(
                        //           padding: EdgeInsets.all(4),
                        //           decoration: BoxDecoration(
                        //               border: Border.all(color: Colors.grey),
                        //               borderRadius: BorderRadius.circular(4)),
                        //           child: Row(
                        //             mainAxisAlignment:
                        //                 MainAxisAlignment.spaceBetween,
                        //             children: [
                        //               Container(
                        //                   decoration: BoxDecoration(
                        //                       borderRadius:
                        //                           BorderRadius.circular(2)),
                        //                   child: Icon(Icons.remove, size: 16)),
                        //               Text('$number'),
                        //               Icon(Icons.add, size: 16)
                        //             ],
                        //           ),
                        //         ),
                        //         SizedBox(height: 8),
                        //         Container(
                        //           decoration: BoxDecoration(
                        //               border: Border.all(color: Colors.grey),
                        //               borderRadius: BorderRadius.circular(4)),
                        //           child: Row(
                        //             mainAxisAlignment:
                        //                 MainAxisAlignment.spaceBetween,
                        //             children: [
                        //               Icon(Icons.remove, size: 16),
                        //               Text('$number'),
                        //               Icon(Icons.add, size: 16)
                        //             ],
                        //           ),
                        //         ),
                        //         SizedBox(height: 8),
                        //       ],
                        //     ),
                        //   ),
                        // ),
