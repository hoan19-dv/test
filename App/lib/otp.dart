import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OTP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Xác nhận mã'),
        ),
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 16, right: 16),
              child: Column(
                children: [
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Nhập mã OTP',
                        style: TextStyle(fontSize: 28),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  Text(
                    'Vui lòng nhập mã',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Mã OTP đã được gửi về số điện thoại *******789 của bạn',
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  OTPTextField(),
                  SizedBox(
                    height: 59,
                  ),
                  Text('Bạn chưa nhận được mã OTP?'),
                  SizedBox(
                    height: 8,
                  ),
                  Text('Gửi lại OTP'),
                ],
              ),
            ),
            Positioned(
                bottom: 12,
                left: 16,
                right: 16,
                child: SizedBox(
                  height: 36,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orangeAccent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8))),
                      child: Text(
                        'Xác nhận',
                        style: TextStyle(color: Colors.black),
                      )),
                ))
          ],
        ));
  }
}

class OTPTextField extends StatefulWidget {
  @override
  _OTPTextFieldState createState() => _OTPTextFieldState();
}

class _OTPTextFieldState extends State<OTPTextField> {
  List<TextEditingController> controllers = [];

  @override
  void initState() {
    super.initState();
    // Khởi tạo các controller và thêm vào list
    for (int i = 0; i < 6; i++) {
      controllers.add(TextEditingController());
    }
  }

  @override
  void dispose() {
    // Hủy các controller khi không cần thiết
    for (var controller in controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
        6,
        (index) => SizedBox(
          width: 40.0,
          child: TextField(
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            controller: controllers[index],
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            maxLength: 1,
            decoration: InputDecoration(
              hoverColor: Colors.orangeAccent,
              counterText: "",
            ),
            onChanged: (value) {
              if (value.isNotEmpty) {
                // Chuyển focus tới ô nhập kế tiếp nếu có ký tự được nhập
                if (index < 5) {
                  FocusScope.of(context).nextFocus();
                }
              }
            },
          ),
        ),
      ),
    );
  }
}
