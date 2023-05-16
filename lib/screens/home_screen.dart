import 'package:flutter/material.dart';
import 'package:jolup/widgets/maincard_widget.dart';
import 'package:table_calendar/table_calendar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      appBar: AppBar(
        title: const Text(
          '일정',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 23,
          ),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0.5,
        centerTitle: false,
        titleSpacing: 20,
      ),
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: TableCalendar(
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
              focusedDay: DateTime.now(),
            ),
          ),
          const SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: MainCard(
                  title: '클라이언트 1차 미팅 -1',
                  date: '2023년 5월 17일 토요일',
                  contents:
                      '주요안건은 다음과 같습니다.  상품출고일까지 기한을 지켜서 준비를 완료시켜야 합니다. 상품에 마감 처리에 좀 더 신경을 써야하며, 색상도 알맞게 나왔는지 확인하는 것이 중요합니다. 가장 중요한 것은..'),
            ),
          ),
        ],
      ),
    );
  }
}
