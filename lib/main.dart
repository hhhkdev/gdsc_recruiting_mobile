import 'package:flutter/material.dart';
import 'errand.dart';

void main() {
  runApp(const MyApp() /* 메인 페이지*/); /* 앱 구동*/
}

class MyApp extends StatelessWidget { /* 메인 페이지*/
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: '덕부름',
      color: Color(0xffFFFFFF),
      theme: ThemeData(fontFamily: 'main'),
      home: Main(),
    );
  }
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        title: Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.fromLTRB(24, 12, 0, 12),
          child: Text('덕부름', style: TextStyle(
          fontFamily: 'title', fontWeight: FontWeight.w700, fontSize: 24,
          color: Color(0xff3C88FA),)
        )
        ,
      ),
        backgroundColor: Color(0xffFFFFFF),
        elevation: 0,
        titleSpacing: 0.0,
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Notice(),
              Banner(),
              ApplyLink(),
              RecentErrand(),
              Tips(),
            ],
          ),
        ],
      )
    );
  }
}

class Notice extends StatelessWidget {
  const Notice({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color(0xffF8F8F8),
      ),
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.fromLTRB(20, 8, 20, 20),
      padding: EdgeInsets.fromLTRB(14, 10, 20, 10),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
            child: Text('공지', style: TextStyle(
                fontWeight: FontWeight.w800, fontSize: 13),),
          ),
          Text('덕부름에 새로운 기능이 추가됐어요.', style: TextStyle(
              fontSize: 13, fontWeight: FontWeight.w500),),
        ],
      ),
    );
  }
}

class Banner extends StatelessWidget {
  const Banner({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),

      ),
      margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: Stack(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset('assets/images/image.jpg', fit: BoxFit.contain,),

          )
          ,
          Container(
            padding: EdgeInsets.fromLTRB(20, 32, 0, 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              
              children: [
                Container(
                  height: 26,
                  child: Text('EVENT', style: TextStyle(
                    color: Color(0xffFFFFFF), fontSize: 18, fontWeight: FontWeight.w300
                  ),),
                ),
                Container(
                  height: 26,
                  child: Text('THE BOYZ Photo', style: TextStyle(
                    color: Color(0xffFFFFFF), fontWeight: FontWeight.w800, fontSize: 22,
                  ),),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 7, 0, 7),
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 32),
                  child: Text('지금 이벤트 참가하고 더 보이즈 굿즈 받기', style: TextStyle(
                      color: Color(0xffFFFFFF), fontSize: 12, fontWeight: FontWeight.w500
                  ),),
                ),

                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffF8F8F8)
                        ),
                        margin: EdgeInsets.fromLTRB(0, 0, 9, 0),
                        width: 7, height: 7,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(255, 255, 255, 0.5)
                        ),
                        margin: EdgeInsets.fromLTRB(0, 0, 9, 0),
                        width: 7, height: 7,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(255, 255, 255, 0.5)
                        ),
                        margin: EdgeInsets.fromLTRB(0, 0, 9, 0),
                        width: 7, height: 7,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(255, 255, 255, 0.5)
                        ),
                        margin: EdgeInsets.fromLTRB(0, 0, 9, 0),
                        width: 7, height: 7,
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      )
    );
  }
}

class ApplyLink extends StatelessWidget {
  const ApplyLink({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color(0xff1F1F21),
      ),
      margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
      padding: EdgeInsets.fromLTRB(18, 20, 24, 19),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Text('심부름 신청하러 가기', style: TextStyle(
                    fontWeight: FontWeight.w800, fontSize: 16, color: Color(0xffFFFFFF),
                ),)
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Text('덕질 관련 심부름을 신청해 보세요!', style: TextStyle(
                    fontWeight: FontWeight.w500, fontSize: 14, color: Color(0xffFFFFFF),
                ),)
              ),
            ],
          ),
          Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xff3E3E40)
                ),
                width: 40, height: 40,
              ),
              Icon(Icons.arrow_forward_rounded, color: Color(0xffFFFFFF), size: 30)
            ],
          )
        ],
      ),
    );
  }
}

