import 'dart:convert';

import 'package:app/solenh/bottomnavigatorbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class Loginpage extends StatefulWidget {
  Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  List<String> items = ['VN', 'EN'];
  String selecteditem = 'VN';
  bool radiochecked = true;
  bool _showpass = true;
  TextEditingController _usercontroler = TextEditingController();
  TextEditingController _passcontroler = TextEditingController();
  var usererr = 'Tên đăng nhập không được bỏ trống';
  var passerr = 'Mật khẩu không được bỏ trống';
  bool checkuser = false;
  bool checkpass = false;
  bool language = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(left: 24, right: 24),
        child: Column(
          children: [
            SizedBox(
              height: 96,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(
                AppLocalizations.of(context)!.loginForm('title'),
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              DropdownButton<String>(
                value: selecteditem,
                style: TextStyle(fontSize: 12),
                elevation: 20,
                icon: Icon(Icons.arrow_drop_down),
                onChanged: (String? value) {
                  // This is called when the user selects an item.
                  setState(() {
                    selecteditem = value!;
                  });
                },
                items: items.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              )
            ]),
            SizedBox(
              height: 19,
            ),
            Row(children: [
              Text(
                AppLocalizations.of(context)!.loginForm('account'),
              ),
              SizedBox(
                width: 8,
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  AppLocalizations.of(context)!.loginForm('create_account'),
                  style: TextStyle(color: Colors.orangeAccent),
                ),
              )
            ]),
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                AppLocalizations.of(context)!.loginForm('user_name'),
              ),
              padding: EdgeInsets.only(bottom: 8, top: 55),
            ),
            TextField(
              style: TextStyle(fontSize: 16),
              controller: _usercontroler,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(8),
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4))),
                  hintText:
                      AppLocalizations.of(context)!.loginForm('user_name'),
                  errorText: checkuser ? usererr : null),
            ),
            SizedBox(height: 22),
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                AppLocalizations.of(context)!.loginForm('password'),
              ),
              padding: EdgeInsets.only(bottom: 8),
            ),
            TextField(
              style: TextStyle(fontSize: 16),
              controller: _passcontroler,
              obscureText: _showpass,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(8),
                suffixIcon: showpass(),
                border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(4))),
                hintText: AppLocalizations.of(context)!.loginForm('password'),
                labelStyle: TextStyle(fontSize: 16),
                errorText: checkpass ? passerr : null,
              ),
            ),
            const SizedBox(height: 40),
            SizedBox(
              height: 48,
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    error();
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orangeAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                  child: Text(
                    AppLocalizations.of(context)!.loginForm('title'),
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  )),
            ),
            SizedBox(
              height: 24,
            ),
            Row(
              children: [
                InkWell(
                  onTap: radiocheck,
                  child: radiochecked
                      ? Icon(
                          Icons.radio_button_checked,
                          color: Colors.orangeAccent,
                        )
                      : Icon(Icons.radio_button_off,
                          color: Colors.orangeAccent),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  AppLocalizations.of(context)!.loginForm('save_login'),
                )
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              InkWell(
                onTap: () {
                  print(securestorage().get('custodyCD'));
                },
                child: Text(
                  AppLocalizations.of(context)!.loginForm('forgot_password'),
                  style: TextStyle(color: Colors.orangeAccent),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Text(
                    AppLocalizations.of(context)!.loginForm('search_stk'),
                    style: TextStyle(color: Colors.orangeAccent)),
              ),
            ]),
          ],
        ),
      ),
    );
  }

  Widget showpass() {
    return IconButton(
        onPressed: () {
          setState(() {
            _showpass = !_showpass;
          });
        },
        icon: _showpass
            ? const Icon(Icons.visibility_off)
            : const Icon(Icons.visibility));
  }

  void radiocheck() {
    setState(() {
      radiochecked = !radiochecked;
    });
  }

  void error() {
    setState(() {
      if (_usercontroler.text.isEmpty) {
        checkuser = true;
      } else {
        checkuser = false;
      }
      if (_passcontroler.text.isEmpty) {
        checkpass = true;
      } else {
        checkpass = false;
      }
      if (checkuser || checkpass) {
        return null;
      } else {
        login('token');
      }
    });
  }

  Future<void> page() async {
    final route =
        MaterialPageRoute(builder: (context) => BottomNavigationBarExample());
    await Navigator.push(context, route);
  }

  Future<void> login(String token) async {
    try {
      final dio = Dio();
      final username = _usercontroler.text;
      final password = _passcontroler.text;

      final body = {"userName": username, "password": password};

      // final url = 'http://192.168.2.55:9090/HomeMobile/GeneratetOken';
      // final uri = Uri.parse(url);
      final reponse = await dio.post(
        'http://192.168.2.55:9090/HomeMobile/GeneratetOken',
        data: jsonEncode(body),
      );

      if (reponse.statusCode == 200) {
        final data = reponse.data;
        token = data["token"];
        String custodyCD = data["custodyCD"];
        _usercontroler.text;
        _passcontroler.text;
        page();
        await securestorage().save('token', token);
        await securestorage().save('custodyCD', custodyCD);
        await securestorage().get('custodyCD').then((value) => print(value));
      }
    } catch (error) {
      print(error);
    }
  }
}

class securestorage {
  // static final securestorage instance =
  //     securestorage._(const FlutterSecureStorage());
  // securestorage._(this.storage);
  final FlutterSecureStorage storage = FlutterSecureStorage();

  Future<void> save(String key, String value) async {
    try {
      await storage.write(key: key, value: value);
    } catch (e) {
      debugPrint(e.toString());
      return;
    }
  }

  Future<String?> get(String key) async {
    try {
      final value = await storage.read(key: key);
      if (value == null) return null;
      return value;
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }

  Future<void> delete(String key) async {
    await storage.delete(key: key);
  }
}
