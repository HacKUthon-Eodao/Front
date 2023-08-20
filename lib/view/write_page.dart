import 'package:eodao_front/utility/permission.dart';
import 'package:flutter/material.dart';

class WritePage extends StatefulWidget{
  const WritePage({super.key});

  @override
  State<WritePage> createState() => _WritePageState();
}

class _WritePageState extends State<WritePage>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: GestureDetector (
          onTap: checkStoragePermission,
          child: const Text("check permission")
        ),
      )
    );
  }

}