class RecentErrand extends StatelessWidget {
  const RecentErrand({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.fromLTRB(0, 20, 0, 14),
      padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(24, 0, 24, 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('최근 등록된 심부름', style: TextStyle(
                    fontWeight: FontWeight.w800, fontSize: 16
                ),),
                ElevatedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ErrandApp()));
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Color.fromRGBO(0, 0, 0, 0)),
                      shadowColor: MaterialStateProperty.all(Color.fromRGBO(0, 0, 0, 0)),
                      alignment: Alignment.centerRight
                    ),
                    child: Row(
                      children: [
                        Text('더보기', style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w500, color: Color(0xffB1B1B4)
                        ),),
                        Icon(Icons.arrow_forward_ios_rounded, color: Color(0xffB1B1B4), size: 13,)
                      ],
                    )
                )
              ],
            ),
          ),
          

          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: Color(0xffF1F1F1), width: 1),
                ),
                width: 139, height: 144, margin: EdgeInsets.fromLTRB(20, 0, 12, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Color(0xffE0F4F8)
                      ),
                      margin: EdgeInsets.fromLTRB(10, 14, 0, 10),
                      padding: EdgeInsets.fromLTRB(6, 5, 6, 5),
                      child: Text('시급 1만원', style: TextStyle(
                        fontWeight: FontWeight.w800, fontSize: 11, color: Color(0xff04BCD6)
                      ),),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(14, 0, 0, 8),
                      child: Text('서울 광진구', style: TextStyle(
                        color: Color(0xff1F1F21), fontWeight: FontWeight.w800, fontSize: 14,
                      ),),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 0, 0, 10),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: Color(0xffF8F8F8)
                            ),
                            padding: EdgeInsets.all(8),
                            margin: EdgeInsets.fromLTRB(0, 0, 6, 0),
                            child: Text('팬싸 대리응모', style: TextStyle(
                              color: Color(0xff3C88FA), fontWeight: FontWeight.w800, fontSize: 12,
                            ),),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xff3C88FA)
                            ),
                            padding: EdgeInsets.fromLTRB(4, 6, 4, 6),
                            child: Text('+2', style: TextStyle(
                              color: Color(0xffF8F8F8), fontSize: 12, fontWeight: FontWeight.w800,
                            ),),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(14, 0, 0, 0),
                      child: Text('8/6 오후 8:00', style: TextStyle(
                        color: Color(0xffB1B1B4), fontSize: 12, fontWeight: FontWeight.w500
                      ),),
                    )

                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: Color(0xffF1F1F1), width: 1),
                ),
                width: 139, height: 144, margin: EdgeInsets.fromLTRB(0, 0, 12, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Color(0xffF0E9FF)
                      ),
                      margin: EdgeInsets.fromLTRB(10, 14, 0, 10),
                      padding: EdgeInsets.fromLTRB(6, 5, 6, 5),
                      child: Text('시급 1만원', style: TextStyle(
                          fontWeight: FontWeight.w800, fontSize: 11, color: Color(0xff8F5BFF)
                      ),),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(14, 0, 0, 8),
                      child: Text('서울 광진구', style: TextStyle(
                        color: Color(0xff1F1F21), fontWeight: FontWeight.w800, fontSize: 14,
                      ),),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 0, 0, 10),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: Color(0xffF8F8F8)
                            ),
                            padding: EdgeInsets.all(8),
                            margin: EdgeInsets.fromLTRB(0, 0, 6, 0),
                            child: Text('행사 대리줄서기', style: TextStyle(
                              color: Color(0xff3C88FA), fontWeight: FontWeight.w800, fontSize: 12,
                            ),),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(14, 0, 0, 0),
                      child: Text('8/6 오후 8:00', style: TextStyle(
                          color: Color(0xffB1B1B4), fontSize: 12, fontWeight: FontWeight.w500
                      ),),
                    )

                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class Tips extends StatelessWidget {
  const Tips({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color(0xffF7FFE7),
      ),
      margin: EdgeInsets.fromLTRB(20, 9, 20, 20),
      padding: EdgeInsets.all(19),
      height: 86,

      child: Row(
        children: [
          Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffDBFFAC),
                ),
                width: 48, height: 48,
              ),
              Text('Tip!', style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 16, color: Color(0xff1F1F21),

              ),)
            ],
          ),
          
          Container(
            margin: EdgeInsets.fromLTRB(17, 5, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Text('덕부름 이용 방법', style: TextStyle(
                    fontSize: 16, fontWeight: FontWeight.w800, color: Color(0xff1F1F21)
                  ),),
                ),
                
                Container(
                  margin: EdgeInsets.fromLTRB(0, 5, 0, 3),
                  child: Row(
                    children: [
                      Text('덕부름의 이용 방법을 알아보세요!', style: TextStyle(
                        fontSize: 13, color: Color(0xff3E3E40), fontWeight: FontWeight.w500
                      ),),
                      Icon(Icons.arrow_forward_ios_rounded, size: 13, color: Color(0xff6C6C6C),)
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      )

    );
  }
}
