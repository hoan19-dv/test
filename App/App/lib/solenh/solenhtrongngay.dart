import 'dart:math';
import 'dart:ui';

import 'package:app/login.dart';
import 'package:app/solenh/card1.dart';
import 'package:app/solenh/data/getallcode.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:dio/dio.dart';

class solenh extends StatefulWidget {
  const solenh({super.key});

  @override
  State<solenh> createState() => _solenhState();
}

class _solenhState extends State<solenh> {
  String? Custodycd;
  String? Acctno;
  String? status;
  String? allowCancel;
  String? symbol;
  String? OrderType;
  String? from;
  String? to;
  List<String> items1 = ['Tất cả', 'Mua', 'Bán'];
  List filterdata = [];
  String? selectedValue1;

  List<String> items = [
    'Tất cả',
    'Chờ gửi lên sàn',
    'Đã gửi lên sàn',
    'Bị từ chối',
    'Khớp',
    'Khớp một phần',
    'Đã hủy',
    'Giải tỏa vì hết phiên',
    'Lệnh hết hạn'
  ];

  List<String> selectedItems = [];
  Future<void> filterData() async {
    try {
      final dio = Dio();

      final response = await dio.get(
          'http://192.168.2.55:9090/Order/GetListOrderInDay',
          queryParameters: {
            'Custodycd': Custodycd,
            'Acctno': Acctno,
            'status': selectedItems.join(','),
            'allowCancel': allowCancel,
            'symbol': symbol,
            'OrderType': selectedValue1,
            'from': from,
            'to': to
          });

      if (response.statusCode == 200) {
        // if (status != null && status!.isNotEmpty) {
        //   filterdata.add('status=${selectedItems.join(',')}');
        // }
        // if (OrderType != null && OrderType!.isNotEmpty) {
        //   filterdata.add('OrderType=$selectedValue1');
        // }
        return filterdata = response.data;
      } else {}
    } catch (Error) {
      print('Error filtering data: $Error');
    }
  }

  var z;

  var value;
  String Content1 = "";
  String Content2 = "";
  String Content3 = "";
  String Content4 = "";
  String Content5 = "";
  String Content6 = "";
  String Content7 = "";
  String Content8 = "";
  String Content9 = "";
  bool selected2 = false;
  bool visible2 = false;

