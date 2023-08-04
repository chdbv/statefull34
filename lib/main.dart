import 'package:flutter/material.dart';

void main() {
  runApp(const MyCalculatorApp());
}

class MyCalculatorApp extends StatelessWidget {
  const MyCalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CalculatorScreen(),
    );
  }
}

///////////////////////////////////////////////////////
///
///
///
///

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String symbol = '';
  double number1 = 0;
  double number2 = 0;
  double result = 0;

  String get symbol1 => '+';
  String get symbol2 => '-';
  String get symbol3 => '*';
  String get symbol4 => '/';

  void calulator1(String s) {
    setState(() {
      result = number1 + number2;
      symbol = symbol1;
    });
  }

  void calulator2(String s) {
    setState(() {
      result = number1 - number2;
      symbol = symbol2;
    });
  }

  void calulator3(String s) {
    setState(() {
      result = number1 * number2;
      symbol = symbol3;
    });
  }

  void calulator4(String s) {
    setState(() {
      result = number1 / number2;
      symbol = symbol4;
    });
  }

  void calulator5(String s) {
    setState(() {
      result = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          'Калькулятор',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        )),
        backgroundColor: Colors.black12,
      ),
      backgroundColor: const Color.fromARGB(221, 0, 0, 0),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 90),
              child: TextField(
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    number1 = double.tryParse(value) ?? 0.0;
                  });
                },
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              symbol,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 90),
              child: TextField(
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    number2 = double.tryParse(value) ?? 0.0;
                  });
                },
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              ' =$result',
              style: const TextStyle(fontSize: 50, color: Colors.white),
            ),
            const SizedBox(
              height: 20,
            ),
            //////////////////////////////////////////////////////////////////////////////////////////////////
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            calulator1('+');
                          });
                        },
                        child: Text('+'),
                        style: ElevatedButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 35),
                          minimumSize: const Size(80, 80),
                          backgroundColor:
                              const Color.fromARGB(255, 248, 114, 5),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            calulator3('*');
                          });
                        },
                        child: Text('*'),
                        style: ElevatedButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 35),
                          minimumSize: const Size(80, 80),
                          backgroundColor:
                              const Color.fromARGB(255, 248, 114, 5),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            calulator2('-');
                          });
                        },
                        child: Text('-'),
                        style: ElevatedButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 35),
                          minimumSize: const Size(80, 80),
                          backgroundColor:
                              const Color.fromARGB(255, 248, 114, 5),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            calulator4('/');
                          });
                        },
                        child: Text('/'),
                        style: ElevatedButton.styleFrom(
                            textStyle: const TextStyle(fontSize: 30),
                            minimumSize: const Size(80, 80),
                            backgroundColor:
                                const Color.fromARGB(255, 248, 114, 5)),
                      ),
                    ],
                    //////////////////
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        calulator1('=');
                      });
                    },
                    child: Text('='),
                    style: ElevatedButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 35),
                        minimumSize: const Size(80, 170),
                        backgroundColor:
                            const Color.fromARGB(255, 248, 114, 5)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyCalculatorApp());
// }

// class MyCalculatorApp extends StatelessWidget {
//   const MyCalculatorApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: CalculatorScreen(),
//     );
//   }
// }

// ///////////////////////////////////////////////////////
// ///
// ///
// ///
// ///

// class CalculatorScreen extends StatefulWidget {
//   const CalculatorScreen({super.key});

//   @override
//   _CalculatorScreenState createState() => _CalculatorScreenState();
// }

// class _CalculatorScreenState extends State<CalculatorScreen> {
// ////////////////////////////
//   String symbol = '';
// /////////////////////////
//   double number1 = 0;
//   double number2 = 0;
//   double result = 0;
// /////////////////////////////
//  void calulator() {
//   setState(() {
//     result += number2;
    
