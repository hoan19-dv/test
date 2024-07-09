import 'package:app/solenh/lenhdieukien.dart';
import 'package:app/solenh/lichsudatlenh.dart';
import 'package:app/solenh/solenhtrongngay.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class tabbar extends StatefulWidget {
  const tabbar({super.key});

  @override
  State<tabbar> createState() => _tabbarState();
}

class _tabbarState extends State<tabbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              'Sổ lệnh cơ sở',
              style: TextStyle(
                  fontSize: 18, color: Color.fromRGBO(255, 255, 255, 1)),
            ),
            actions: [dropdownButton()],
          ),
          body: Padding(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Column(
              children: [
                Container(
                  height: 36,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(8)),
                  child: TabBar(
                      labelPadding: EdgeInsets.symmetric(horizontal: 0),
                      // physics: ClampingScrollPhysics(),
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicator: BoxDecoration(
                          color: Color.fromRGBO(41, 45, 56, 1),
                          borderRadius: BorderRadius.circular(8)),
                      labelColor: Color.fromRGBO(252, 252, 252, 1),
                      unselectedLabelColor: Color.fromRGBO(160, 163, 175, 1),
                      dividerHeight: 0,
                      tabs: <Widget>[
                        Tab(text: 'Lệnh trong ngày'),
                        Tab(text: 'Lệnh điều kiện'),
                        Tab(text: 'Lịch sử đặt lệnh'),
                      ]),
                ),
                Expanded(
                  child: TabBarView(
                    children: <Widget>[solenh(), lenhdk(), lslenh()],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}

class dropdownButton extends StatefulWidget {
  const dropdownButton({super.key});

  @override
  State<dropdownButton> createState() => _dropdownButtonState();
}

class _dropdownButtonState extends State<dropdownButton> {
  List<String> items = ['8130411', '123456'];
  String? selecteditem = '8130411';
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3),
            color: Color.fromRGBO(49, 54, 69, 1)),
        width: 84,
        height: 24,
        child: DropdownButton<String>(
          dropdownColor: Color.fromRGBO(49, 54, 69, 1),
          focusColor: Colors.grey,
          padding: EdgeInsets.only(left: 6, right: 6),
          underline: Container(),
          isExpanded: true,
          borderRadius: BorderRadius.circular(3),
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
