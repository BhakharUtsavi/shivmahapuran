// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';
//
// import '../provider/theme.dart';
//
// class Shivpuran extends StatefulWidget {
//   const Shivpuran({super.key});
//
//   @override
//   State<Shivpuran> createState() => _ShivpuranState();
// }
//
// class _ShivpuranState extends State<Shivpuran> {
//   List decodedJson = [];
//
//   initState() {
//     super.initState();
//     rootBundle.loadString("asset/json/geeta_data.json").then((json) {
//       decodedJson = jsonDecode(json);
//     });
//     setState(() {});
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: Drawer(
//         child: DrawerHeader(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Container(
//                 height: 50,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                   color: Colors.grey.shade500,
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: Center(child: Text("Hindi",style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w500),textAlign: TextAlign.center,)),
//               ),
//               SizedBox(
//                 height: 10,),
//               Container(
//                 height: 50,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                   color: Colors.grey.shade500,
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: Center(child: Text("English",style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w500),textAlign: TextAlign.center,)),
//               ),
//               SizedBox(
//                 height: 10,),
//               Consumer<ThemeProvider>(
//                 builder: (context, themeProvider, child) => IconButton(
//                   icon: themeProvider.isDarkMode
//                       ? Icon(Icons.light_mode,size: 30,)
//                       : Icon(Icons.dark_mode,size: 30,),
//                   onPressed: () {
//                     themeProvider.toggleTheme();
//                   },
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text(
//           "Shiv Puran",
//           style: GoogleFonts.poppins(fontSize: 22, fontWeight: FontWeight.w500),
//         ),
//       ),
//       body: ListView.builder(
//         itemBuilder: (context, index) {
//           Map<String, dynamic> item = decodedJson[index];
//           return ListTile(
//             minTileHeight: 100,
//             leading: Text(
//               "${item['chapter_number'] ?? ""}",
//               style: GoogleFonts.poppins(fontSize: 18),
//             ),
//             title: Text(
//               "${item['name_meaning'] ?? ""}",
//               style: GoogleFonts.poppins(fontSize: 18),
//             ),
//             onTap: () {
//               Navigator.pushNamed(context, "detail", arguments: item);
//             },
//             subtitle: Text(
//               "${item['name_translation'] ?? ""}",
//               style: GoogleFonts.poppins(fontSize: 15),
//             ),
//           );
//         },
//         itemCount: decodedJson.length,
//       ),
//     );
//   }
// }

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../provider/theme.dart';

class Shivpuran extends StatefulWidget {
  const Shivpuran({super.key});

  @override
  State<Shivpuran> createState() => _ShivpuranState();
}

class _ShivpuranState extends State<Shivpuran> {
  List decodedJson = [];
  String selectedLanguage = "English";

  void loadData() {
    rootBundle.loadString("asset/json/geeta_data.json").then((json) {
      setState(() {
        decodedJson = jsonDecode(json);
      });
    });
  }

  initState() {
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: DrawerHeader(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedLanguage = "Hindi";
                  });
                  loadData();
                  Navigator.pop(context);
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade500,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                      child: Text(
                    "Hindi",
                    style: GoogleFonts.poppins(
                        fontSize: 20, fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
                  )),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedLanguage = "English";
                  });
                  loadData();
                  Navigator.pop(context);
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade500,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                      child: Text(
                    "English",
                    style: GoogleFonts.poppins(
                        fontSize: 20, fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
                  )),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedLanguage = "Gujrati";
                  });
                  loadData();
                  Navigator.pop(context);
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade500,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                      child: Text(
                    "Gujrati",
                    style: GoogleFonts.poppins(
                        fontSize: 20, fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
                  )),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Consumer<ThemeProvider>(
                builder: (context, themeProvider, child) => IconButton(
                  icon: themeProvider.isDarkMode
                      ? Icon(
                          Icons.light_mode,
                          size: 30,
                        )
                      : Icon(
                          Icons.dark_mode,
                          size: 30,
                        ),
                  onPressed: () {
                    themeProvider.toggleTheme();
                  },
                ),
              )
            ],
          ),
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Shiv MahaPuran",
          style: GoogleFonts.poppins(fontSize: 22, fontWeight: FontWeight.w500),
        ),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 20,
          );
        },
        itemBuilder: (context, index) {
          Map<String, dynamic> item = decodedJson[index];
          return ListTile(
            minVerticalPadding: 30,
            tileColor: Colors.grey.shade600,
            minTileHeight: 100,
            leading: Text(
              "${item['id'] ?? ""}",
              style: GoogleFonts.poppins(fontSize: 18),
            ),
            title: Text(
                item['name_meaning'][selectedLanguage.toLowerCase()] ?? "",
                style: GoogleFonts.poppins(fontSize: 20),
            ),
            onTap: () {
              Navigator.pushNamed(context, "detail",
                  arguments: {...item, "selectedLanguage": selectedLanguage});
            },
            subtitle: Text(
                item['name_transliterated'][selectedLanguage.toLowerCase()] ?? "",
                style: GoogleFonts.poppins(fontSize: 15),
            ),
          );
        },
        itemCount: decodedJson.length,
      ),
    );
  }
}
