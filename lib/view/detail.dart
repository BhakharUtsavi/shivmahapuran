import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Detail extends StatefulWidget {
  const Detail({super.key});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {

  @override
  Widget build(BuildContext context) {

    final args = ModalRoute.of(context)!.settings.arguments as Map<String,dynamic>;
    final selectedLanguage=args['selectedLanguage']?? "English";

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children:[
              Row(
                children: [
                  Text("Chapter ${args['id'] ?? ""}", style: GoogleFonts.poppins(fontSize: 20),),
                  SizedBox(width: 10,),
                  Text("${args['name_meaning'][selectedLanguage.toLowerCase()] ?? ""}", style: GoogleFonts.poppins(fontSize: 18),),
                ],
              ),
              SizedBox(height: 10,),
              Image.asset("${args['image'] ?? ""}",height: 250,width: double.infinity,fit: BoxFit.cover,),
              SizedBox(height: 20,),
              Text("${args['chapter_summary'][selectedLanguage.toLowerCase()] ?? ""}", style: GoogleFonts.poppins(fontSize: 18),),
            ]
          ),
        ),
      ),
    );
  }
}
