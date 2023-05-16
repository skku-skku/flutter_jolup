import 'package:flutter/material.dart';
import 'package:jolup/screens/meeting_screen.dart';
import 'package:jolup/screens/qna_screen.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

//   final String title, date;

//   const DetailScreen({
//     super.key,
//     required this.title,
//     required this.date,
//   });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        backgroundColor: const Color(0xFFF9F9F9),
        appBar: AppBar(
          title: Column(
            children: [
              const Text(
                '클라이언트 1차 미팅 -1',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                '2018년 2월 3일 토요일',
                style: TextStyle(
                  fontSize: 18,
                  color: Theme.of(context).textTheme.displayLarge!.color,
                ),
              ),
            ],
          ),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
          toolbarHeight: 100,
          bottom: const TabBar(
            labelColor: Colors.black,
            labelStyle: TextStyle(fontSize: 18),
            tabs: <Widget>[
              Tab(
                text: '회의록',
              ),
              Tab(
                text: '질문하기',
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            MeetingScreen(),
            QnAScreen(),
          ],
        ),
      ),
    );
  }
}
