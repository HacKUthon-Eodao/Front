import 'package:eodao_front/utility/permission.dart';
import 'package:flutter/material.dart';

class QuestData {
  final String text;

  QuestData({required this.text});
}

class WritePage extends StatefulWidget{
  const WritePage({super.key});

  @override
  State<WritePage> createState() => _WritePageState();
}

class _WritePageState extends State<WritePage>{
  TextEditingController content = TextEditingController();

  @override
  Widget build(BuildContext context){
    List<QuestData> questList = [
      QuestData(text: "오늘의 엽사는?"),
    ];
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
                Icons.chevron_left,
                color: Color(0x962c14dd)
            ),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
          title: const Text(
              '작성',
              style: TextStyle(
                color: Color(0x962c14dd),
                fontWeight: FontWeight.bold,
              )
          ),
          centerTitle: false,
        ),
        body: SafeArea(
            child: Container(
              margin: const EdgeInsets.fromLTRB(3, 3, 3, 3),
              child:
              Center(
                  child: Column(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          height: 120,
                          child: Card(
                              margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                              color: Color(0x962c14dd),
                              child: Container(
                                  child: Container(
                                    padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                                    child: Text(
                                        "QUEST:\n${questList[0].text}",
                                        style: const TextStyle(
                                          fontSize: 28,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        )
                                    ),
                                  )
                              )
                          ),
                        ),
                        const SizedBox(height: 10),
                        GestureDetector (
                            onTap: checkStoragePermission,
                            child: SizedBox(
                                child: SizedBox(
                                  child: ElevatedButton.icon(
                                      onPressed: checkStoragePermission,
                                      icon: const Icon(
                                        Icons.add_a_photo,
                                        color: Colors.black,
                                      ),
                                      label: const Text(
                                        "사진 추가",
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),
                                      )),
                                ))
                        ),
                        SizedBox(height: 10),
                        Container(
                            margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                            width: double.infinity,
                            height: 300,
                            decoration: BoxDecoration(
                              color: Color(0x962c14dd),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Container(
                                padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                          children:[
                                            const Text(
                                                '작성하기',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                )
                                            ),
                                          ]
                                      ),
                                      const SizedBox(height: 5),
                                      Expanded(
                                          child: TextField(
                                              controller: content,
                                              maxLines: null,
                                              decoration: InputDecoration(
                                                hintText: '작성하기 ',
                                                border: InputBorder.none,
                                                contentPadding: EdgeInsets.fromLTRB(2, 2, 0, 0),
                                              )
                                          )
                                      )]
                                )
                            )
                        )
                      ]
                  )
              ),

            )
        )
    );
  }

}