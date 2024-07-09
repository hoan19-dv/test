// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

// void main() => runApp(const DataTableExampleApp());

// class DataTableExampleApp extends StatelessWidget {
//   const DataTableExampleApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: const Text('DataTable Sample')),
//         body: const DataTableExample(),
//       ),
//     );
//   }
// }

// class DataTableExample extends StatelessWidget {
//   const DataTableExample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.only(left: 16, right: 16),
//       child: Container(
//         width: double.infinity,
//         child: DataTable(
//           columns: const <DataColumn>[
//             DataColumn(
//               label: Expanded(
//                 child: Text(
//                   'Ma CK',
//                   style: TextStyle(fontStyle: FontStyle.italic),
//                 ),
//               ),
//             ),
//             DataColumn(
//               label: Expanded(
//                 child: Text(
//                   'M/B',
//                   style: TextStyle(fontStyle: FontStyle.italic),
//                 ),
//               ),
//             ),
//             DataColumn(
//               label: Expanded(
//                 child: Text(
//                   'Đặt',
//                   style: TextStyle(fontStyle: FontStyle.italic),
//                 ),
//               ),
//             ),
//             DataColumn(
//               label: Expanded(
//                 child: Text(
//                   'Khớp',
//                   style: TextStyle(fontStyle: FontStyle.italic),
//                 ),
//               ),
//             ),
//             DataColumn(
//               label: Expanded(
//                 child: Text(
//                   'Còn lại',
//                   style: TextStyle(fontStyle: FontStyle.italic),
//                 ),
//               ),
//             ),
//           ],
//           rows: <DataRow>[
//             DataRow(
//               color: MaterialStateColor.resolveWith((states) {
//                 return Colors.black12; // Màu mặc định
//               }),
//               cells: const <DataCell>[
//                 DataCell(Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       Text(
//                         'VCB',
//                         style: TextStyle(fontSize: 12),
//                       ),
//                       Text(
//                         '13:33',
//                         style: TextStyle(fontSize: 10),
//                       )
//                     ])),
//                 DataCell(Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       Text(
//                         'Mua',
//                         style: TextStyle(fontSize: 12, color: Colors.green),
//                       ),
//                       Text(
//                         'Thường',
//                         style: TextStyle(fontSize: 10),
//                       )
//                     ])),
//                 DataCell(Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       Text(
//                         '1000',
//                         style: TextStyle(fontSize: 12),
//                       ),
//                       Text(
//                         'MB',
//                         style: TextStyle(fontSize: 10),
//                       )
//                     ])),
//                 DataCell(Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       Text(
//                         '1000',
//                         style: TextStyle(fontSize: 12),
//                       ),
//                       Text(
//                         '98.00',
//                         style: TextStyle(fontSize: 10),
//                       )
//                     ])),
//                 DataCell(Text(
//                   'Đã khớp',
//                   textAlign: TextAlign.end,
//                   style: TextStyle(fontSize: 10, color: Colors.green),
//                 )),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class card extends StatefulWidget {
  const card({super.key});

  @override
  State<card> createState() => _cardState();
}

