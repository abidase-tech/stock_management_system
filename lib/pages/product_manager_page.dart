import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:stockmanagementsystem/widgets/transition_route_observer.dart';

class ProductManagementPage extends StatelessWidget with TransitionRouteAware {
  static const routeName = '/productManagement';
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 220,
              flexibleSpace: Container(
                height: 196,
                color: Colors.deepPurple,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      '4321',
                      style: Theme.of(context).textTheme.headline2.copyWith(
                            color: Colors.deepOrangeAccent,
                            fontWeight: FontWeight.bold,
                            fontSize: 48,
                          ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text('TOTAL PRODUCT ITEMS',
                        style: Theme.of(context)
                            .textTheme
                            .caption
                            .copyWith(color: Colors.white70)),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              bottom: TabBar(
                tabs: [
                  Tab(
                    text: 'Products',
                    icon: Icon(Icons.add_shopping_cart),
                  ),
                  Tab(
                    text: 'Brands',
                    icon: Icon(Icons.branding_watermark),
                  ),
                  Tab(
                    text: 'Categories',
                    icon: Icon(Icons.category),
                  ),
                ],
              ),
            ),
            SliverFillRemaining(
              child: Container(
                color: Colors.white,
                child: TabBarView(
                  children: [
                    Icon(Icons.directions_car),
                    Icon(Icons.directions_transit),
                    Icon(Icons.directions_bike),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
