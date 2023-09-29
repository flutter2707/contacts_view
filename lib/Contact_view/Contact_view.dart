import 'package:flutter/material.dart';
// ignore: camel_case_types
class Contact_view extends StatefulWidget {
  const Contact_view({super.key});
  @override
  State<Contact_view> createState() => _Contact_viewState();
}
// ignore: camel_case_types
class _Contact_viewState extends State<Contact_view> {
  Text text1 = Text('Icon BMW',style: TextStyle(color: Colors.white,fontSize: 24),);
  Text text2 = Text('Icon Twitter',style: TextStyle(color: Colors.white,fontSize: 24),);
  Text text3 = Text('Icon Instagram',style: TextStyle(color: Colors.white,fontSize: 24),);
  Text text4 = Text('Icon Mountain',style: TextStyle(color: Colors.white,fontSize: 24),);
  Text text5 = Text('Icon Facebook',style: TextStyle(color: Colors.white,fontSize: 24),);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Icons Builder Application',
          style: TextStyle(
            color: Colors.white
          ),),
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        body: Container(
          color: Colors.black,
          child: ListView.separated(
            physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return ContactList(index);
              },
              separatorBuilder: (context, index) {
                return const Divider();
              },
              itemCount: 100
          ),
        ),
      ),
    );
  }
  // ignore: non_constant_identifier_names
  Widget ContactList(int count) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        border: Border.all(color: Colors.black)
      ),height: 90,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              child: picture(count)
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsetsDirectional.only(end: 20),
              child: count % 11 == 0 ? text1 :
              count % 2 == 0 && count != 4 && count != 10 ?
              text2 : count % 3 == 0 ? text3 :
              count % 5 == 0 ? text4 : text5,
            )
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateColor.resolveWith((states) {
                return Colors.black;
              }),
              mouseCursor: MaterialStateMouseCursor.textable,
              elevation: MaterialStateProperty.all(10),
              foregroundColor: MaterialStateColor.resolveWith((states) {
                return Colors.black;
              })
            ),
            onPressed: () {
              count != 0;
            },
              child: const CircleAvatar(
                radius: 20,
                child: Expanded(
                    child: Icon(
                      Icons.more_vert,
                      color: Colors.white,size: 40,
                    )
                ),
              )
          )
        ],
      ),
    );
  }
  Widget picture(int count) {
    if (count % 11 == 0) {
      return Container(
     height: 70, width: 70,
     decoration: const BoxDecoration(
       shape: BoxShape.circle, color: Colors.black
     ),
      child: const  CircleAvatar(radius: 70,
        foregroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWK7iANO5hX49JDfRroGHElwt2yW3m6LvnFg&usqp=CAU'),
      ),
    );
    } else if(count % 3 == 0){
      return Container(
      height: 70, width: 70,
      decoration: const BoxDecoration(
        shape: BoxShape.circle, color: Colors.black
      ),
      child: const CircleAvatar(radius: 70,
        foregroundImage:  NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBWta-tSNStbThOyKrnVYtdECnyKq2IqegUQ&usqp=CAU')
      ),
    );
    } else if(count % 2 == 0 && count != 4 && count != 10){
      return Container(
        height: 70, width: 70,
        decoration: const BoxDecoration(
          shape: BoxShape.circle, color: Colors.black
        ),
        child: const CircleAvatar(radius: 70,
          foregroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0l9WZFl6w2T3ev0glA44QWDXXq6Xp8BlpIXqaBxt6q-l4TlCtn-8k8jPYi9xSyhzV-Y0&usqp=CAU'),
        ),
      );
    } else if(count % 5 == 0) {
      return Container(
        height: 70, width: 70,
        decoration: const BoxDecoration(
          shape: BoxShape.circle, color: Colors.black
        ),
        child: const CircleAvatar(radius: 70,
          foregroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSk1AT5Xr5Q3Vzh2_ymx8jt7M9tiCoajUOaKg&usqp=CAU'),
        ),
      );
    } else {
      return  Container(
        height: 70, width: 70,
        decoration: const BoxDecoration(
          shape: BoxShape.circle, color: Colors.black
        ),
        child: const CircleAvatar(radius: 70,
          foregroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6TxvG1TYTT389Nwp49-SN5befYdakdI01-Q&usqp=CAU'),
        ),
      );
    }
  }
}
