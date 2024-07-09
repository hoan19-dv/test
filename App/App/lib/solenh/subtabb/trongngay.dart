import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class day extends StatefulWidget {
  const day({super.key});

  @override
  State<day> createState() => _dayState();
}

class _dayState extends State<day> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 16),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          decoration: BoxDecoration(
              color: Color.fromRGBO(49, 54, 69, 1),
              borderRadius: BorderRadius.circular(5)),
          alignment: Alignment.center,
          width: 100,
          height: 26,
          child: Text(
            '25/9/2023',
            style: TextStyle(
                fontSize: 10, color: Color.fromRGBO(255, 255, 255, 1)),
          ),
        ),
        SizedBox(height: 8),
        card()
      ],
    );
  }
}

Container card() {
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
          width: 76,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('HCM',
                  style: TextStyle(
                      fontSize: 12, color: Color.fromRGBO(255, 255, 255, 1)),
                  textAlign: TextAlign.start),
              Text('Khớp',
                  style: TextStyle(
                      fontSize: 10, color: Color.fromRGBO(79, 208, 138, 1)),
                  textAlign: TextAlign.start)
            ],
          ),
        ),
        SizedBox(
          width: 76,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('34.3',
                  style: TextStyle(
                      fontSize: 12, color: Color.fromRGBO(255, 255, 255, 1)),
                  textAlign: TextAlign.start),
              Text('Giá',
                  style: TextStyle(
                      fontSize: 10, color: Color.fromRGBO(121, 127, 138, 1)),
                  textAlign: TextAlign.start)
            ],
          ),
        ),
        SizedBox(
          width: 76,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('1.000',
                  style: TextStyle(
                      fontSize: 12, color: Color.fromRGBO(255, 255, 255, 1)),
                  textAlign: TextAlign.start),
              Text('Khối lượng',
                  style: TextStyle(
                      fontSize: 10, color: Color.fromRGBO(121, 127, 138, 1)),
                  textAlign: TextAlign.start)
            ],
          ),
        ),
        SizedBox(
          width: 76,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('MUA',
                  style: TextStyle(
                      fontSize: 12, color: Color.fromRGBO(79, 208, 138, 1)),
                  textAlign: TextAlign.start),
            ],
          ),
        ),
      ],
    ),
  );
  // SizedBox(height: 8),
}
