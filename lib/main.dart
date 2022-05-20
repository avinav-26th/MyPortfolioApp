// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: Home(),
//   ));
// }
//
// class Home extends StatelessWidget {
//   const Home({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('My Portfolio App'),
//       ),
//       body: Column(
//         children: <Widget>[
//           const Padding(
//             padding: EdgeInsets.only(top: 30.0),
//             child: Text(
//               'Hey, I am Avinav',
//               style: TextStyle(
//                 fontSize: 20.0,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ),
//           Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Row(
//                 children: [
//                   CircleAvatar(
//                     radius: 40.0,
//                   ),
//                 ],
//               ),
//               Row(
//                 children: const [
//                   Icon(Icons.mail_outline),
//                   Text('mail id'),
//                 ],
//               ),
//               Row(
//                 children: const [
//                   Icon(Icons.location_on),
//                   Text('mail id'),
//                 ],
//               ),
//               Row(
//                 children: const [
//                   Icon(Icons.shopping_bag),
//                   Text('mail id'),
//                 ],
//               ),
//               Row(
//                 children: const [
//                   Icon(Icons.account_circle),
//                   Text('account details'),
//                 ],
//               ),
//             ],
//           ),
//           const SizedBox(
//             height: 100,
//             width: 10,
//           )
//         ],
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({required this.title, Key? key}) : super(key: key);

  // Fields in a Widget subclass are always marked "final".

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0, // in logical pixels
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color: Colors.blue[500]),
      // Row is a horizontal, linear layout.
      child: Row(
        // <Widget> is the type of items in the list.
        children: [
          const IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigation menu',
            onPressed: null, // null disables the button
          ),
          // Expanded expands its child
          // to fill the available space.
          Expanded(
            child: title,
          ),
          const IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
    );
  }
}

class MyScaffold extends StatelessWidget {
  const MyScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Material is a conceptual piece
    // of paper on which the UI appears.
    return Material(
      // Column is a vertical, linear layout.
      child: Column(
        children: [
          MyAppBar(
            title: Text(
              'Example title',
              style: Theme.of(context) //
                  .primaryTextTheme
                  .headline6,
            ),
          ),
          const Expanded(
            child: Center(
              child: Text('Hello, world!'),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(
    const MaterialApp(
      title: 'My app', // used by the OS task switcher
      home: SafeArea(
        child: MyScaffold(),
      ),
    ),
  );
}
