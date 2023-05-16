import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

//   final String title, date;

//   const DetailScreen({
//     super.key,
//     required this.title,
//     required this.date,
//   });

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      ),
    );
  }
}
