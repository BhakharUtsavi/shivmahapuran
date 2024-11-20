// import 'dart:async';
//
// import 'package:bhagwatgita/view/shivpuran.dart';
// import 'package:flutter/material.dart';
//
// class Splash extends StatefulWidget {
//   const Splash({super.key});
//
//   @override
//   State<Splash> createState() => _SplashState();
// }
//
// class _SplashState extends State<Splash> {
//
//   @override
//   void initState() {
//     super.initState();
//     Timer(Duration(seconds: 3),(){
//       Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> Shivpuran()));
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: SizedBox.expand(
//           child: Image.network(
//             "https://d3t3ozftmdmh3i.cloudfront.net/staging/podcast_uploaded_episode/5719885/5719885-1728884452207-70ea8bec215d6.jpg",
//             fit: BoxFit.cover,
//           ),
//         ),
//       ),
//     );
//   }
// }


import 'dart:async';
import 'package:flutter/material.dart';
import 'package:bhagwatgita/view/shivpuran.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const Shivpuran()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        height: double.infinity,
        child: Image.network(
          "https://i.pinimg.com/736x/21/d0/ec/21d0ec4c0f04278d74a71c22f3e25a25.jpg",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