  @override
  void initState() {
    super.initState();
    // fetchdata();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future:
            GetAllCode('API', 'ODORSTATUS', securestorage().getToken('token')),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else {
            List<dynamic> data = snapshot.data!;

            for (var i in data) {
              switch (i['cdval']) {
                case '8':
                  Content1 = i['vN_CDCONTENT'];
                case '2':
                  Content2 = i['vN_CDCONTENT'];
                case '0,6':
                  Content3 = i['vN_CDCONTENT'];
                case '4':
                  Content4 = i['vN_CDCONTENT'];
                case '13':
                  Content5 = i['vN_CDCONTENT'];
                case '3':
                  Content6 = i['vN_CDCONTENT'];
                case '12':
                  Content7 = i['vN_CDCONTENT'];
                case '5':
                  Content8 = i['vN_CDCONTENT'];
              }
            }
            return Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      InkWell(
                        child: Row(
                          children: [
                            Image.asset('assets/icon/candle-3.png'),
                            SizedBox(width: 4),
                            Text(
                              'Bộ lọc',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromRGBO(231, 171, 33, 1)),
                            ),
                          ],
                        ),
                        onTap: () {
                          showModalBottomSheet(
                              backgroundColor: Color.fromRGBO(41, 45, 56, 1),
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15))),
                              isScrollControlled: true,
                              context: context,
                              builder: (BuildContext context) {
                                // for (var i in data) {
                                //   switch (i['cdval']) {
                                //     case '8':
                                //       Content1 = i['vN_CDCONTENT'];
                                //     case '2':
                                //       Content2 = i['vN_CDCONTENT'];
                                //     case '0,6':
                                //       Content3 = i['vN_CDCONTENT'];
                                //     case '4':
                                //       Content4 = i['vN_CDCONTENT'];
                                //     case '13':
                                //       Content5 = i['vN_CDCONTENT'];
                                //     case '3':
                                //       Content6 = i['vN_CDCONTENT'];
                                //     case '12':
                                //       Content7 = i['vN_CDCONTENT'];
                                //     case '5':
                                //       Content8 = i['vN_CDCONTENT'];
                                //   }
                                // }

                                return Padding(
                                  padding: MediaQuery.of(context).viewInsets,
                                  child: SingleChildScrollView(
                                    padding: EdgeInsets.only(
                                        left: 16,
                                        right: 16,
                                        bottom: 24,
                                        top: 6),
                                    child: Column(
                                      children: [
                                        Container(
                                          child: Text(
                                            'Bộ lọc',
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 1)),
                                          ),
                                        ),
                                        Divider(
                                          color: Color.fromRGBO(89, 94, 114, 1),
                                          thickness: 1,
                                        ),
                                        SizedBox(
                                          height: 16,
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(2),
                                              color: Color.fromRGBO(
                                                  49, 54, 69, 1)),
                                          width: double.infinity,
                                          height: 30,
                                          child: DropdownButtonHideUnderline(
                                            child: DropdownButton2(
                                              value: value,
                                              isExpanded: true,
                                              hint: Text(
                                                'Trạng thái',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color.fromRGBO(
                                                      226, 226, 226, 1),
                                                ),
                                              ),
                                              items: [
                                                'Tất cả',
                                                Content1.split('|').first,
                                                Content2.split('|').first,
                                                Content3.split('|').first,
                                                Content4.split('|').first,
                                                Content5.split('|').first,
                                                Content6.split('|').first,
                                                Content7.split('|').first,
                                                Content8.split('|').first,
                                              ].map((item) {
                                                for (z in data) {}
                                                return DropdownMenuItem(
                                                  value: z['cdval'],
                                                  //disable default onTap to avoid closing menu when selecting an item
                                                  enabled: false,
                                                  child: StatefulBuilder(
                                                    builder: (context,
                                                        menuSetState) {
                                                      final isSelected =
                                                          selectedItems
                                                              .contains(item);
                                                      return InkWell(
                                                        onTap: () {
                                                          isSelected
                                                              ? selectedItems
                                                                  .remove(item)
                                                              : selectedItems
                                                                  .add(item);
                                                          //This rebuilds the StatefulWidget to update the button's text
                                                          setState(() {});

                                                          //This rebuilds the dropdownMenu Widget to update the check mark
                                                          menuSetState(() {});
                                                        },
                                                        child: Container(
                                                          height:
                                                              double.infinity,
                                                          padding:
                                                              const EdgeInsets
                                                                  .symmetric(
                                                                  horizontal:
                                                                      16.0),
                                                          child: Row(
                                                            children: [
                                                              if (isSelected)
                                                                const Icon(Icons
                                                                    .check_box_outlined)
                                                              else
                                                                const Icon(Icons
                                                                    .check_box_outline_blank),
                                                              const SizedBox(
                                                                  width: 16),
                                                              Expanded(
                                                                child: Text(
                                                                  item,
                                                                  style:
                                                                      const TextStyle(
                                                                    fontSize:
                                                                        14,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                );
                                              }).toList(),
                                              //Use last selected item as the current value so if we've limited menu height, it scroll to last item.
                                              // value:
                                              //     selectedItems.isEmpty ? null : selectedItems.last,
                                              // onChanged: (value) {
                                              //   setState(() {});
                                              // },
                                              selectedItemBuilder: (context) {
                                                return [
                                                  'Tất cả',
                                                  Content1.split('|').first,
                                                  Content2.split('|').first,
                                                  Content3.split('|').first,
                                                  Content4.split('|').first,
                                                  Content5.split('|').first,
                                                  Content6.split('|').first,
                                                  Content7.split('|').first,
                                                  Content8.split('|').first,
                                                ].map(
                                                  (item) {
                                                    return Container(
                                                      alignment:
                                                          AlignmentDirectional
                                                              .center,
                                                      child: Text(
                                                        selectedItems
                                                            .join(', '),
                                                        style: const TextStyle(
                                                          fontSize: 14,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                        ),
                                                        maxLines: 1,
                                                      ),
                                                    );
                                                  },
                                                ).toList();
                                              },
                                              buttonStyleData:
                                                  const ButtonStyleData(
                                                padding: EdgeInsets.only(
                                                    left: 16, right: 8),
                                                height: 40,
                                                width: 140,
                                              ),
                                              menuItemStyleData:
                                                  const MenuItemStyleData(
                                                height: 40,
                                                padding: EdgeInsets.zero,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 12,
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(2),
                                              color: Color.fromRGBO(
                                                  49, 54, 69, 1)),
                                          width: double.infinity,
                                          height: 30,
                                          child: DropdownButtonHideUnderline(
                                            child: DropdownButton2<String>(
                                              isExpanded: true,
                                              hint: Text(
                                                items.first,
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color.fromRGBO(
                                                      255, 255, 255, 1),
                                                ),
                                              ),
                                              items: items1
                                                  .map((item) =>
                                                      DropdownMenuItem<String>(
                                                        value: item,
                                                        child: Text(
                                                          item,
                                                          style:
                                                              const TextStyle(
                                                            fontSize: 14,
                                                          ),
                                                        ),
                                                      ))
                                                  .toList(),
                                              value: selectedValue1,
                                              onChanged: (String? value) {
                                                setState(() {
                                                  selectedValue1 = value;
                                                });
                                              },
                                              buttonStyleData:
                                                  const ButtonStyleData(
                                                padding: EdgeInsets.only(
                                                    left: 16, right: 8),
                                                height: 40,
                                                width: 140,
                                              ),
                                              menuItemStyleData:
                                                  const MenuItemStyleData(
                                                height: 40,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 16,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            2)),
                                                height: 28,
                                                width: double.infinity,
                                                child: OutlinedButton(
                                                    style: OutlinedButton
                                                        .styleFrom(
                                                      side: BorderSide(
                                                          color: Color.fromRGBO(
                                                              231, 171, 33, 1)),
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          2)),
                                                    ),
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                    },
                                                    child: Text(
                                                      'Đóng',
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color: Color.fromRGBO(
                                                              231, 171, 33, 1)),
                                                    )),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 24,
                                            ),
                                            Expanded(
                                              child: Container(
                                                height: 28,
                                                width: double.infinity,
                                                child: ElevatedButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                            shape:
                                                                RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .circular(
                                                              2,
                                                            )),
                                                            backgroundColor:
                                                                Color.fromRGBO(
                                                                    231,
                                                                    171,
                                                                    33,
                                                                    1),
                                                            foregroundColor:
                                                                Color.fromRGBO(
                                                                    19,
                                                                    23,
                                                                    33,
                                                                    1)),
                                                    onPressed: () {
                                                      filterData();
                                                      Navigator.pop(context);
                                                    },
                                                    child: Text(
                                                      'Áp dụng',
                                                      style: TextStyle(
                                                          fontSize: 12),
                                                    )),
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              });
                        },
                      )
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 30,
                          child: TextField(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(
                                  left: 10, top: 4, bottom: 4, right: 10),
                              prefixIcon: search(),
                              hintText: 'Mã CK',
                              hintStyle: TextStyle(
                                  fontSize: 10,
                                  color: Color.fromRGBO(121, 127, 138, 1)),
                              // IconButton(
                              //   onPressed: () {},
                              //   icon: Icon(Icons.search),
                              //   color: Colors.yellow,
                              // ),
                              border: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(2))),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      SizedBox(
                        height: 28,
                        child: ElevatedButton(
                            onPressed: () {
                              showdialog(context);
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color.fromRGBO(240, 74, 71, 1),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(2))),
                            child: Text(
                              'Hủy tất cả',
                              style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 6, right: 6),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                            width: 40,
                            child: Text('Mã CK',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Color.fromRGBO(160, 163, 175, 1)))),
                        SizedBox(
                            width: 40,
                            child: Text('M/B',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Color.fromRGBO(160, 163, 175, 1)))),
                        SizedBox(
                            width: 40,
                            child: Text('Đăt ',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Color.fromRGBO(160, 163, 175, 1)))),
                        SizedBox(
                            width: 40,
                            child: Text('Khớp',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Color.fromRGBO(160, 163, 175, 1)))),
                        SizedBox(
                            width: 60,
                            child: Text('Còn lại',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Color.fromRGBO(160, 163, 175, 1))))
                      ],
                    ),
                  ),
                  SizedBox(height: 8),
                  Container(
                    height: 400,
                    child: ListView.builder(
                        itemCount: 1,
                        itemBuilder: (context, index) {
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          width: 40,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('FPT',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: Color.fromRGBO(
                                                          255, 255, 255, 1)),
                                                  textAlign: TextAlign.start),
                                              Text('13:33',
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      color: Color.fromRGBO(
                                                          226, 226, 226, 1)),
                                                  textAlign: TextAlign.start)
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 40,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('Bán',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: Color.fromRGBO(
                                                          240, 74, 71, 1)),
                                                  textAlign: TextAlign.start),
                                              Text('Thường',
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      color: Color.fromRGBO(
                                                          226, 226, 226, 1)),
                                                  textAlign: TextAlign.start)
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 40,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('2000',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: Color.fromRGBO(
                                                          255, 255, 255, 1)),
                                                  textAlign: TextAlign.start),
                                              Text('35.1',
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      color: Color.fromRGBO(
                                                          226, 226, 226, 1)),
                                                  textAlign: TextAlign.start)
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 40,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('1500',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: Color.fromRGBO(
                                                          255, 255, 255, 1)),
                                                  textAlign: TextAlign.start),
                                              Text('95.00',
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      color: Color.fromRGBO(
                                                          226, 226, 226, 1)),
                                                  textAlign: TextAlign.start)
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 60,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Text('500',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: Color.fromRGBO(
                                                          255, 255, 255, 1)),
                                                  textAlign: TextAlign.end),
                                              Text('Khớp 1 phần',
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      color: Color.fromRGBO(
                                                          79, 208, 138, 1)),
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(height: 8),
                                          Container(
                                            height: 28,
                                            child: ElevatedButton(
                                              onPressed: () {
                                                sualenh(context);
                                              },
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      Color.fromRGBO(
                                                          79, 208, 138, 1),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10))),
                                              child: Text(
                                                'Sửa lệnh',
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        255, 255, 255, 1),
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
                                                  backgroundColor:
                                                      Color.fromRGBO(
                                                          240, 74, 71, 1),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10))),
                                              child: Text(
                                                'Hủy lệnh',
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        255, 255, 255, 1),
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
                        }),
                  )
                ],
              ),
            );
          }
        });
  }
}

