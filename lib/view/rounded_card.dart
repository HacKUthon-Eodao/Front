import 'package:flutter/material.dart';

class FeedData {
  final String text;
  final String imageUrl;

  FeedData({required this.text, required this.imageUrl});
}

class RoundedCard extends StatefulWidget {
  const RoundedCard({Key? key}) : super(key: key);

  @override
  _RoundedCardState createState() => _RoundedCardState();
}

class _RoundedCardState extends State<RoundedCard>{
  @override
  Widget build(BuildContext context) {
    List<FeedData> feedList = [
      FeedData(text: "temp1", imageUrl: ""),
      FeedData(text: "temp2", imageUrl: ""),
      FeedData(text: "temp3", imageUrl: ""),
      FeedData(text: "temp4", imageUrl: ""),
      FeedData(text: "temp5", imageUrl: ""),
    ];

    return Scaffold(
        backgroundColor: Colors.black,
        body: ListView.builder(
          padding: const EdgeInsets.all(8),
            itemCount: feedList.length,
            itemBuilder: (BuildContext context, int index){
              return Container(
                height: 50,
                child: Card(
                 shape : RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(16.0),
                 ),
                  child: Column(
                    children: [
                      Image.network(
                          feedList[index].imageUrl,
                          fit: BoxFit.cover,
                      ),
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(feedList[index].text)
                      )
                  ],
                  )
                )
              );
            },
        )

    );
  }
}