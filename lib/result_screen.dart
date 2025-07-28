// import 'package:flutter/material.dart';
// import 'package:singleton_flutter/numbers_list.dart';

// class ResultScreen extends StatefulWidget {
//   const ResultScreen({super.key});

//   @override
//   State<ResultScreen> createState() => _ResultScreenState();
// }

// class _ResultScreenState extends State<ResultScreen> {
//   @override
//   Widget build(BuildContext context) {
//     NumbersList numbersList = NumbersList();
//     return Scaffold(
//       appBar: AppBar(title: Text('Result Screen')),
//       body: ListView.builder(
//         itemCount: numbersList.numbers.length,
//         shrinkWrap: true,
//         itemBuilder: (context, index) {
//           return ListTile(title: Text(numbersList.numbers[index].toString()));
//           //
//         },
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:singleton_flutter/numbers_list.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final NumbersList numbersList = NumbersList();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Result Screen'),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        elevation: 4,
      ),
      body: numbersList.numbers.isEmpty
          ? const Center(
              child: Text(
                'No numbers added yet!',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
            )
          : ListView.separated(
              itemCount: numbersList.numbers.length,
              padding: const EdgeInsets.all(16),
              separatorBuilder: (_, __) => const SizedBox(height: 10),
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple.shade50,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        blurRadius: 6,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Text(
                    'Number: ${numbersList.numbers[index]}',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                );
              },
            ),
    );
  }
}
