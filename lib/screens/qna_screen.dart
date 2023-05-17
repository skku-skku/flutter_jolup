import 'package:flutter/material.dart';

class QnAScreen extends StatelessWidget {
  const QnAScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 35),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SingleChildScrollView(),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFFEBEBEB),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('질문을 입력해주세요.'),
                    Icon(
                      Icons.send,
                      color: Theme.of(context).textTheme.displayLarge!.color,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
