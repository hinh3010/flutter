// ignore_for_file: unused_import
import 'package:flutter/material.dart';
import 'package:flutter_200lab/app_fonts.dart';
import 'package:flutter_200lab/app_styles.dart';
import 'package:flutter_200lab/app_ui.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

// gõ stl
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // bỏ nut debug trên giao diện
      theme: ThemeData(primaryColor: Colors.lightBlue),
      home: const HomePage15(), // render ra class HomePage
    );
  }
}

// home 10 - html
/* 
// class HomePage10 extends StatelessWidget {
//   const HomePage10({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // là cái đầu tiên của cái app
//       appBar: AppBar(
//           // icon
//           leading: IconButton(
//             icon: const Icon(Icons.ac_unit),
//             onPressed: () {
//               // ignore: avoid_print
//               print('leading');
//             },
//           ),
//           title: const Text('adu')),
//       body: const Center(
//           // image
//           // child: Image.network(
//           //     'https://1.bp.blogspot.com/-9rbyD0sIHIw/XpaIttxXgNI/AAAAAAAAkF0/ximARPnkFlo9CyHF812TZBBSS36KIxNrQCLcBGAsYHQ/s1600/girl-xinh-va-con-gio-nhe-hinh-nen-sieu-cute.jpg'),

//           // button
//           //     child: TextButton(
//           //   onPressed: () {
//           //     // ignore: avoid_print
//           //     print('click');
//           //   },
//           //   child: const Text('Click me'),
//           // )

//           // button-icon  với TextButton và ElevatedButton
//           // child: ElevatedButton.icon(
//           //     icon: Icon(Icons.ac_unit_outlined),
//           //     label: Text('icon'),
//           //     onPressed: () {
//           //       // ignore: avoid_print
//           //       print('click nè!');
//           //     })

//           child: Text.rich(TextSpan(
//               text: 'HI ',
//               style: TextStyle(
//                 fontSize: 32,
//               ),
//               children: [
//             TextSpan(
//                 text: 'adu',
//                 style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 32,
//                     color: Color.fromARGB(255, 20, 89, 147)))
//           ]))
//           // text
//           //   child: Text('this is the first widget in my flutter app',
//           //       // sủ lý khi text chạy quá chiều ngang UI
//           //       overflow: TextOverflow.fade,
//           //       maxLines: 1, // dùng kết hợp với fade
//           //       style: TextStyle(
//           //         fontSize: 32,
//           //         fontWeight: FontWeight.bold,
//           //         // backgroundColor: Colors.blue,
//           //       )),
//           ),
//     );
//   }
// }
*/

// home 11 - css
/* 
// class HomePage11 extends StatelessWidget {
//   const HomePage11({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         // là cái đầu tiên của cái app
//         appBar: AppBar(
//             // icon
//             leading: IconButton(
//               icon: const Icon(Icons.ac_unit),
//               onPressed: () {
//                 // ignore: avoid_print
//                 print('leading');
//               },
//             ),
//             title: const Text('adu')),
//         // ignore: avoid_unnecessary_containers
//         body: Container(
//           child: Wrap(
//             direction: Axis.horizontal, // tự động đẩy xuống dòng theo chiều

//             //   child: Row(
//             //   child: Column(
//             // mainAxisSize: MainAxisSize.max,
//             // mainAxisAlignment: MainAxisAlignment.spaceAround,
//             // crossAxisAlignment: CrossAxisAlignment.end,
//             children: [
//               // Expanded giống flex
//               //   Expanded(
//               //       flex: 1,
//               //       child: Container(width: 100, height: 100, color: Colors.red)),
//               //   Expanded(
//               //       flex: 2,
//               //       child:
//               //           Container(width: 100, height: 100, color: Colors.blue)),

//               Container(width: 300, height: 100, color: Colors.red),
//               Container(width: 100, height: 100, color: Colors.blue),
//               Container(width: 100, height: 100, color: Colors.yellow),
//             ],
//           ),
//         ));
//   }
// }
*/

// home 12 - Stateful Widget - setState
/*
class HomePage12 extends StatefulWidget {
  const HomePage12({Key? key}) : super(key: key);

  @override
  State<HomePage12> createState() => _HomePage12State();
}

class _HomePage12State extends State<HomePage12> {
  int dem = 0;
  onChange() {
    setState(() => dem++);
  }

  @override
  Widget build(BuildContext context) {
    // return Container();
    return Scaffold(
      appBar: AppBar(
        title: const Text('adu'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$dem',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: onChange,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
*/

// home 15
class HomePage15 extends StatelessWidget {
  const HomePage15({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // ignore: avoid_unnecessary_containers
        // body: Container(
        //     // child:  Image.asset('assets/images/s21ultra.png')
        //     child: Image.asset(AppUI.imageS21ultra))
        body: Center(
            child: Text('welcome to app mobie',
                // style: TextStyle(fontSize: 40, fontFamily: 'Sen')
                // style: AppStyles.h2.copyWith(color: Colors.blue)
                style: AppStyles.h3)));
    // dùng copyWith để ghi đè css
  }
}
