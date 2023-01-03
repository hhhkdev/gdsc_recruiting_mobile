import 'package:flutter/material.dart';
import 'main.dart';

class ErrandApp extends StatelessWidget { /* 메인 페이지*/
  const ErrandApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: '심부름',
      theme: ThemeData(fontFamily: 'main'),
      home: Errand(),
    );
  }
}

class Errand extends StatelessWidget {
  const Errand({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        centerTitle: true,
        title: Text('심부름', style: TextStyle(
            fontSize: 17, fontWeight: FontWeight.w800, color: Color(0xff1F1F21)
      ),),
        backgroundColor: Color(0xffFFFFFF),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded, color: Color(0xff1F1F21),),
          iconSize: 20,
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
          },
        ),
      ),
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Color(0xffFFFFFF),
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(187, 193, 208, 0.25),
                  spreadRadius: 0,
                  blurRadius: 14,
                  offset: Offset(0, 2)
                )
              ]
            ),
            margin: EdgeInsets.fromLTRB(20, 12, 20, 16),
            padding: EdgeInsets.fromLTRB(20, 20, 20, 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('서울 광진구', style: TextStyle(
                      fontWeight: FontWeight.w800, fontSize: 17, color: Color(0xff1F1F21)
                    ),),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Color(0xffE0F4F8)
                      ),
                      padding: EdgeInsets.all(6),
                      child: Text('시급 1만원', style: TextStyle(
                        fontSize: 13, fontWeight: FontWeight.w800, color: Color(0xff04BCD6)
                      ),),
                    )
                  ],
                ),
                Text('8/6 오후 8:00', style: TextStyle(
                  color: Color(0xff9A9A9A), fontWeight: FontWeight.w500, fontSize: 13,
                ),),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Color(0xffF4F8FF),
                  ),
                  margin: EdgeInsets.fromLTRB(0, 14, 0, 0),
                  padding: EdgeInsets.fromLTRB(10, 8, 10, 8),
                  child: Text('팬싸 대리응모', style: TextStyle(
                    color: Color(0xff3C88FA), fontSize: 13, fontWeight: FontWeight.w800,
                  ),),
                )
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color(0xffFFFFFF),
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(187, 193, 208, 0.25),
                      spreadRadius: 0,
                      blurRadius: 14,
                      offset: Offset(0, 2)
                  )
                ]
            ),
            margin: EdgeInsets.fromLTRB(20, 0, 20, 16),
            padding: EdgeInsets.fromLTRB(20, 20, 20, 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('서울 마포구', style: TextStyle(
                        fontWeight: FontWeight.w800, fontSize: 17, color: Color(0xff1F1F21)
                    ),),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Color(0xffF0E9FF)
                      ),
                      padding: EdgeInsets.all(6),
                      child: Text('시급 5만원', style: TextStyle(
                          fontSize: 13, fontWeight: FontWeight.w800, color: Color(0xff8F5BFF)
                      ),),
                    )
                  ],
                ),
                Text('8/7 오후 12:00', style: TextStyle(
                  color: Color(0xff9A9A9A), fontWeight: FontWeight.w500, fontSize: 13,
                ),),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Color(0xffF4F8FF),
                  ),
                  margin: EdgeInsets.fromLTRB(0, 14, 0, 0),
                  padding: EdgeInsets.fromLTRB(10, 8, 10, 8),
                  child: Text('앨범 대리구매', style: TextStyle(
                    color: Color(0xff3C88FA), fontSize: 13, fontWeight: FontWeight.w800,
                  ),),
                )
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color(0xffFFFFFF),
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(187, 193, 208, 0.25),
                      spreadRadius: 0,
                      blurRadius: 14,
                      offset: Offset(0, 2)
                  )
                ]
            ),
            margin: EdgeInsets.fromLTRB(20, 0, 20, 16),
            padding: EdgeInsets.fromLTRB(20, 20, 20, 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('서울 구로구', style: TextStyle(
                        fontWeight: FontWeight.w800, fontSize: 17, color: Color(0xff1F1F21)
                    ),),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Color(0xffFFECFA)
                      ),
                      padding: EdgeInsets.all(6),
                      child: Text('시급 7천원', style: TextStyle(
                          fontSize: 13, fontWeight: FontWeight.w800, color: Color(0xffFF6CD6)
                      ),),
                    )
                  ],
                ),
                Text('8/8 오전 7:32', style: TextStyle(
                  color: Color(0xff9A9A9A), fontWeight: FontWeight.w500, fontSize: 13,
                ),),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Color(0xffF4F8FF),
                      ),
                      margin: EdgeInsets.fromLTRB(0, 14, 8, 0),
                      padding: EdgeInsets.fromLTRB(10, 8, 10, 8),
                      child: Text('앨범 대리구매', style: TextStyle(
                        color: Color(0xff3C88FA), fontSize: 13, fontWeight: FontWeight.w800,
                      ),),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Color(0xffF4F8FF),
                      ),
                      margin: EdgeInsets.fromLTRB(0, 14, 8, 0),
                      padding: EdgeInsets.fromLTRB(10, 8, 10, 8),
                      child: Text('럭드 대리구매', style: TextStyle(
                        color: Color(0xff3C88FA), fontSize: 13, fontWeight: FontWeight.w800,
                      ),),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Color(0xffF4F8FF),
                      ),
                      margin: EdgeInsets.fromLTRB(0, 14, 0, 0),
                      padding: EdgeInsets.fromLTRB(10, 8, 10, 8),
                      child: Text('팬싸 대리응모', style: TextStyle(
                        color: Color(0xff3C88FA), fontSize: 13, fontWeight: FontWeight.w800,
                      ),),
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Color(0xffF4F8FF),
                  ),
                  margin: EdgeInsets.fromLTRB(0, 8, 0, 0),
                  padding: EdgeInsets.fromLTRB(10, 8, 10, 8),
                  child: Text('행사 대리줄서기', style: TextStyle(
                    color: Color(0xff3C88FA), fontSize: 13, fontWeight: FontWeight.w800,
                  ),),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
