// import 'package:flutter/material.dart';
// import 'package:tender_app/pages/forgetPasswordPage.dart';
// import 'package:tender_app/pages/sign_up_screen.dart';
// import 'package:tender_app/widgets/text_form_widget.dart';
// import '../widgets/background_image_page.dart';
// import 'choice_page.dart';

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
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
//                 textForm(
//                     suffixIcon: const Icon(
//                       Icons.remove_red_eye_rounded,
//                       color: Colors.white,
//                     ),
//                     hintText: "Password",
//                     obscureText: true),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     TextButton(
//                         onPressed: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => const forgetP()),
//                           );
//                         },
//                         child: const Text(
//                           "Forget Password?",
//                           style: TextStyle(
//                             color: Colors.white,
//                           ),
//                         )),
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 80,
//                 ),
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
//                       'login',
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
//                 TextButton(
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (context) => const signUp()),
//                       );
//                     },
//                     child: const Text(
//                       "Create account",
//                       style: TextStyle(
//                           color: Colors.white,
//                           decoration: TextDecoration.underline),
//                     )),
//               ],
//             ),
//           ]),
//         ),
//       ]),
//     );
//   }
// }
