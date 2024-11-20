// import 'dart:convert';
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   List decodedJson = [];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: ListView.builder(
//         itemBuilder: (context, index) {
//           Map<String, dynamic> item = decodedJson[index];
//           return ListTile(
//             title: Text("${item["first_name"]} ${item["last_name"]}"),
//             subtitle: Text("${item["email"]}"),
//             trailing:
//             Icon(item["is_active"] == true ? Icons.check : Icons.close),
//           );
//         },
//         itemCount: decodedJson.length,
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           String json =
//               "[{\"id\":4,\"first_name\":\"Emily\",\"last_name\":\"Davis\",\"email\":\"emily.davis@example.com\",\"username\":\"emilydavis\",\"phone\":\"+1230987654\",\"address\":{\"street\":\"321MapleRd\",\"city\":\"SanFrancisco\",\"state\":\"CA\",\"zip\":\"94105\"},\"is_active\":true,\"created_at\":\"2024-03-12T14:22:00Z\",\"last_login\":\"2024-11-18T08:40:00Z\"},{\"id\":5,\"first_name\":\"David\",\"last_name\":\"Martinez\",\"email\":\"david.martinez@example.com\",\"username\":\"davemart\",\"phone\":\"+1987456123\",\"address\":{\"street\":\"101BirchSt\",\"city\":\"Seattle\",\"state\":\"WA\",\"zip\":\"98101\"},\"is_active\":false,\"created_at\":\"2023-09-23T16:30:00Z\",\"last_login\":\"2024-10-05T11:50:00Z\"},{\"id\":6,\"first_name\":\"Olivia\",\"last_name\":\"Taylor\",\"email\":\"olivia.taylor@example.com\",\"username\":\"oliviat123\",\"phone\":\"+1122339988\",\"address\":{\"street\":\"202CedarLn\",\"city\":\"Austin\",\"state\":\"TX\",\"zip\":\"73301\"},\"is_active\":true,\"created_at\":\"2023-02-09T09:45:00Z\",\"last_login\":\"2024-11-15T18:05:00Z\"},{\"id\":7,\"first_name\":\"James\",\"last_name\":\"Wilson\",\"email\":\"james.wilson@example.com\",\"username\":\"jamesw\",\"phone\":\"+1345678901\",\"address\":{\"street\":\"303OakSt\",\"city\":\"Denver\",\"state\":\"CO\",\"zip\":\"80202\"},\"is_active\":true,\"created_at\":\"2021-07-01T10:00:00Z\",\"last_login\":\"2024-11-16T19:15:00Z\"},{\"id\":8,\"first_name\":\"Sophia\",\"last_name\":\"Lee\",\"email\":\"sophia.lee@example.com\",\"username\":\"sophialee\",\"phone\":\"+1456781234\",\"address\":{\"street\":\"404WillowAve\",\"city\":\"Portland\",\"state\":\"OR\",\"zip\":\"97201\"},\"is_active\":false,\"created_at\":\"2020-11-21T15:30:00Z\",\"last_login\":\"2023-05-12T13:00:00Z\"},{\"id\":9,\"first_name\":\"Benjamin\",\"last_name\":\"Harris\",\"email\":\"benjamin.harris@example.com\",\"username\":\"ben_harris\",\"phone\":\"+1567890123\",\"address\":{\"street\":\"505PineSt\",\"city\":\"Miami\",\"state\":\"FL\",\"zip\":\"33101\"},\"is_active\":true,\"created_at\":\"2023-12-02T11:00:00Z\",\"last_login\":\"2024-11-17T20:25:00Z\"},{\"id\":10,\"first_name\":\"Charlotte\",\"last_name\":\"Garcia\",\"email\":\"charlotte.garcia@example.com\",\"username\":\"charlotteg\",\"phone\":\"+1678901234\",\"address\":{\"street\":\"606RedwoodDr\",\"city\":\"Phoenix\",\"state\":\"AZ\",\"zip\":\"85001\"},\"is_active\":true,\"created_at\":\"2023-04-19T17:40:00Z\",\"last_login\":\"2024-11-18T07:30:00Z\"},{\"id\":11,\"first_name\":\"Lucas\",\"last_name\":\"Lopez\",\"email\":\"lucas.lopez@example.com\",\"username\":\"lucaslopez\",\"phone\":\"+1789456123\",\"address\":{\"street\":\"707SpruceAve\",\"city\":\"Boston\",\"state\":\"MA\",\"zip\":\"02108\"},\"is_active\":true,\"created_at\":\"2022-06-14T14:05:00Z\",\"last_login\":\"2024-11-10T22:00:00Z\"},{\"id\":12,\"first_name\":\"Amelia\",\"last_name\":\"Martins\",\"email\":\"amelia.martins@example.com\",\"username\":\"amelia_m\",\"phone\":\"+1896543210\",\"address\":{\"street\":\"808CedarSt\",\"city\":\"SanDiego\",\"state\":\"CA\",\"zip\":\"92101\"},\"is_active\":true,\"created_at\":\"2024-01-29T16:00:00Z\",\"last_login\":\"2024-11-11T08:15:00Z\"},{\"id\":13,\"first_name\":\"Henry\",\"last_name\":\"Jackson\",\"email\":\"henry.jackson@example.com\",\"username\":\"henryjackson\",\"phone\":\"+1234987654\",\"address\":{\"street\":\"909BirchRd\",\"city\":\"LasVegas\",\"state\":\"NV\",\"zip\":\"89101\"},\"is_active\":false,\"created_at\":\"2020-09-30T13:10:00Z\",\"last_login\":\"2024-05-08T12:25:00Z\"}]";
//
//           decodedJson = jsonDecode(json);
//           setState(() {});
//           print("decodedJson ${decodedJson[0]["email"]}");
//           // jsonEncode();
//         },
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }

import 'package:bhagwatgita/provider/theme.dart';
import 'package:bhagwatgita/view/detail.dart';
import 'package:bhagwatgita/view/shivpuran.dart';
import 'package:bhagwatgita/view/splash.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
      ],
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData.light(),
          darkTheme: ThemeData.dark(),
          themeMode: themeProvider.currentTheme,
          routes: {
            "/": (context) => Splash(),
            "home": (context) => Shivpuran(),
            "detail": (context) => Detail(),
          },
        ),
      ),
    ),
  );
}