class _cardState extends State<card> {
  bool selected = false;
  bool visible = false;
  bool selected2 = false;
  bool visible2 = false;
  List<dynamic> items = [];
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      card(),
      SizedBox(
        height: 12,
      ),
      card2()
    ]);
  }

  Widget card() {
    return Container(
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromRGBO(26, 28, 36, 1)),
      padding: EdgeInsets.all(6),
      child: Row(
        verticalDirection: VerticalDirection.down,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 40,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('HCM',
                    style: TextStyle(
                        fontSize: 12, color: Color.fromRGBO(160, 163, 175, 1)),
                    textAlign: TextAlign.start),
                Text('13:33',
                    style: TextStyle(
                        fontSize: 10, color: Color.fromRGBO(160, 163, 175, 1)),
                    textAlign: TextAlign.start)
              ],
            ),
          ),
          SizedBox(
            width: 40,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Bán',
                    style: TextStyle(
                        fontSize: 12, color: Color.fromRGBO(160, 163, 175, 1)),
                    textAlign: TextAlign.start),
                Text('Thường',
                    style: TextStyle(
                        fontSize: 10, color: Color.fromRGBO(160, 163, 175, 1)),
                    textAlign: TextAlign.start)
              ],
            ),
          ),
          SizedBox(
            width: 40,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('2000',
                    style: TextStyle(
                        fontSize: 12, color: Color.fromRGBO(160, 163, 175, 1)),
                    textAlign: TextAlign.start),
                Text('35.1',
                    style: TextStyle(
                        fontSize: 10, color: Color.fromRGBO(160, 163, 175, 1)),
                    textAlign: TextAlign.start)
              ],
            ),
          ),
          SizedBox(
            width: 40,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('-',
                    style: TextStyle(
                        fontSize: 12, color: Color.fromRGBO(160, 163, 175, 1)),
                    textAlign: TextAlign.start),
                Text('-',
                    style: TextStyle(
                        fontSize: 10, color: Color.fromRGBO(160, 163, 175, 1)),
                    textAlign: TextAlign.start)
              ],
            ),
          ),
          SizedBox(
            width: 60,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Đã hủy',
                    style: TextStyle(
                        fontSize: 12, color: Color.fromRGBO(160, 163, 175, 1)),
                    textAlign: TextAlign.end),
              ],
            ),
          )
        ],
      ),
    );
    // SizedBox(height: 8),
  }

  Widget card2() {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected2 = !selected2;
          visible2 = !visible2;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 400),
        width: double.infinity,
        height: selected2 ? 90 : 50,
        curve: Curves.ease,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromRGBO(26, 28, 36, 1)),
        child: Column(
          children: [
            Container(
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(26, 28, 36, 1)),
              padding: EdgeInsets.all(6),
              child: Row(
                verticalDirection: VerticalDirection.down,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 40,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('FPT',
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromRGBO(255, 255, 255, 1)),
                            textAlign: TextAlign.start),
                        Text('13:33',
                            style: TextStyle(
                                fontSize: 10,
                                color: Color.fromRGBO(226, 226, 226, 1)),
                            textAlign: TextAlign.start)
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 40,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Bán',
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromRGBO(240, 74, 71, 1)),
                            textAlign: TextAlign.start),
                        Text('Thường',
                            style: TextStyle(
                                fontSize: 10,
                                color: Color.fromRGBO(226, 226, 226, 1)),
                            textAlign: TextAlign.start)
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 40,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('2000',
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromRGBO(255, 255, 255, 1)),
                            textAlign: TextAlign.start),
                        Text('35.1',
                            style: TextStyle(
                                fontSize: 10,
                                color: Color.fromRGBO(226, 226, 226, 1)),
                            textAlign: TextAlign.start)
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 40,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('1500',
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromRGBO(255, 255, 255, 1)),
                            textAlign: TextAlign.start),
                        Text('95.00',
                            style: TextStyle(
                                fontSize: 10,
                                color: Color.fromRGBO(226, 226, 226, 1)),
                            textAlign: TextAlign.start)
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 60,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('500',
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromRGBO(255, 255, 255, 1)),
                            textAlign: TextAlign.end),
                        Text('Khớp 1 phần',
                            style: TextStyle(
                                fontSize: 10,
                                color: Color.fromRGBO(79, 208, 138, 1)),
                            textAlign: TextAlign.end),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Visibility(
              visible: visible2,
              child: Expanded(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 8),
                    Container(
                      height: 28,
                      child: ElevatedButton(
                        onPressed: () {
                          sualenh(context);
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromRGBO(79, 208, 138, 1),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        child: Text(
                          'Sửa lệnh',
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontSize: 14),
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
                            backgroundColor: Color.fromRGBO(240, 74, 71, 1),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        child: Text(
                          'Hủy lệnh',
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontSize: 14),
                        ),
                      ),
                    )
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
