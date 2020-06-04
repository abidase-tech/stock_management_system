import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slide_popup_dialog/slide_popup_dialog.dart' as slideDialog;

class ProductItemListView extends StatefulWidget {
  @override
  _ProductItemListViewState createState() => _ProductItemListViewState();
}

void _showCategories(BuildContext context) {
  slideDialog.showSlideDialog(
    context: context,
    child: Container(
      height: 150,
      child: Center(
        child: Text(
          "Category Lists",
          style: GoogleFonts.ubuntuCondensed(
            color: Colors.deepPurple,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
    ),
  );
}

void _showBrands(BuildContext context) {
  slideDialog.showSlideDialog(
    context: context,
    child: Container(
      height: 150,
      child: Center(
        child: Text(
          "Brand Lists",
          style: GoogleFonts.ubuntuCondensed(
            color: Colors.deepPurple,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
    ),
  );
}

void _showItemDetail(BuildContext context) {
  slideDialog.showSlideDialog(
    context: context,
    child: Container(
      height: 150,
      child: Center(
        child: Text(
          "Product Item Detail",
          style: GoogleFonts.ubuntuCondensed(
            color: Colors.deepPurple,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
    ),
  );
}

class _ProductItemListViewState extends State<ProductItemListView> {
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 150,
            floating: true,
            pinned: true,
            snap: true,
            actions: [
              IconButton(
                icon: Icon(Icons.scatter_plot),
                onPressed: () {
                  _showBrands(context);
                },
              ),
              IconButton(
                icon: Icon(Icons.category),
                onPressed: () {
                  _showCategories(context);
                },
              )
            ],
            title: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
              ),
              height: 32.0,
              margin: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  hintText: "Search Product Items",
                  hintStyle: TextStyle(color: Colors.deepPurple),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                  suffixIcon: Icon(
                    Icons.search,
                    size: 14.0,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: EdgeInsets.symmetric(horizontal: 82, vertical: 16),
              title: Text(
                'Product Item List',
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
                trailing: IconButton(
                  icon: Icon(
                    Icons.delete,
                    color: Colors.red,
                  ),
                  onPressed: () {},
                ),
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
