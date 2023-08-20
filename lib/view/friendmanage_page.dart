import 'package:flutter/material.dart';

class FriendPage extends StatefulWidget {
  const FriendPage({Key? key}) : super(key: key);

  @override
  State<FriendPage> createState() => _FriendPageState();
}

class _FriendPageState extends State<FriendPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(
              Icons.arrow_drop_down,
              color: Color(0x962c14dd),
            ),
            onPressed: () {
              print("친구 삭제");
              // 친구 삭제 로직 추가
            },
          ),
          IconButton(
            icon: Icon(
              Icons.add,
              color: Color(0x962c14dd),
            ),
            onPressed: () {
              print("친구 추가");
              // 친구 추가 로직 추가
            },
          ),
        ],
        leading: IconButton(
          icon: Icon(
            Icons.chevron_left,
            color: Color(0x962c14dd),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          '친구 관리',
          style: TextStyle(
            color: Color(0x962c14dd),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.fromLTRB(10, 20, 10, 10),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xffE4E0FE),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Container(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
            height: 400,
            child: const Text(
              "친구를 추가해보세요!",
              style: TextStyle(
                fontSize: 28,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
