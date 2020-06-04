import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stockmanagementsystem/pages/login_page.dart';
import 'package:stockmanagementsystem/pages/my_dashboard.dart';
import 'package:stockmanagementsystem/pages/product/product_management_dashboard.dart';
import 'package:stockmanagementsystem/widgets/transition_route_observer.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      systemNavigationBarColor:
          SystemUiOverlayStyle.dark.systemNavigationBarColor,
    ),
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Abidase Stock MS',
      debugShowCheckedModeBanner: false,
      //initialRoute: LoginPage.routeName,
      theme: ThemeData(
        //primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: Colors.deepPurple,
        accentColor: Colors.orange,
        cursorColor: Colors.orange,

        // fontFamily: 'SourceSansPro',
        textTheme: GoogleFonts.ubuntuTextTheme(),
        /*
        textTheme: TextTheme(
          /*display2: TextStyle(
            fontFamily: 'OpenSans',
            fontSize: 38.0,
            // fontWeight: FontWeight.w400,
            color: Colors.orange,
          ),*/
          display2: GoogleFonts.ubuntu(
            fontSize: 38,
            color: Colors.deepOrange,
          ),
          button: TextStyle(
            // OpenSans is similar to NotoSans but the uppercases look a bit better IMO
            fontFamily: 'OpenSans',
          ),
          caption: TextStyle(
            fontFamily: 'NotoSans',
            fontSize: 12.0,
            fontWeight: FontWeight.normal,
            color: Colors.deepPurple[300],
          ),
          /*display4: TextStyle(fontFamily: 'Quicksand'),
          display3: TextStyle(fontFamily: 'Quicksand'),
          display1: TextStyle(fontFamily: 'Quicksand'),
          headline: TextStyle(fontFamily: 'NotoSans'),
          title: TextStyle(fontFamily: 'NotoSans'),
          subhead: TextStyle(fontFamily: 'NotoSans'),
          body2: TextStyle(fontFamily: 'NotoSans'),
          body1: TextStyle(fontFamily: 'NotoSans'),
          subtitle: TextStyle(fontFamily: 'NotoSans'),*/
          overline: TextStyle(fontFamily: 'NotoSans'),
        ),
        */
      ),
      home: LoginPage(),
      navigatorObservers: [TransitionRouteObserver()],
      routes: {
        LoginPage.routeName: (context) => LoginPage(),
        MyDashboard.routeName: (context) => MyDashboard(),
        ProductManagementDashboard.routeName: (context) =>
            ProductManagementDashboard()
      },
    );
  }
}
