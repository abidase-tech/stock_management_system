import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:responsive_scaffold/templates/layout/scaffold.dart';
import 'package:stockmanagementsystem/pages/product/product_checkin_page.dart';
import 'package:stockmanagementsystem/pages/product/product_checkout_page.dart';
import 'package:stockmanagementsystem/widgets/containers/statistics_widget.dart';
import 'package:stockmanagementsystem/widgets/fi_chart_sample1.dart';
import 'package:stockmanagementsystem/widgets/fi_chart_sample2.dart';
import 'package:stockmanagementsystem/widgets/navbar.dart';
import 'package:stockmanagementsystem/widgets/transition_route_observer.dart';

import 'cofee_page.dart';

class MyDashboard extends StatefulWidget {
  static const routeName = '/my_dashboard';

  @override
  _MyDashboardState createState() => _MyDashboardState();
}

class _MyDashboardState extends State<MyDashboard>
    with SingleTickerProviderStateMixin, TransitionRouteAware {
  Future<bool> _goToLogin(BuildContext context) {
    return Navigator.of(context)
        .pushReplacementNamed('/')
        // we dont want to pop the screen, just replace it completely
        .then((_) => false);
  }

  final routeObserver = TransitionRouteObserver<PageRoute>();
  //static const headerAniInterval = const Interval(.1, .3, curve: Curves.easeOut);
  AnimationController _loadingController;

  bool _dialVisible;

  @override
  void initState() {
    super.initState();
    _loadingController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1250),
    );
    _dialVisible = true;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    routeObserver.subscribe(this, ModalRoute.of(context));
  }

  @override
  void dispose() {
    routeObserver.unsubscribe(this);
    _loadingController.dispose();
    super.dispose();
  }

  @override
  void didPushAfterTransition() => _loadingController.forward();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => _goToLogin(context),
      child: ResponsiveScaffold(
        appBarElevation: 4,
        title: Text(
          "Store Management System",
          style: TextStyle(
              fontSize: 18.0, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        //menuIcon: null,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              ClipPath(
                clipper: MyClip(),
                child: Container(
                  height: 200.0,
                  color: Colors.deepPurple,
                  padding: EdgeInsets.all(16),
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
                                style: Theme.of(context)
                                    .textTheme
                                    .headline4
                                    .copyWith(color: Colors.deepOrange),
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
                          height: 16,
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(12),
                                      child: CircleAvatar(
                                        minRadius: 24,
                                        child: Icon(Icons.store),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "01",
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline6
                                              .copyWith(
                                                color: Colors.white,
                                              ),
                                        ),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Text('STORES',
                                            style: TextStyle(
                                              fontSize: 12.0,
                                              color: Colors.white70,
                                            )),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(12),
                                      child: CircleAvatar(
                                        minRadius: 24,
                                        child: Icon(Icons.group),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "04",
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline6
                                              .copyWith(
                                                color: Colors.white,
                                              ),
                                        ),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Text('USERS',
                                            style: TextStyle(
                                              fontSize: 12.0,
                                              color: Colors.white70,
                                            )),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10.0)
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Wrap(
                direction: Axis.horizontal,
                runAlignment: WrapAlignment.spaceBetween,
                crossAxisAlignment: WrapCrossAlignment.start,
                spacing: 10.0,
                runSpacing: 10,
                children: [
                  Hero(
                    tag: 'product.item.hero',
                    child: StatisticsWidget(
                      backgroundColor: Colors.deepPurpleAccent,
                      text: '4530',
                      icon: Icon(
                        Icons.receipt,
                        color: Colors.deepPurple,
                      ),
                      secondaryText: 'Products',
                      ontap: () {
                        Navigator.of(context).pushNamed('/products/dashboard');
                      },
                    ),
                  ),
                  StatisticsWidget(
                    backgroundColor: Colors.pink,
                    text: '468',
                    icon: Icon(
                      Icons.credit_card,
                      color: Colors.pink,
                    ),
                    secondaryText: 'Brands',
                  ),
                  StatisticsWidget(
                    backgroundColor: Colors.blue,
                    text: '129',
                    icon: Icon(
                      Icons.add_shopping_cart,
                      color: Colors.blue,
                    ),
                    secondaryText: 'Import Orders',
                  ),
                  StatisticsWidget(
                    backgroundColor: Colors.green[500],
                    text: '4530',
                    icon: Icon(
                      Icons.receipt,
                      color: Colors.green,
                    ),
                    secondaryText: 'Sales Orders',
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Analytical Data",
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
              Container(
                //height: 200.0,
                padding: EdgeInsets.all(16),
                child: LineChartSample2(),
              ),
              Container(
                //height: 200.0,
                padding: EdgeInsets.all(16),
                child: LineChartSample1(),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Most Recent",
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
              getSmallItem(1, 140, 4, "Tinner", "Brand 1"),
              getSmallItem(2, 160, 7, "Paint", "Brand 1"),
              getSmallItem(3, 140, 6, "Flat White", "Brand 3"),
            ],
          ),
        ),
        drawer: Navbar(),
        floatingActionButton: SpeedDial(
          marginRight: 18,
          marginBottom: 20,
          animatedIcon: AnimatedIcons.menu_close,
          animatedIconTheme: IconThemeData(size: 22.0),
          // this is ignored if animatedIcon is non null
          // child: Icon(Icons.add),
          visible: _dialVisible,
          // If true user is forced to close dial manually
          // by tapping main button and overlay is not rendered.
          closeManually: false,
          curve: Curves.bounceIn,
          overlayColor: Colors.black,
          overlayOpacity: 0.5,
          onOpen: () => print('OPENING DIAL'),
          onClose: () => print('DIAL CLOSED'),
          tooltip: 'Quick Actions',
          heroTag: 'speed-dial-hero-tag',
          backgroundColor: Colors.deepOrange,
          foregroundColor: Colors.white,
          elevation: 10.0,
          shape: CircleBorder(),
          children: [
            SpeedDialChild(
                child: Icon(Icons.add, color: Colors.white),
                backgroundColor: Colors.red,
                label: 'Checkins',
                labelStyle: TextStyle(fontSize: 18.0),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ProductCheckinPage()));
                }),
            SpeedDialChild(
              child: Icon(Icons.assignment, color: Colors.white),
              backgroundColor: Colors.blue,
              label: 'Checkouts',
              labelStyle: TextStyle(fontSize: 18.0),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ProductCheckoutPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
