import 'package:flutter/material.dart';
import 'package:flutter_provider/models/cart_item.dart';
import 'package:flutter_provider/providers/cart.dart';
import 'package:provider/provider.dart';

import './screens/products_overview_screen.dart';
import './screens/product_detail_screen.dart';
import './providers/all_products.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Cart(),
        ),
        ChangeNotifierProvider(
          create: (context) => Products(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'MyShop',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
          primaryColor: Colors.amber,
          // accentColor: Colors.amber,
          fontFamily: 'Lato',
        ),
        home: ProductsOverviewScreen(),
        // home: ScreenSementara(),
        routes: {
          ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
        },
      ),
    );
  }
}

// class ScreenSementara extends StatelessWidget {
//   List<Text> myList = List.generate(
//     50,
//     (index) => Text(
//       "${index + 1}",
//       style: TextStyle(fontSize: 20),
//     ),
//   );

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: ListView(
//         children: [
//           Container(
//             width: 100,
//             height: 100,
//             color: Colors.blueAccent,
//           ),
//           ...myList,
//           Container(
//             width: 100,
//             height: 100,
//             color: Colors.red,
//           )
//         ],
//       ),
//     );
//   }
// }
