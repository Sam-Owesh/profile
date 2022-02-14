import 'package:flutter/material.dart';
//import 'package:weightmanagement/secondScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App",
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final TextEditingController AgeController = TextEditingController();
  // ignore: non_constant_identifier_names
  final TextEditingController NameController = TextEditingController();
  final TextEditingController LocationController = TextEditingController();
  final TextEditingController DateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Create Account',
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            "Profile Page",
            style: TextStyle(fontSize: 19.0),
          ),
          backgroundColor: Colors.deepPurple,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            //mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
                
              ),
              Flexible(
                child: Container(
                   padding: EdgeInsets.all(10.0),
                  // width: 100.0,
                  //  height: 40.0,
                  child: TextFormField(
                    controller: NameController,
                    decoration: InputDecoration(
                        //fillColor: Colors.blue.withOpacity(0.3),
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20.0),
                            ),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            )),
                        labelText: "Name"),
                    keyboardType: TextInputType.text,
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Flexible(
                child: Container(
                    padding: EdgeInsets.all(10.0),
                  //  width: 50.0,
                  //  height: 40.0,
                  child: TextField(
                    controller: AgeController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                        ),
                        labelText: "Age"),
                    keyboardType: TextInputType.text,
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Flexible(
                child: Container(
                   padding: EdgeInsets.all(10.0),
                  //  width: 50.0,
                  //  height: 40.0,
                  child: TextField(
                    controller: LocationController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                        ),
                        labelText: "LOCATION"),
                    keyboardType: TextInputType.text,
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Flexible(
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  //  width: 50.0,
                  //  height: 40.0,
                  child: TextField(
                    controller: DateController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                      ),
                      labelText: "date of birth",
                      hintText: 'dd-mm-yyyy',
                    ),
                    keyboardType: TextInputType.text,
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              //  ElevatedButton(
              //  onPressed: () {
              //    Navigator.of(context).push(
              //    MaterialPageRoute(
              //    builder: (BuildContext context) => Inquire(),
              //),
              //);
              //},
              // child: Text("SUBMIT"),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