// class Modalbottomsheet extends StatefulWidget {
//   const Modalbottomsheet({super.key});

//   @override
//   State<Modalbottomsheet> createState() => _ModalbottomsheetState();
// }

// class _ModalbottomsheetState extends State<Modalbottomsheet> {
//   String Content1 = "";
//   String Content2 = "";
//   String Content3 = "";
//   String Content4 = "";
//   String Content5 = "";
//   String Content6 = "";
//   String Content7 = "";
//   String Content8 = "";
//   String Content9 = "";

//   String? Custodycd;
//   String? Acctno;
//   String? status;
//   String? allowCancel;
//   String? symbol;
//   String? OrderType;
//   String? from;
//   String? to;
//   List<String> items1 = ['Tất cả', 'Mua', 'Bán'];
//   List filterdata = [];
//   String? selectedValue1;

//   List<String> items = [
//     'Tất cả',
//     'Chờ gửi lên sàn',
//     'Đã gửi lên sàn',
//     'Bị từ chối',
//     'Khớp',
//     'Khớp một phần',
//     'Đã hủy',
//     'Giải tỏa vì hết phiên',
//     'Lệnh hết hạn'
//   ];

//   List<String> selectedItems = [];
//   Future<void> filterData() async {
//     try {
//       final dio = Dio();

