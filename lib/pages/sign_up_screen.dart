// import 'package:flutter/material.dart';
// import 'package:tender_app/widgets/text_form_widget.dart';

// import '../widgets/background_image_page.dart';
// import 'choice_page.dart';

// class signUp extends StatefulWidget {
//   const signUp({super.key});

//   @override
//   State<signUp> createState() => _signUpState();
// }

// class _signUpState extends State<signUp> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(children: [
//         Login_Screen(
//           image: const AssetImage('assets/images/test.jpg'),
//         ),
//         Container(
//           child: Padding(
//             padding: const EdgeInsets.only(top: 100, right: 30, left: 30),
//             child: ListView(children: [
//               Column(
//                 children: [
//                   const CircleAvatar(
//                     backgroundImage:
//                         AssetImage("assets/images/P_fileimage.png"),
//                     radius: 50,
//                   ),
//                   textForm(
//                       suffixIcon: const Icon(
//                         Icons.person_add_alt_1_rounded,
//                         color: Colors.white,
//                       ),
//                       hintText: "Full name",
//                       obscureText: false),
//                   textForm(
//                       suffixIcon: const Icon(
//                         Icons.email_outlined,
//                         color: Colors.white,
//                       ),
//                       hintText: "Email",
//                       obscureText: false),
//                   textForm(
//                       suffixIcon: const Icon(
//                         Icons.remove_red_eye_rounded,
//                         color: Colors.white,
//                       ),
//                       hintText: "Password",
//                       obscureText: false),
//                   textForm(
//                       suffixIcon: const Icon(
//                         Icons.remove_red_eye_rounded,
//                         color: Colors.white,
//                       ),
//                       hintText: " Confirm Password",
//                       obscureText: false),
//                   const SizedBox(
//                     height: 80,
//                   ),
//                   Container(
//                     height: 62,
//                     width: double.infinity,
//                     decoration:
//                         BoxDecoration(borderRadius: BorderRadius.circular(40)),
//                     child: ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                           backgroundColor:
//                               const Color.fromARGB(255, 2, 129, 233)),
//                       child: const Text(
//                         'sign up',
//                         style: TextStyle(fontSize: 20),
//                       ),
//                       onPressed: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => const ChoicePage()),
//                         );
//                       },
//                     ),
//                   ),
//                 ],
//               ),
//             ]),
//           ),
//         ),
//       ]),
//     );
//   }
// }
