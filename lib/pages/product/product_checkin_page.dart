import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slide_popup_dialog/slide_popup_dialog.dart' as slideDialog;

class ProductCheckinPage extends StatefulWidget {
  @override
  _ProductCheckinPageState createState() => _ProductCheckinPageState();
}

void _showItemDetail(BuildContext context) {
  slideDialog.showSlideDialog(
    context: context,
    child: Container(
      height: 350,
      child: Center(
        child: Column(
          children: [
            Text(
              "Product Checkin",
              style: GoogleFonts.ubuntuCondensed(
                color: Colors.deepPurple,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.all(24),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Number of Product Items",
                  hintStyle: TextStyle(color: Colors.deepPurple),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                  suffixIcon: Icon(
                    Icons.add_circle,
                    size: 14.0,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(48),
              child: RaisedButton(
                child: Text('Checkin'),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    ),
  );
}

class _ProductCheckinPageState extends State<ProductCheckinPage> {
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 220,
            floating: true,
            pinned: true,
            snap: true,
            title: Text('Product Checkin Detail'),
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: EdgeInsets.symmetric(horizontal: 82, vertical: 16),
              title: Text(
                'Due Date 12/10/2012',
                style: GoogleFonts.ubuntu(
                    //color: Colors.deepOrange,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              // The builder function returns a ListTile with a title that
              // displays the index of the current item.
              (context, index) => ListTile(
                leading: CircleAvatar(
                  child: Text('I$index'),
                ),
                title: Text('Item #$index'),
                subtitle: Text('Item#$index Brand | Item#$index Category'),
                trailing: Text('${123 * index}'),
                onTap: () {
                  _showItemDetail(context);
                },
              ),
              // Builds 1000 ListTiles
              childCount: 100,
            ),
          ),
        ],
      ),
    );
  }
}