//       final response = await dio.get(
//           'http://192.168.2.55:9090/Order/GetListOrderInDay',
//           queryParameters: {
//             'Custodycd': Custodycd,
//             'Acctno': Acctno,
//             'status': selectedItems.join(','),
//             'allowCancel': allowCancel,
//             'symbol': symbol,
//             'OrderType': selectedValue1,
//             'from': from,
//             'to': to
//           });

//       if (response.statusCode == 200) {
//         // if (status != null && status!.isNotEmpty) {
//         //   filterdata.add('status=${selectedItems.join(',')}');
//         // }
//         // if (OrderType != null && OrderType!.isNotEmpty) {
//         //   filterdata.add('OrderType=$selectedValue1');
//         // }
//         return filterdata = response.data;
//       } else {}
//     } catch (Error) {
//       print('Error filtering data: $Error');
//     }
//   }

//   var z;

//   var value;
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     // GetAllCode('API', 'ODORSTATUS', securestorage().getToken('token'));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//         future:
//             GetAllCode('API', 'ODORSTATUS', securestorage().getToken('token')),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return const Center(child: CircularProgressIndicator());
//           } else if (snapshot.hasError) {
//             return Text('Error: ${snapshot.error}');
//           } else {
//             List<dynamic> data = snapshot.data!;

