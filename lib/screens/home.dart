import 'package:flutter/material.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(

        // child:Container(
        //   margin: EdgeInsets.all(30.0),
        //     color: Colors.red,
        child: Container(
            // width: 200.0,
            // height: 100.0,
            // margin: EdgeInsets.only(left: 30.0,bottom: 30.0),
            alignment: Alignment.center,
            // margin: EdgeInsets.all(30.0),
            color: Colors.amberAccent,
            padding: EdgeInsets.only(top: 60.0, left: 20.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                        child: Container(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "home page5",
                              style: TextStyle(
                                  fontSize: 30.0, color: Colors.white),
                              textDirection: TextDirection.ltr,
                            ))),
                    Expanded(
                        child: Text(
                      "home page2",
                      style: TextStyle(fontSize: 30.0, color: Colors.white),
                      textDirection: TextDirection.ltr,
                    )),
                    Expanded(
                        child: Text(
                      "home page3",
                      style: TextStyle(fontSize: 30.0, color: Colors.white),
                      textDirection: TextDirection.ltr,
                    )),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: Text(
                      "home page1",
                      style: TextStyle(fontSize: 30.0, color: Colors.white),
                      textDirection: TextDirection.ltr,
                    )),
                    Expanded(
                        child: Text(
                      "home page2",
                      style: TextStyle(fontSize: 30.0, color: Colors.white),
                      textDirection: TextDirection.ltr,
                    )),
                    Expanded(
                        child: Text(
                      "home page3",
                      style: TextStyle(fontSize: 30.0, color: Colors.white),
                      textDirection: TextDirection.ltr,
                    )),
                  ],
                ),
                img(),
                btn()
              ],
            )

            // Text(
            //   "home page",
            //   style: TextStyle(fontSize: 30.0,color: Colors.white),
            //   textDirection: TextDirection.ltr,
            // ),
            )
        // ),
        );
  }
}

class img extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetimg = AssetImage("images/oomd1.png");
    Image img1 = Image(
      image: assetimg,
      width: 300.0,
      height: 300.0,
    );
    return img1;
  }
}

class btn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      width: 100.0,
      height: 50.0,
      child: TextButton(
        child: Text(
          "Button",
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        ),
        onPressed: () {
          book(context);
        },
      ),
    );
  }
}

void book(BuildContext context) {
  var alert = AlertDialog(
    title: Text("succesfull"),
    content: Text("happy journey"),
  );
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      });
}
