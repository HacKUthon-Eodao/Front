import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget{
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController idController = TextEditingController();
  TextEditingController pwController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final phoneUnitHeight = MediaQuery.of(context).size.height / 844;

    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: phoneUnitHeight * 151),
                  const SizedBox(
                    child: Text(
                      "오늘 끝나고 모행?",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      )
                    )
                  ),
                  SizedBox(height: phoneUnitHeight * 13),
                  Container(
                    padding: const EdgeInsets.fromLTRB(34, 0, 0, 0),
                    width: double.infinity,
                    height: 47,
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xff1b418c)),
                      borderRadius: BorderRadius.circular(31),
                    ),
                    child: TextField(
                      controller: idController,
                      decoration: const InputDecoration(
                        hintText: '아이디',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                      ),
                    ),
                  ),
                  SizedBox(height: phoneUnitHeight * 18),
                  Container(
                    padding: const EdgeInsets.fromLTRB(34, 0, 0, 0),
                    width: double.infinity,
                    height: phoneUnitHeight * 47,
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xff1b418c)),
                      borderRadius: BorderRadius.circular(31),
                    ),
                    child: TextField(
                      controller: pwController,
                      decoration: const InputDecoration(
                        hintText: '비밀번호 ',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                      ),
                    ),
                  ),
                  SizedBox(height: phoneUnitHeight * 22),
                  GestureDetector(
                    onTap: () {
                      print('로그인 클릭');
                    },
                    child: Container(
                      width: double.infinity,
                      height: phoneUnitHeight * 52,
                      decoration: BoxDecoration(
                        color: const Color(0xff1b418c),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: const Center(
                        child: Text(
                          '로그인',
                          style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: phoneUnitHeight * 17),
                  SizedBox(height: phoneUnitHeight * 86),
                  GestureDetector(
                    onTap: () {
                      print('카카오톡 로그인 클릭');
                    },
                    child: Container(
                      width: double.infinity,
                      height: phoneUnitHeight * 47,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xffeff32e)),
                        borderRadius: BorderRadius.circular(39),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.asset("assets/icons/image 10.png"),
                          ),
                          Container(
                            padding: const EdgeInsets.fromLTRB(13, 0, 0, 0),
                            child: const Text('카카오톡 로그인 '),
                          ),
                        ],
                      ),
                    ),
                  ),
                ]
              )
            )
        )
    );
  }
}