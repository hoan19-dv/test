import 'package:app/solenh/card2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class lenhdk extends StatefulWidget {
  const lenhdk({super.key});

  @override
  State<lenhdk> createState() => _lenhdkState();
}

class _lenhdkState extends State<lenhdk> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              InkWell(
                onTap: () {
                  modalbottomsheet1(context);
                },
                child: Row(
                  children: [
                    Image.asset('assets/icon/candle-3.png'),
                    SizedBox(width: 4),
                    Text(
                      'Bộ lọc',
                      style: TextStyle(color: Color.fromRGBO(231, 171, 33, 1)),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 36,
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.only(left: 10, top: 8, bottom: 8),
                      prefixIcon: search(),
                      hintText: 'Mã CK',
                      hintStyle: TextStyle(
                          color: Color.fromRGBO(121, 127, 138, 1),
                          fontSize: 10),
                      // IconButton(
                      //   onPressed: () {},
                      //   icon: Icon(Icons.search),
                      //   color: Colors.yellow,
                      // ),
                      border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 12,
              ),
              SizedBox(
                height: 36,
                child: ElevatedButton(
                    onPressed: () {
                      showdialog(context);
                    },
                    style: ElevatedButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(horizontal: 22, vertical: 8),
                        backgroundColor: Color.fromRGBO(240, 74, 71, 1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                    child: Text(
                      'Hủy tất cả',
                      style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontSize: 12,
                      ),
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
                    child: Text('KL ',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 10,
                            color: Color.fromRGBO(160, 163, 175, 1)))),
                SizedBox(
                    width: 40,
                    child: Text('Đặt',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 10,
                            color: Color.fromRGBO(160, 163, 175, 1)))),
                SizedBox(
                    width: 60,
                    child: Text('DK KH',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 10,
                            color: Color.fromRGBO(160, 163, 175, 1)))),
                SizedBox(
                    width: 78,
                    child: Text('TT',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 10,
                            color: Color.fromRGBO(160, 163, 175, 1))))
              ],
            ),
          ),
          SizedBox(height: 8),
          card2()
        ],
      ),
    );
  }

  Future<dynamic> showdialog(BuildContext context) {
    return showCupertinoDialog(
        context: context,
        builder: (BuildContext context) => Container(
              child: CupertinoAlertDialog(
                  title: Center(
                    child: Text(
                      'Hủy tất cả',
                      style: TextStyle(color: Colors.yellow),
                    ),
                  ),
                  content: Text('Bạn có muốn hủy tất cả các lệnh đang chờ'),
                  actions: <CupertinoDialogAction>[
                    CupertinoDialogAction(
                      child: Text(
                        'Đóng',
                        style: TextStyle(color: Colors.yellow),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    CupertinoDialogAction(
                      child: Text('Xác nhận',
                          style: TextStyle(color: Colors.yellow)),
                      onPressed: () {},
                    )
                  ]),
            ));
  }
}

class dropdownButton extends StatefulWidget {
  const dropdownButton({super.key});

  @override
  State<dropdownButton> createState() => _dropdownButtonState();
}

class _dropdownButtonState extends State<dropdownButton> {
  List<String> items = ['Loại lệnh điều kiện', '123456'];
  String? selecteditem = 'Loại lệnh điều kiện';
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromRGBO(49, 54, 69, 1)),
        width: double.infinity,
        height: 48,
        child: DropdownButton<String>(
          dropdownColor: Color.fromRGBO(49, 54, 69, 1),
          padding: EdgeInsets.only(left: 12, right: 7),
          underline: Container(),
          isExpanded: true,
          borderRadius: BorderRadius.circular(10),
          value: selecteditem,
          style: TextStyle(fontSize: 16),
          elevation: 20,
          icon: Icon(
            Icons.arrow_drop_down,
          ),
          onChanged: (String? value) {
            // This is called when the user selects an item.
            setState(() {
              selecteditem = value!;
            });
          },
          items: items.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: TextStyle(color: Color.fromRGBO(226, 226, 226, 1)),
              ),
            );
          }).toList(),
        ));
  }
}

class dropdownButton2 extends StatefulWidget {
  const dropdownButton2({super.key});

  @override
  State<dropdownButton2> createState() => _dropdownButton2State();
}

class _dropdownButton2State extends State<dropdownButton2> {
  List<String> items = ['Trạng thái', '123456'];
  String? selecteditem = 'Trạng thái';
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromRGBO(49, 54, 69, 1)),
        width: double.infinity,
        height: 48,
        child: DropdownButton<String>(
          dropdownColor: Color.fromRGBO(49, 54, 69, 1),
          padding: EdgeInsets.only(left: 12, right: 7),
          underline: Container(),
          isExpanded: true,
          borderRadius: BorderRadius.circular(10),
          value: selecteditem,
          style: TextStyle(fontSize: 16),
          elevation: 20,
          icon: Icon(
            Icons.arrow_drop_down,
          ),
          onChanged: (String? value) {
            // This is called when the user selects an item.
            setState(() {
              selecteditem = value!;
            });
          },
          items: items.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: TextStyle(color: Color.fromRGBO(226, 226, 226, 1)),
              ),
            );
          }).toList(),
        ));
  }
}

Future<dynamic> modalbottomsheet1(BuildContext context) {
  return showModalBottomSheet(
      backgroundColor: Color.fromRGBO(41, 45, 56, 1),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15), topRight: Radius.circular(15))),
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: MediaQuery.of(context).viewInsets,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(left: 16, right: 16, bottom: 24, top: 6),
            child: Column(
              children: [
                Container(
                  child: Text(
                    'Bộ lọc',
                    style: TextStyle(
                        fontSize: 14, color: Color.fromRGBO(255, 255, 255, 1)),
                  ),
                ),
                Divider(
                  color: Color.fromRGBO(89, 94, 114, 1),
                  thickness: 1,
                ),
                SizedBox(
                  height: 16,
                ),
                dropdownButton(),
                SizedBox(
                  height: 12,
                ),
                dropdownButton2(),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Container(
                        height: 34,
                        width: double.infinity,
                        child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                                side: BorderSide(
                                    color: Color.fromRGBO(231, 171, 33, 1)),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                foregroundColor:
                                    Color.fromRGBO(231, 171, 33, 1)),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              'Đóng',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromRGBO(231, 171, 33, 1)),
                            )),
                      ),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Expanded(
                      child: Container(
                        height: 34,
                        width: double.infinity,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                backgroundColor:
                                    Color.fromRGBO(231, 171, 33, 1),
                                foregroundColor: Color.fromRGBO(19, 23, 33, 1)),
                            onPressed: () {},
                            child: Text(
                              'Áp dụng',
                              style: TextStyle(fontSize: 14),
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
}

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
