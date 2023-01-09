import "package:flutter/material.dart";
import './screens/first.dart';
import './screens/home.dart';

// void main() {
//   runApp(myflutterApp());
// }
// void main(){
//   runApp(MaterialApp(
//     home:Scaffold(
//       appBar: AppBar(title: Text("app bar"),),
//       body: getListView(),
//
//     )
//   ));
// }

// class myflutterApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//         title: "flutter app",
//         home:home()
//         // Scaffold(
//         //   appBar: AppBar(title:Text("app screen title")),
//         //   body:first(),
//         //
//         // )
//     );
//
//   }
//
// }
//
// Widget getListView() {
//
//   var listView = ListView(
//     children: [
//
//       ListTile(
//         leading: Icon(Icons.landscape),
//         title: Text("Landscape"),
//         subtitle: Text("Beautiful View !"),
//         trailing: Icon(Icons.wb_sunny),
//         onTap: () {
//           debugPrint("Landscape tapped");
//         },
//       ),
//
//       ListTile(
//         leading: Icon(Icons.laptop_chromebook),
//         title: Text("Windows"),
//       ),
//
//       ListTile(
//         leading: Icon(Icons.phone),
//         title: Text("Phone"),
//       ),
//
// //      Text("Yet another element in List"),
//
// //      Container(color: Colors.red, height: 50.0,)
//
//     ],
//   );
//
//   return listView;
// }

// void main() {
//   runApp(MaterialApp(
//
//     title: "Exploring UI widgets",
//
//     home: Scaffold(
//       appBar: AppBar(title: Text("Long List"),),
//       body: getListView(),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           debugPrint("FAB clicked");
//         },
//         child: Icon(Icons.add),
//         tooltip: 'Add One More Item',
//       ),
//     ),
//
//   ));
// }
//
// void showSnackBar(BuildContext context, String item) {
//   var snackBar = SnackBar(
//     content: Text("You just tapped $item"),
//     action: SnackBarAction(
//         label: "UNDO",
//         onPressed: () {
//           debugPrint('Performing dummy UNDO operation');
//         }
//     ),
//   );
//
//   ScaffoldMessenger.of(context).showSnackBar(snackBar);
// }
//
// List<String> getListElements() {
//
//   var items = List<String>.generate(1000, (counter) => "Item $counter");
//   return items;
// }
//
// Widget getListView() {
//
//   var listItems = getListElements();
//
//   var listView = ListView.builder(
//       itemBuilder: (context, index) {
//
//         return ListTile(
//           leading: Icon(Icons.arrow_right),
//           title: Text(listItems[index]),
//           onTap: () {
//             showSnackBar(context, listItems[index]);
//           },
//         );
//       }
//   );
//
//   return listView;
// }

//simple textarea submiting and recieving data
void main() {

  runApp(
      MaterialApp(
        title: "Sateful App Example",
        home: FavoriteCity(),
      )
  );
}

class FavoriteCity extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _FavoriteCityState();
  }
}

class _FavoriteCityState extends State<FavoriteCity> {

  String nameCity = "";

  @override
  Widget build(BuildContext context) {

    debugPrint("Favorite City widget is created");

    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful App Example"),
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            TextField(
              onSubmitted: (String userInput) {
                setState(() {
                  debugPrint("set State is called, this tells framwork to redraw the FavCity widget");
                  nameCity = userInput;
                });
              },
            ),
            Padding(
                padding: EdgeInsets.all(30.0),
                child: Text(
                  "Your bext city is $nameCity",
                  style: TextStyle(fontSize: 20.0),
                ))
          ],
        ),
      ),
    );
  }
}