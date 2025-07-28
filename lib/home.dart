// import 'package:flutter/material.dart';
// import 'package:singleton_flutter/numbers_list.dart';
// import 'package:singleton_flutter/result_screen.dart';

// class Home extends StatefulWidget {
//   const Home({super.key});

//   @override
//   State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     String status = 'Values arew added';
//     List<int> homePageNumbers = [7, 8, 9, 10, 11, 12, 13];
//     NumbersList numbersList = NumbersList();
//     void addNumbertoList() {
//       numbersList.numbers.addAll(homePageNumbers);
//       ScaffoldMessenger.of(context).clearSnackBars();
//       ScaffoldMessenger.of(
//         context,
//       ).showSnackBar(SnackBar(content: Text(status)));
//     }

//     return Scaffold(
//       appBar: AppBar(title: Text('Sigleton Practise')),
//       body: Center(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             ElevatedButton(
//               onPressed: addNumbertoList,
//               child: Text('Add Numbers'),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.of(context).push(
//                   MaterialPageRoute(
//                     builder: (context) {
//                       return ResultScreen();
//                     },
//                   ),
//                 );
//               },
//               child: Text('Result Screen'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:singleton_flutter/numbers_list.dart';
import 'package:singleton_flutter/result_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final String status = 'Values are added';
  final List<int> homePageNumbers = [7, 8, 9, 10, 11, 12, 13];
  final NumbersList numbersList = NumbersList();

  void addNumberToList() {
    numbersList.numbers.addAll(homePageNumbers);
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(status),
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.green.shade600,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: const Text('Singleton Practice'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        elevation: 5,
      ),
      body: Center(
        child: Card(
          margin: const EdgeInsets.all(24),
          elevation: 12,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Number List Manager',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 30),
                ElevatedButton.icon(
                  onPressed: addNumberToList,
                  icon: const Icon(Icons.add),
                  label: const Text(
                    'Add Numbers',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 16,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                OutlinedButton.icon(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => const ResultScreen()),
                    );
                  },
                  icon: const Icon(Icons.arrow_forward),
                  label: const Text('View Result Screen'),
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 28,
                      vertical: 14,
                    ),
                    side: const BorderSide(color: Colors.deepPurple, width: 2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    foregroundColor: Colors.deepPurple,
                    textStyle: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
