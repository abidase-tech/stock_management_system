import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:stockmanagementsystem/widgets/containers/statistics_widget.dart';

class ProductItemManagementPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Manage Product Items'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          //FlatButton.icon(onPressed: () {}, icon: Icon(Icons.search), label: null),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Container(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                height: 45.0,
                margin: EdgeInsets.symmetric(horizontal: 24.0, vertical: 24.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    hintText: "Search for the best",
                    hintStyle: TextStyle(color: Colors.deepPurple),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
                    suffixIcon: Icon(
                      Icons.search,
                      size: 14.0,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.elliptical(8, 12))),
                elevation: 4.0,
                color: Colors.deepPurple,
                child: Container(
                  height: 156,
                  child: InkWell(
                    splashColor: Colors.white,
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 18.0, vertical: 4),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '12345',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline4
                                          .copyWith(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  minRadius: 32.0,
                                  child: Icon(
                                    Icons.add_shopping_cart,
                                    size: 32,
                                  ),
                                  //minRadius: 32,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8, vertical: 4),
                            child: Text(
                              'Total Available Products',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1
                                  .copyWith(
                                    color: Colors.white70,
                                  ),
                              softWrap: true,
                              maxLines: 1,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              Wrap(
                //mainAxisAlignment: MainAxisAlignment.spaceAround,
                //crossAxisAlignment: CrossAxisAlignment.center,
                spacing: 16,
                children: [
                  InkWell(
                    onTap: () {},
                    splashColor: Colors.white,
                    child: Container(
                      //width: 172,
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.blueAccent,
                            child: Icon(
                              Icons.add,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'NEW ITEM',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    splashColor: Colors.white,
                    child: Container(
                      //width: 172,
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.greenAccent,
                            child: Icon(Icons.import_contacts,
                                color: Colors.green),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'IMPORT ITEMs',
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    splashColor: Colors.white,
                    child: Container(
                      //width: 172,
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.pinkAccent,
                            child:
                                Icon(Icons.scatter_plot, color: Colors.white),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'NEW BRAND',
                            style: TextStyle(
                                color: Colors.pink,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    splashColor: Colors.white,
                    child: Container(
                      //width: 172,
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.orangeAccent,
                            child:
                                Icon(Icons.category, color: Colors.deepOrange),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'NEW CATEGORY',
                            style: TextStyle(
                                color: Colors.deepOrange,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Brands and Categories",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.blueGrey),
                    ),
                    Text(
                      "12/11/2020",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                          color: Colors.grey),
                    )
                  ],
                ),
              ),
              Wrap(
                children: [
                  StatisticsWidget(
                    backgroundColor: Colors.indigoAccent,
                    text: '123',
                    secondaryText: 'Brands',
                    icon: Icon(
                      Icons.scatter_plot,
                      color: Colors.indigoAccent,
                    ),
                  ),
                  StatisticsWidget(
                    backgroundColor: Colors.green,
                    text: '123',
                    secondaryText: 'Brands',
                    icon: Icon(
                      Icons.category,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Recently Added Items",
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
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.green,
                  child: Text(
                    'GWP',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                title: Text('Green Wall Paint'),
                subtitle: Text('Wall Paint | Kapsi co ltd'),
                trailing: IconButton(
                  color: Colors.greenAccent,
                  onPressed: () {},
                  icon: Icon(
                    Icons.edit,
                    color: Colors.green,
                  ),
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Text(
                    '1LT',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                title: Text('Tinner 1L'),
                subtitle: Text('Tinner | Kapsi co ltd'),
                trailing: IconButton(
                  color: Colors.greenAccent,
                  onPressed: () {},
                  icon: Icon(
                    Icons.edit,
                    color: Colors.green,
                  ),
                ),
              ),
              ListTile(
                onTap: () {},
                leading: CircleAvatar(
                  backgroundColor: Colors.deepPurple,
                  child: Text(
                    'BWP',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                title: Text('Brown Wall Paint'),
                subtitle: Text('Wall Paint | Kapsi co ltd'),
                trailing: IconButton(
                  color: Colors.greenAccent,
                  onPressed: () {},
                  icon: Icon(
                    Icons.edit,
                    color: Colors.green,
                  ),
                ),
              ),
              ListTile(
                onTap: () {},
                leading: CircleAvatar(
                  backgroundColor: Colors.pinkAccent,
                  child: Text(
                    '1/2L',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                title: Text('Tinner 1/2L'),
                subtitle: Text('Tinner | Kapsi co ltd'),
                trailing: IconButton(
                  color: Colors.greenAccent,
                  onPressed: () {},
                  icon: Icon(
                    Icons.edit,
                    color: Colors.green,
                  ),
                ),
              ),
              ListTile(
                onTap: () {},
                leading: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Text(
                    'BWP',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                title: Text('Blue Wall Paint'),
                subtitle: Text('Wall Paint | Kapsi co ltd'),
                trailing: IconButton(
                  color: Colors.greenAccent,
                  onPressed: () {},
                  icon: Icon(
                    Icons.edit,
                    color: Colors.green,
                  ),
                ),
              ),
              ListTile(
                onTap: () {},
                leading: CircleAvatar(
                  backgroundColor: Colors.pinkAccent,
                  child: Text(
                    '1/2L',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                title: Text('Tinner 1/2L'),
                subtitle: Text('Tinner | Kapsi co ltd'),
                trailing: IconButton(
                  color: Colors.greenAccent,
                  onPressed: () {},
                  icon: Icon(
                    Icons.edit,
                    color: Colors.green,
                  ),
                ),
              ),
              ListTile(
                onTap: () {},
                leading: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Text(
                    'BWP',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                title: Text('Blue Wall Paint'),
                subtitle: Text('Wall Paint | Kapsi co ltd'),
                trailing: IconButton(
                  color: Colors.greenAccent,
                  onPressed: () {},
                  icon: Icon(
                    Icons.edit,
                    color: Colors.green,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