//   });
// }

  

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Center(
//             child: Text(
//           'Калькулятор',
//           style: TextStyle(
//             fontSize: 24,
//             fontWeight: FontWeight.bold,
//             color: Colors.white,
//           ),
//         )),
//         backgroundColor: Colors.black12,
//       ),
//       backgroundColor: const Color.fromARGB(221, 0, 0, 0),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 90),
//               child: TextField(
//                 keyboardType: TextInputType.number,
//                 onChanged: (value) {
//                   setState(() {
//                     number1 = double.tryParse(value) ?? 0.0;
//                   });
//                 },
//                 style: const TextStyle(color: Colors.white),
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10.0),
//                   ),
//                   enabledBorder: OutlineInputBorder(
//                     borderSide: const BorderSide(color: Colors.white),
//                     borderRadius: BorderRadius.circular(10.0),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderSide: const BorderSide(color: Colors.white),
//                     borderRadius: BorderRadius.circular(10.0),
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             Text(
//               symbol,
//               style: TextStyle(
//                 fontSize: 30,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.white,
//               ),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 90),
//               child: TextField(
//                 keyboardType: TextInputType.number,
//                 onChanged: (value) {
//                   setState(() {
//                     number2 = double.tryParse(value) ?? 0.0;
//                   });
//                 },
//                 style: const TextStyle(color: Colors.white),
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10.0),
//                   ),
//                   enabledBorder: OutlineInputBorder(
//                     borderSide: const BorderSide(color: Colors.white),
//                     borderRadius: BorderRadius.circular(10.0),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderSide: const BorderSide(color: Colors.white),
//                     borderRadius: BorderRadius.circular(10.0),
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 20),
//             Text(
//               ' $result',
//               style: const TextStyle(fontSize: 50, color: Colors.white),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 70),
//               child: Column(
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       ElevatedButton(
//                         onPressed: () {
//                           setState(() {
//                             symbol = '+';
//                           });
//                         },
//                         child: Text('+'),
//                         style: ElevatedButton.styleFrom(
//                           textStyle: const TextStyle(fontSize: 35),
//                           minimumSize: const Size(80, 80),
//                           backgroundColor:
//                               const Color.fromARGB(255, 248, 114, 5),
//                         ),
//                       ),
//                       ElevatedButton(
//                         onPressed: () {
//                           setState(() {
//                             symbol = '-';
//                           });
//                         },
//                         child: Text('-'),
//                         style: ElevatedButton.styleFrom(
//                           textStyle: const TextStyle(fontSize: 35),
//                           minimumSize: const Size(80, 80),
//                           backgroundColor:
//                               const Color.fromARGB(255, 248, 114, 5),
//                         ),
//                       ),
//                   //     ElevatedButton(
//                   //       onPressed: calulator3,
//                   //       child: Text('C'),
//                   //       style: ElevatedButton.styleFrom(
//                   //           textStyle: const TextStyle(fontSize: 35),
//                   //           minimumSize: const Size(80, 80),
//                   //           backgroundColor:
//                   //               const Color.fromARGB(255, 248, 114, 5)),
//                   //     ),
//                   //   ],
//                   // ),
//                   // SizedBox(
//                   //   height: 20,
//                   // ),
//                   // Row(
//                   //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   //   children: [
//                   //     ElevatedButton(
//                   //       onPressed: () {
//                   //         setState(() {
//                   //           symbol = '*';
//                   //         });
//                   //       },
//                   //       child: Text('*'),
//                   //       style: ElevatedButton.styleFrom(
//                   //         textStyle: const TextStyle(fontSize: 35),
//                   //         minimumSize: const Size(80, 80),
//                   //         backgroundColor:
//                   //             const Color.fromARGB(255, 248, 114, 5),
//                   //       ),
//                   //     ),
//                   //     ElevatedButton(
//                   //       onPressed: () {
//                   //         setState(() {
//                   //           symbol = '/';
//                   //         });
//                   //       },
//                   //       child: Text('/'),
//                   //       style: ElevatedButton.styleFrom(
//                   //         textStyle: const TextStyle(fontSize: 35),
//                   //         minimumSize: const Size(80, 80),
//                   //         backgroundColor:
//                   //             const Color.fromARGB(255, 248, 114, 5),
//                   //       ),
//                   //     ),
//                       ElevatedButton(
//                         onPressed: calulator, 
//                         child: Text('='),
//                         style: ElevatedButton.styleFrom(
//                             textStyle: const TextStyle(fontSize: 35),
//                             minimumSize: const Size(80, 80),
//                             backgroundColor:
//                                 const Color.fromARGB(255, 248, 114, 5)),
//                       ),
//                     ],
//                   )
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }