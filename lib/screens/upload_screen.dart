import 'package:flutter/material.dart';

class UploadScreen extends StatelessWidget {
  const UploadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '2023년 5월 17일 수요일',
              style: TextStyle(
                color: Theme.of(context).textTheme.displayLarge!.color,
                fontSize: 18,
              ),
            ),
            const Expanded(
              child: Center(
                child: Text(
                  'WAV파일 불러오기',
                  style: TextStyle(
                    fontSize: 22,
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
