import 'package:app/solenh/subtabb/subtab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class lslenh extends StatefulWidget {
  const lslenh({super.key});

  @override
  State<lslenh> createState() => _lslenhState();
}

class _lslenhState extends State<lslenh> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 16,
          ),
          Container(
            height: 36,
            child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromRGBO(41, 45, 56, 1),
                  contentPadding: EdgeInsets.only(left: 10, top: 8, bottom: 8),
                  prefixIcon: search(),
                  hintText: 'Mã CK',
                  hintStyle: TextStyle(color: Color.fromRGBO(121, 127, 138, 1)),
                  // IconButton(
                  //   onPressed: () {},
                  //   icon: Icon(Icons.search),
                  //   color: Colors.yellow,
                  // ),
                  border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromRGBO(41, 45, 56, 1)),
                      borderRadius: BorderRadius.circular(8))),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(41, 45, 56, 1),
                        borderRadius: BorderRadius.circular(4)),
                    width: double.infinity,
                    height: 32,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('11/11/2024',
                              style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1))),
                          Icon(
                            Icons.calendar_month,
                            color: Color.fromRGBO(160, 163, 175, 1),
                            size: 16,
                          )
                        ]),
                  ),
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(41, 45, 56, 1),
                        borderRadius: BorderRadius.circular(4)),
                    width: double.infinity,
                    height: 32,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('11/11/2024',
                              style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1))),
                          Icon(
                            Icons.calendar_month,
                            color: Color.fromRGBO(160, 163, 175, 1),
                            size: 16,
                          )
                        ]),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          subtab(), SizedBox(height: 16),
          // Container(
          //   padding: EdgeInsets.only(left: 6, right: 6),
          //   child: const Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       Text('Mã CK', style: TextStyle(fontSize: 10)),
          //       Text('M/B', style: TextStyle(fontSize: 10)),
          //       Text('Đăt ', style: TextStyle(fontSize: 10)),
          //       Text('Khớp', style: TextStyle(fontSize: 10)),
          //       Text('Còn lại', style: TextStyle(fontSize: 10))
          //     ],
          //   ),
          // ),
        ],
      ),
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
            borderRadius: BorderRadius.circular(10), color: Colors.black),
        width: double.infinity,
        height: 48,
        child: DropdownButton<String>(
          padding: EdgeInsets.only(left: 12, right: 7),
          underline: Container(),
          isExpanded: true,
          borderRadius: BorderRadius.circular(10),
          value: selecteditem,
          style: TextStyle(fontSize: 12),
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
                style: TextStyle(color: Colors.white),
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
            borderRadius: BorderRadius.circular(10), color: Colors.black),
        width: double.infinity,
        height: 48,
        child: DropdownButton<String>(
          padding: EdgeInsets.only(left: 12, right: 7),
          underline: Container(),
          isExpanded: true,
          borderRadius: BorderRadius.circular(10),
          value: selecteditem,
          style: TextStyle(fontSize: 12),
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
                style: TextStyle(color: Colors.white),
              ),
            );
          }).toList(),
        ));
  }
}

Future<dynamic> modalbottomsheet1(BuildContext context) {
  return showModalBottomSheet(
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
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                Divider(
                  color: Colors.grey,
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
                    Container(
                      width: 160,
                      child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                2,
                              )),
                              foregroundColor: Colors.yellow),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('Đóng')),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Container(
                      width: 160,
                      child: ElevatedButton(
                          style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                2,
                              )),
                              backgroundColor: Colors.yellow,
                              foregroundColor: Colors.black),
                          onPressed: () {},
                          child: Text('Áp dụng')),
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
      color: Color.fromRGBO(231, 171, 33, 1),
    ),
    onTap: () {},
  );
}