//             for (var i in data) {
//               switch (i['cdval']) {
//                 case '8':
//                   Content1 = i['vN_CDCONTENT'];
//                 case '2':
//                   Content2 = i['vN_CDCONTENT'];
//                 case '0,6':
//                   Content3 = i['vN_CDCONTENT'];
//                 case '4':
//                   Content4 = i['vN_CDCONTENT'];
//                 case '13':
//                   Content5 = i['vN_CDCONTENT'];
//                 case '3':
//                   Content6 = i['vN_CDCONTENT'];
//                 case '12':
//                   Content7 = i['vN_CDCONTENT'];
//                 case '5':
//                   Content8 = i['vN_CDCONTENT'];
//               }
//             }
//             return Padding(
//               padding: MediaQuery.of(context).viewInsets,
//               child: SingleChildScrollView(
//                 padding:
//                     EdgeInsets.only(left: 16, right: 16, bottom: 24, top: 6),
//                 child: Column(
//                   children: [
//                     Container(
//                       child: Text(
//                         'Bộ lọc',
//                         style: TextStyle(
//                             fontSize: 14,
//                             color: Color.fromRGBO(255, 255, 255, 1)),
//                       ),
//                     ),
//                     Divider(
//                       color: Color.fromRGBO(89, 94, 114, 1),
//                       thickness: 1,
//                     ),
//                     SizedBox(
//                       height: 16,
//                     ),
//                     Container(
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(2),
//                           color: Color.fromRGBO(49, 54, 69, 1)),
//                       width: double.infinity,
//                       height: 30,
//                       child: DropdownButtonHideUnderline(
//                         child: DropdownButton2(
//                           value: value,
//                           isExpanded: true,
//                           hint: Text(
//                             'Trạng thái',
//                             style: TextStyle(
//                               fontSize: 14,
//                               color: Color.fromRGBO(226, 226, 226, 1),
//                             ),
//                           ),
//                           items: [
//                             'Tất cả',
//                             Content1.split('|').first,
//                             Content2.split('|').first,
//                             Content3.split('|').first,
//                             Content4.split('|').first,
//                             Content5.split('|').first,
//                             Content6.split('|').first,
//                             Content7.split('|').first,
//                             Content8.split('|').first,
//                           ].map((item) {
//                             for (z in data) {}
//                             return DropdownMenuItem(
//                               value: z['cdval'],
//                               //disable default onTap to avoid closing menu when selecting an item
//                               enabled: false,
//                               child: StatefulBuilder(
//                                 builder: (context, menuSetState) {
//                                   final isSelected = selectedItems.contains(e);
//                                   return InkWell(
//                                     onTap: () {
//                                       isSelected
//                                           ? selectedItems.remove(item)
//                                           : selectedItems.add(item);
//                                       //This rebuilds the StatefulWidget to update the button's text
//                                       setState(() {});

