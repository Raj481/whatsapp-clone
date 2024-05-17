
import 'package:flutter/material.dart';
import 'package:whatsup_clone/utils/color_res.dart';
import 'package:whatsup_clone/utils/font_res.dart';

import '../../utils/image_res.dart';

class StatusScreen extends StatefulWidget {
  const StatusScreen({super.key});

  @override
  State<StatusScreen> createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {

  List<Map<String, dynamic>> list = [
    {
      "sender": "Manish Rav",
      "contact_number": "+91123456789",
      "profile_img": ImageRes.profileImage,
      "chat_type": "individual",
      "message": "Hii Rajesh",
      "isSeen": false,
      "time": DateTime.now(),
    },
    {
      "sender": "Ganpat Das",
      "contact_number": "+91123456789",
      "profile_img": ImageRes.profileImage,
      "chat_type": "individual",
      "message": "Hii Rajesh",
      "isSeen": false,
      "time": DateTime.now(),
    },
    {
      "sender": "Vedprakash Binwal",
      "contact_number": "+91123456789",
      "profile_img": ImageRes.profileImage,
      "chat_type": "individual",
      "message": "Hii Rajesh",
      "isSeen": false,
      "time": DateTime.now(),
    },
    {
      "sender": "Ramchandra Banshiwal",
      "contact_number": "+91123456789",
      "profile_img": ImageRes.profileImage,
      "chat_type": "individual",
      "message": "Hii Rajesh",
      "isSeen": false,
      "time": DateTime.now(),
    },
    {
      "sender": "Manish Rav",
      "contact_number": "+91123456789",
      "profile_img": ImageRes.profileImage,
      "chat_type": "individual",
      "message": "Hii Rajesh",
      "isSeen": false,
      "time": DateTime.now(),
    },
    {
      "sender": "Ganpat Das",
      "contact_number": "+91123456789",
      "profile_img": ImageRes.profileImage,
      "chat_type": "individual",
      "message": "Hii Rajesh",
      "isSeen": false,
      "time": DateTime.now(),
    },
    {
      "sender": "Vedprakash Binwal",
      "contact_number": "+91123456789",
      "profile_img": ImageRes.profileImage,
      "chat_type": "individual",
      "message": "Hii Rajesh",
      "isSeen": false,
      "time": DateTime.now(),
    },
    {
      "sender": "Ramchandra Banshiwal",
      "contact_number": "+91123456789",
      "profile_img": ImageRes.profileImage,
      "chat_type": "individual",
      "message": "Hii Rajesh",
      "isSeen": false,
      "time": DateTime.now(),
    },
    {
      "sender": "Manish Rav",
      "contact_number": "+91123456789",
      "profile_img": ImageRes.profileImage,
      "chat_type": "individual",
      "message": "Hii Rajesh",
      "isSeen": false,
      "time": DateTime.now(),
    },
    {
      "sender": "Ganpat Das",
      "contact_number": "+91123456789",
      "profile_img": ImageRes.profileImage,
      "chat_type": "individual",
      "message": "Hii Rajesh",
      "isSeen": false,
      "time": DateTime.now(),
    },
    {
      "sender": "Vedprakash Binwal",
      "contact_number": "+91123456789",
      "profile_img": ImageRes.profileImage,
      "chat_type": "individual",
      "message": "Hii Rajesh",
      "isSeen": false,
      "time": DateTime.now(),
    },
    {
      "sender": "Ramchandra Banshiwal",
      "contact_number": "+91123456789",
      "profile_img": ImageRes.profileImage,
      "chat_type": "individual",
      "message": "Hii Rajesh",
      "isSeen": false,
      "time": DateTime.now(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: _buildList(),
    );
  }


  Widget _buildList(){
    return ListView.separated(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(
          horizontal: 15
        ),
        itemCount: list.length,
        itemBuilder: (_, index) {
          return listItem(index);
        },
      separatorBuilder: (BuildContext context, int index) {
          return Divider(
            color: ColorRes.gray.withOpacity(.5),
            height: .1,
            thickness: .1,
          );
      },
    );
  }

  Widget listItem(int index){
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 5,
        vertical: 5
      ),
      margin: const EdgeInsets.symmetric(
        vertical: 5
      ),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage(
                    list.elementAt(index)["profile_img"]
                  )
              )
            ),
          ),
          const SizedBox(width: 10,),
          Flexible(
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        list.elementAt(index)["sender"],
                        style: TextStyle(
                            color: ColorRes.black,
                            fontFamily: FontRes.openSans,
                            fontSize: 18
                        ),
                      )
                    ],
                  ),
                ],
              )
          )
        ],
      ),
    );
  }

}
