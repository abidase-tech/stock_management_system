import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stockmanagementsystem/widgets/transition_route_observer.dart';

class CoffeePage extends StatelessWidget with TransitionRouteAware {
  /*AnimationController _loadingController = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 1250),
  );*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Store Management System",
          style: TextStyle(
              fontSize: 18.0, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.account_circle))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ClipPath(
              clipper: MyClip(),
              child: Container(
                height: 275.0,
                color: Colors.deepPurple,
                padding: EdgeInsets.all(20),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Column(
                          children: [
                            Text(
                              "12345",
                              style: Theme.of(context).textTheme.headline3,
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text('PRODUCTS FOUND',
                                style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(8),
                                    child: CircleAvatar(
                                      minRadius: 32,
                                      child: Icon(FontAwesomeIcons.store),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        "01",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline5
                                            .copyWith(
                                                color: Colors.white,
                                                letterSpacing: 2.5),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text('STORES',
                                          style: TextStyle(
                                              fontSize: 14.0,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold)),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 40,
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(8),
                                    child: CircleAvatar(
                                      minRadius: 32,
                                      child: Icon(FontAwesomeIcons.userFriends),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        "04",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline5
                                            .copyWith(
                                                color: Colors.white,
                                                letterSpacing: 2.5),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text('USERS',
                                          style: TextStyle(
                                              fontSize: 14.0,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold)),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      /*Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        height: 45.0,
                        margin: EdgeInsets.symmetric(
                            horizontal: 34.0, vertical: 30.0),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            hintText: "Search for the best",
                            hintStyle: TextStyle(color: Colors.deepPurple),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 16.0, vertical: 14.0),
                            suffixIcon: Icon(
                              FontAwesomeIcons.search,
                              size: 14.0,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),*/
                      SizedBox(height: 10.0)
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Our Specials",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey,
                        fontSize: 22.0),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey,
                        fontSize: 14.0),
                  ),
                ],
              ),
            ),
            Container(
              height: 200.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  getItem(1),
                  getItem(2),
                  getItem(3),
                  getItem(2),
                  getItem(4),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Most Popular",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.blueGrey),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0,
                        color: Colors.grey),
                  )
                ],
              ),
            ),
            getSmallItem(1, 14, 4, "Americano", "Strong"),
            getSmallItem(2, 16, 7, "Latte", "Medium"),
            getSmallItem(3, 14, 6, "Flat White", "Soft"),
          ],
        ),
      ),
      drawer: Drawer(
          child: Container(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                children: [
                  DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent,
                    ),
                    //margin: EdgeInsets.symmetric(horizontal: 0),
                    child: Container(
                      child: Column(
                        children: [
                          ListTile(
                            leading: Icon(
                              Icons.account_circle,
                              color: Colors.white,
                              size: 32,
                            ),
                            title: Text(
                              "USER NAME",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Divider(
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Some Extra Information',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("HOME"),
                    onTap: () {},
                    selected: true,
                    //subtitle: Text('Your Dashboard'),
                  ),
                  ListTile(
                    leading: Icon(Icons.add_shopping_cart),
                    title: Text("Products"),
                    onTap: () {},
                    selected: false,
                    //subtitle: Text('Manage Your Products'),
                  ),
                  ListTile(
                    leading: Icon(Icons.show_chart),
                    title: Text("MY ANALYSIS"),
                    onTap: () {},
                    selected: false,
                    //subtitle: Text('Show Analytical Data'),
                  ),
                  ListTile(
                    leading: Icon(Icons.assignment),
                    title: Text("SALSE"),
                    onTap: () {},
                    selected: false,
                    //subtitle: Text('Manage Your Orders'),
                  ),
                  ListTile(
                    leading: Icon(Icons.account_balance),
                    title: Text("IMPORT ORDERS"),
                    onTap: () {},
                    selected: false,
                    //subtitle: Text('Manage Your Orders'),
                  ),
                  ListTile(
                    leading: Icon(Icons.store),
                    title: Text("STORES"),
                    onTap: () {},
                    selected: false,
                    //subtitle: Text('Manage Your Stores'),
                  ),
                  ListTile(
                    leading: Icon(Icons.supervised_user_circle),
                    title: Text("USERS"),
                    onTap: () {},
                    selected: false,
                    //subtitle: Text('Manage Your Products'),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text("SETTINGS"),
                    onTap: () {},
                    selected: false,
                  ),
                  Divider(),
                ],
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Text(
                  'Abidase Tech.\n 2020',
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2
                      .copyWith(color: Colors.deepPurpleAccent),
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ),
      )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurpleAccent,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
    );
  }
}

getItem(img) {
  return Container(
    margin: EdgeInsets.all(2.0),
    width: 150.0,
    decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/ecorp.png"),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(10.0)),
  );
}

getSmallItem(img, price, time, name, flavor) {
  return Padding(
    padding: EdgeInsets.all(10.0),
    child: Card(
      child: Row(
        children: <Widget>[
          Container(
            width: 70.0,
            height: 70.0,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/ecorp.png"),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10.0)),
          ),
          SizedBox(width: 10.0),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "$name",
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5.0),
              Text(
                "$flavor",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14.0,
                ),
              )
            ],
          )),
          Column(
            children: <Widget>[
              Icon(
                FontAwesomeIcons.clock,
                color: Colors.grey,
              ),
              Text(
                "$time days",
                style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(width: 20.0),
          ClipPath(
            clipper: MyClip2(),
            child: Container(
              width: 70.0,
              height: 70.0,
              color: Colors.deepPurple,
              child: Center(
                child: Text(
                  "$price",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22.0,
                      color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    ),
  );
}

class MyClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height - 50.0);
    path.quadraticBezierTo(
        size.width - 70.0, size.height, size.width / 2, size.height - 20);
    path.quadraticBezierTo(size.width / 3.0, size.height - 32, 0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

class MyClip2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.quadraticBezierTo(10, size.height / 2 + 20, 5, size.height / 2);
    path.quadraticBezierTo(0, size.height / 3, 10, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
