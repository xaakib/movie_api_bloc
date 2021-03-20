import 'package:flutter/material.dart';
import 'package:movie_api_bloc/src/services/service_api.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  ServicesApi servicesApi = ServicesApi();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MovieApp"),
      ),
      body: Column(
        children: [
          Container(
            height: 500,
            color: Colors.red,
            child: FutureBuilder(
                future: servicesApi.getMovies(),
                builder: (context, index) {
                  return Container(
                    height: 200,
                    color: Colors.yellow,
                  );
                }),
          ),
        ],
      ),
    );
  }
}
