import 'package:app/dkquenmua/dsthuchienquyen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class dangkyquyen extends StatefulWidget {
  const dangkyquyen({super.key});

  @override
  State<dangkyquyen> createState() => _dangkyquyenState();
}

class _dangkyquyenState extends State<dangkyquyen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Đăng ký quền mua',
            style: TextStyle(
                fontSize: 14, color: Color.fromRGBO(255, 255, 255, 1))),
      ),
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(left: 16, right: 16, top: 16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Tài khoản',
                        style: TextStyle(
                            fontSize: 12,
                            color: Color.fromRGBO(160, 163, 175, 1))),
                    Text('8130411',
                        style: TextStyle(
                            fontSize: 12,
                            color: Color.fromRGBO(255, 255, 255, 1))),
                  ],
                ),
                SizedBox(height: 12),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Mã chứng khoán',
                        style: TextStyle(
                            fontSize: 12,
                            color: Color.fromRGBO(160, 163, 175, 1))),
                    Text('VCB',
                        style: TextStyle(
                            fontSize: 12,
                            color: Color.fromRGBO(255, 255, 255, 1))),
                  ],
                ),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Tỉ lệ',
                        style: TextStyle(
                            fontSize: 12,
                            color: Color.fromRGBO(160, 163, 175, 1))),
                    Text('1:1',
                        style: TextStyle(
                            fontSize: 12,
                            color: Color.fromRGBO(255, 255, 255, 1))),
                  ],
                ),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Giá mua',
                        style: TextStyle(
                            fontSize: 12,
                            color: Color.fromRGBO(160, 163, 175, 1))),
                    Text('80,000 VND',
                        style: TextStyle(
                            fontSize: 12,
                            color: Color.fromRGBO(255, 255, 255, 1))),
                  ],
                ),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Ngày bắt đầu đăng ký',
                        style: TextStyle(
                            fontSize: 12,
                            color: Color.fromRGBO(160, 163, 175, 1))),
                    Text('20/01/2024',
                        style: TextStyle(
                            fontSize: 12,
                            color: Color.fromRGBO(255, 255, 255, 1))),
                  ],
                ),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Ngày kết thúc đăng ký',
                        style: TextStyle(
                            fontSize: 12,
                            color: Color.fromRGBO(160, 163, 175, 1))),
                    Text('20/03/2024',
                        style: TextStyle(
                            fontSize: 12,
                            color: Color.fromRGBO(255, 255, 255, 1))),
                  ],
                ),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Số dư tiền khả dụng',
                        style: TextStyle(
                            fontSize: 12,
                            color: Color.fromRGBO(160, 163, 175, 1))),
                    Text('100,000,000 VND',
                        style: TextStyle(
                            fontSize: 12,
                            color: Color.fromRGBO(255, 255, 255, 1))),
                  ],
                ),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('KL CK được mua',
                        style: TextStyle(
                            fontSize: 12,
                            color: Color.fromRGBO(160, 163, 175, 1))),
                    Text('10,000',
                        style: TextStyle(
                            fontSize: 12,
                            color: Color.fromRGBO(255, 255, 255, 1))),
                  ],
                ),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('KL đăng ký mua',
                        style: TextStyle(
                            fontSize: 12,
                            color: Color.fromRGBO(160, 163, 175, 1))),
                    Flexible(
                      child: SizedBox(
                        width: 200,
                        height: 28,
                        child: TextField(
                          style: TextStyle(fontSize: 12),
                          decoration: InputDecoration(
                              suffixIcon: Container(
                                width: 40,
                                margin: EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 5),
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 4),
                                      side: BorderSide(
                                          color:
                                              Color.fromRGBO(231, 171, 33, 1)),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(3)),
                                    ),
                                    onPressed: () {},
                                    child: Text('Tối đa',
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Color.fromRGBO(
                                                231, 171, 33, 1)))),
                              ),
                              hintText: 'Nhập KL CK',
                              hintStyle: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromRGBO(89, 94, 114, 1)),
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 4),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromRGBO(41, 45, 56, 1)),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4)))),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Thành tiền',
                        style: TextStyle(
                            fontSize: 12,
                            color: Color.fromRGBO(160, 163, 175, 1))),
                    Text('0',
                        style: TextStyle(
                            fontSize: 12,
                            color: Color.fromRGBO(255, 255, 255, 1))),
                  ],
                ),
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
                    onPressed: () {
                      todo();
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(231, 171, 33, 1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                    child: Text(
                      'Xác nhận',
                      style: TextStyle(color: Color.fromRGBO(19, 23, 33, 1)),
                    )),
              ))
        ],
      ),
    );
  }

  Future<void> todo() async {
    final route = MaterialPageRoute(builder: (context) => dsthuchienquyen());
    await Navigator.push(context, route);
  }
}
