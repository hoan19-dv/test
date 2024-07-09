import 'package:app/solenh/subtabb/trongngay.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class subtab extends StatefulWidget {
  const subtab({super.key});

  @override
  State<subtab> createState() => _subtabState();
}

class _subtabState extends State<subtab> {
  int selected = 1;
  PageController _pageController = PageController();
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          SizedBox(
            height: 18,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                      padding: EdgeInsets.only(right: 6),
                      child: Select('Trong ngày', 1)),
                ),
                Expanded(
                  child: Container(
                      padding: EdgeInsets.only(right: 6),
                      child: Select('Trong tuần', 2)),
                ),
                Expanded(
                  child: Container(
                      padding: EdgeInsets.only(right: 6),
                      child: Select('Trong tháng', 3)),
                ),
              ],
            ),
          ),
          Expanded(
              child: PageView.builder(
                  itemCount: 1,
                  controller: _pageController,
                  itemBuilder: (context, index) {
                    index = selected;
                    if (index == 1) {
                      return day();
                    }
                    if (index == 2) {
                      return Text('data2');
                    }
                    if (index == 3) {
                      return Text('data3');
                    }
                    return null;
                  })),
        ],
      ),
    );
  }

  Widget Select(String text, int select) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: (selected == select)
              ? Color.fromRGBO(41, 45, 56, 1)
              : Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          )),
      onPressed: () {
        setState(() {
          selected = select;
        });
      },
      child: Padding(
          padding: const EdgeInsets.all(0),
          child: Text(
            text,
            style: TextStyle(
                fontSize: 10,
                color: (selected == select)
                    ? Color.fromRGBO(255, 255, 255, 1)
                    : Color.fromRGBO(160, 163, 175, 1)),
          )),
    );
  }
}
