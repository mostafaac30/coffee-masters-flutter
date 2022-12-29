// import 'package:flutter/material.dart';
// import 'package:tender_app/constants.dart';

// import '../widgets/background_image_page.dart';
// import '../widgets/text_form_widget.dart';
// import 'choice_page.dart';

// class forgetP extends StatefulWidget {
//   const forgetP({super.key});

//   @override
//   State<forgetP> createState() => _forgetPState();
// }

// class _forgetPState extends State<forgetP> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: alabaster,
//       body: Stack(children: [
//         Login_Screen(
//           image: const AssetImage('assets/images/test.jpg'),
//         ),
//         Padding(
//           padding: const EdgeInsets.only(top: 150, right: 30, left: 30),
//           child: ListView(children: [
//             Column(
//               children: [
//                 textForm(
//                     suffixIcon: const Icon(
//                       Icons.email_outlined,
//                       color: Colors.white,
//                     ),
//                     hintText: "Email",
//                     obscureText: false),
//                 Container(
//                   height: 62,
//                   width: double.infinity,
//                   decoration:
//                       BoxDecoration(borderRadius: BorderRadius.circular(40)),
//                   child: ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                         backgroundColor:
//                             const Color.fromARGB(255, 2, 129, 233)),
//                     child: const Text(
//                       'Reset Submit Code',
//                       style: TextStyle(fontSize: 20),
//                     ),
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => const ChoicePage()),
//                       );
//                     },
//                   ),
//                 ),
//               ],
//             ),
//           ]),
//         ),
//       ]),
//     );
//   }
// }