//                                       //This rebuilds the dropdownMenu Widget to update the check mark
//                                       menuSetState(() {});
//                                     },
//                                     child: Container(
//                                       height: double.infinity,
//                                       padding: const EdgeInsets.symmetric(
//                                           horizontal: 16.0),
//                                       child: Row(
//                                         children: [
//                                           if (isSelected)
//                                             const Icon(Icons.check_box_outlined)
//                                           else
//                                             const Icon(
//                                                 Icons.check_box_outline_blank),
//                                           const SizedBox(width: 16),
//                                           Expanded(
//                                             child: Text(
//                                               item,
//                                               style: const TextStyle(
//                                                 fontSize: 14,
//                                               ),
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   );
//                                 },
//                               ),
//                             );
//                           }).toList(),
//                           //Use last selected item as the current value so if we've limited menu height, it scroll to last item.
//                           // value:
//                           //     selectedItems.isEmpty ? null : selectedItems.last,
//                           // onChanged: (value) {
//                           //   setState(() {});
//                           // },
//                           selectedItemBuilder: (context) {
//                             return [
//                               'Tất cả',
//                               Content1.split('|').first,
//                               Content2.split('|').first,
//                               Content3.split('|').first,
//                               Content4.split('|').first,
//                               Content5.split('|').first,
//                               Content6.split('|').first,
//                               Content7.split('|').first,
//                               Content8.split('|').first,
//                             ].map(
//                               (item) {
//                                 return Container(
//                                   alignment: AlignmentDirectional.center,
//                                   child: Text(
//                                     selectedItems.join(', '),
//                                     style: const TextStyle(
//                                       fontSize: 14,
//                                       overflow: TextOverflow.ellipsis,
//                                     ),
//                                     maxLines: 1,
//                                   ),
//                                 );
//                               },
//                             ).toList();
//                           },
//                           buttonStyleData: const ButtonStyleData(
//                             padding: EdgeInsets.only(left: 16, right: 8),
//                             height: 40,
//                             width: 140,
//                           ),
//                           menuItemStyleData: const MenuItemStyleData(
//                             height: 40,
//                             padding: EdgeInsets.zero,
//                           ),
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 12,
//                     ),
//                     Container(
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(2),
//                           color: Color.fromRGBO(49, 54, 69, 1)),
//                       width: double.infinity,
//                       height: 30,
//                       child: DropdownButtonHideUnderline(
//                         child: DropdownButton2<String>(
//                           isExpanded: true,
//                           hint: Text(
//                             items.first,
//                             style: TextStyle(
//                               fontSize: 14,
//                               color: Color.fromRGBO(255, 255, 255, 1),
//                             ),
//                           ),
//                           items: items1
//                               .map((item) => DropdownMenuItem<String>(
//                                     value: item,
//                                     child: Text(
//                                       item,
//                                       style: const TextStyle(
//                                         fontSize: 14,
//                                       ),
//                                     ),
//                                   ))
//                               .toList(),
//                           value: selectedValue1,
//                           onChanged: (String? value) {
//                             setState(() {
//                               selectedValue1 = value;
//                             });
//                           },
//                           buttonStyleData: const ButtonStyleData(
//                             padding: EdgeInsets.only(left: 16, right: 8),
//                             height: 40,
//                             width: 140,
//                           ),
//                           menuItemStyleData: const MenuItemStyleData(
//                             height: 40,
//                           ),
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 16,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       mainAxisSize: MainAxisSize.max,
//                       children: [
//                         Expanded(
//                           child: Container(
//                             decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(2)),
//                             height: 28,
//                             width: double.infinity,
//                             child: OutlinedButton(
//                                 style: OutlinedButton.styleFrom(
//                                   side: BorderSide(
//                                       color: Color.fromRGBO(231, 171, 33, 1)),
//                                   shape: RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.circular(2)),
//                                 ),
//                                 onPressed: () {
//                                   Navigator.pop(context);
//                                 },
//                                 child: Text(
//                                   'Đóng',
//                                   style: TextStyle(
//                                       fontSize: 12,
//                                       color: Color.fromRGBO(231, 171, 33, 1)),
//                                 )),
//                           ),
//                         ),
//                         SizedBox(
//                           width: 24,
//                         ),
//                         Expanded(
//                           child: Container(
//                             height: 28,
//                             width: double.infinity,
//                             child: ElevatedButton(
//                                 style: ElevatedButton.styleFrom(
//                                     shape: RoundedRectangleBorder(
//                                         borderRadius: BorderRadius.circular(
//                                       2,
//                                     )),
//                                     backgroundColor:
//                                         Color.fromRGBO(231, 171, 33, 1),
//                                     foregroundColor:
//                                         Color.fromRGBO(19, 23, 33, 1)),
//                                 onPressed: () {
//                                   filterData();
//                                   Navigator.pop(context);
//                                 },
//                                 child: Text(
//                                   'Áp dụng',
//                                   style: TextStyle(fontSize: 12),
//                                 )),
//                           ),
//                         )
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             );
//           }
//         });
//   }
// }

Future<dynamic> showdialog(BuildContext context) {
  return showCupertinoDialog(
      barrierDismissible: true,
      context: context,
      builder: (BuildContext context) => Container(
            child: CupertinoAlertDialog(
                title: Center(
                  child: Text(
                    'Hủy tất cả',
                    style: TextStyle(
                        color: Color.fromRGBO(231, 171, 33, 1), fontSize: 16),
                  ),
                ),
                content: Text(
                  'Bạn có muốn hủy tất cả các lệnh đang chờ',
                  style: TextStyle(
                      color: Color.fromRGBO(226, 226, 226, 1), fontSize: 14),
                ),
                actions: <CupertinoDialogAction>[
                  CupertinoDialogAction(
                    child: Text(
                      'Đóng',
                      style: TextStyle(
                          color: Color.fromRGBO(226, 226, 226, 1),
                          fontSize: 16),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  CupertinoDialogAction(
                    child: Text('Xác nhận',
                        style: TextStyle(
                            color: Color.fromRGBO(226, 226, 226, 1),
                            fontSize: 16)),
                    onPressed: () {},
                  )
                ]),
          ));
}

// void filterData(String filterValue) {
//   setState(() {
//     items = items.where((item) => item.contains(filterValue)).toList();
//   });
// }

Widget search() {
  return InkWell(
    child: Icon(
      Icons.search,
      size: 20,
      color: Colors.yellow,
    ),
    onTap: () {},
  );
}
