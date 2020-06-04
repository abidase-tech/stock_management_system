import 'package:flutter/material.dart';
import 'package:stockmanagementsystem/pages/product/product_management_dashboard.dart';
import 'package:stockmanagementsystem/pages/tabbed_page.dart';

class Navbar extends StatefulWidget {
  @override
  _NavbarState createState() {
    return _NavbarState();
  }
}

class _NavbarState extends State<Navbar> {
  List<ListTile> menuItems;
  int activeMenu;

  @override
  void initState() {
    super.initState();
    activeMenu = 0;
    menuItems = [
      ListTile(
        leading: Icon(Icons.home),
        title: Text("Home"),
        onTap: () {
          setState(() {
            switchMenu(0);
          });
        },
        selected: true,
        //subtitle: Text('Manage Your Products'),
      ),
      ListTile(
        leading: Icon(Icons.add_shopping_cart),
        title: Text("Products"),
        onTap: () {
          Navigator.of(context).pushNamed(ProductManagementDashboard.routeName
          );
        },
        selected: false,
        //subtitle: Text('Manage Your Products'),
      ),
      ListTile(
        leading: Icon(Icons.show_chart),
        title: Text("MY ANALYSIS"),
        onTap: () {
          setState(() {
            switchMenu(2);
          });
        },
        selected: false,
        //subtitle: Text('Show Analytical Data'),
      ),
      ListTile(
        leading: Icon(Icons.assignment),
        title: Text("SALSE"),
        onTap: () {
          setState(() {
            switchMenu(3);
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => TabbedPage()));
          });
        },
        selected: false,
        //subtitle: Text('Manage Your Orders'),
      ),
      ListTile(
        leading: Icon(Icons.account_balance),
        title: Text("IMPORT ORDERS"),
        onTap: () {
          setState(() {
            switchMenu(4);
          });
        },
        selected: false,
        //subtitle: Text('Manage Your Orders'),
      ),
      ListTile(
        leading: Icon(Icons.store),
        title: Text("STORES"),
        onTap: () {
          setState(() {
            switchMenu(5);
          });
        },
        selected: false,
        //subtitle: Text('Manage Your Stores'),
      ),
      ListTile(
        leading: Icon(Icons.supervised_user_circle),
        title: Text("USERS"),
        onTap: () {
          setState(() {
            switchMenu(6);
          });
        },
        selected: false,
        //subtitle: Text('Manage Your Products'),
      ),
      //Divider(),
      ListTile(
        leading: Icon(Icons.settings),
        title: Text("SETTINGS"),
        onTap: () {
          setState(() {
            switchMenu(7);
          });
        },
        selected: false,
      ),
      //Divider(),
    ];
  }

  void switchMenu(int newIndex) {
    ListTile oldTile = menuItems[activeMenu];
    menuItems[activeMenu] = ListTile(
      leading: oldTile.leading,
      title: oldTile.title,
      selected: false,
      onTap: oldTile.onTap,
    );
    ListTile newTile = menuItems[newIndex];
    menuItems[newIndex] = ListTile(
      leading: newTile.leading,
      title: newTile.title,
      selected: true,
      onTap: newTile.onTap,
    );
    activeMenu = newIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(

      elevation: 5.0,
      child: Column(
        children: [
          // Drawer Header
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.deepPurple,
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
                ],
              ),
            ),
          ),

          // Drawer Menu Item List
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
              children: menuItems,
            ),
          ),

          // Drawer Footer
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
    );
  }
}
