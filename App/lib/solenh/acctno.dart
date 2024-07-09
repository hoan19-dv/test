import 'package:app/login.dart';
import 'package:app/solenh/data/getinforcustomer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class acctno extends StatefulWidget {
  const acctno({super.key});

  @override
  State<acctno> createState() => _acctnoState();
}

class _acctnoState extends State<acctno> {
  @override
  void initState() {
    super.initState();
    final acctnoValue =
        FlutterSecureStorage().read(key: 'acctno').then((value) => value);
    selecteditem = acctnoValue.toString();
    // print(FlutterSecureStorage().read(key: 'custodyCD'));
  }

  String? _storedValue;
  void fetchdata() {
    String? valuee = securestorage().get('token').toString();
    setState(() {
      _storedValue = valuee;
    });
  }

  String? selecteditem;
  List<String> acctnosdata = [];
  List<String> mantysdata = [];
  String value1 = FlutterSecureStorage()
      .read(key: 'custodyCD')
      .then((value1) => print(value1))
      .toString();
  String value = FlutterSecureStorage()
      .read(key: 'token')
      .then((value) => print(value))
      .toString();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: GetInfoCustomer(
          securestorage().get('custodyCD').then((value1) => value1),
          securestorage().get('token').then((value) => value)),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Text("${snapshot.error}");
        } else {
          final data = snapshot.data ?? [];

          for (var i in data) {
            acctnosdata.add(i.acctno);
            mantysdata.add(i.manty);
          }
        }
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
                onChanged: (value) {
                  // This is called when the user selects an item.
                  setState(() {
                    selecteditem = value!;
                    FlutterSecureStorage().write(key: 'acctno', value: value);
                  });
                },
                items: [
                  for (var i = 0; i < acctnosdata.length; i++)
                    DropdownMenuItem(
                      child: Text(acctnosdata[i]),
                      value: mantysdata[i],
                    )
                ]));
      },
    );
  }
}
