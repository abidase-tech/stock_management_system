import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class StatisticsWidget extends StatelessWidget {
  final Color backgroundColor;
  final String text;
  final Icon icon;
  final String secondaryText;
  final Function ontap;

  StatisticsWidget(
      {this.backgroundColor,
      this.text,
      this.icon,
      this.secondaryText,
      this.ontap});

  @override
  Widget build(BuildContext context) {
    final double width = (MediaQuery.of(context).size.width - 50) / 2;
    final double height = width * 0.5;
    return Card(
      color: backgroundColor,
      elevation: 8.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.elliptical(8, 12)),
      ),
      child: InkWell(
        onTap: ontap == null ? () {} : ontap,
        splashColor: Colors.white,
        child: Container(
          width: width, //(MediaQuery.of(context).size.width - 50) / 2,
          height: height,
          padding: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          text,
                          style: Theme.of(context).textTheme.headline5.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        icon.icon,
                        color: icon.color,
                        size: 24,
                      ),
                      //minRadius: 32,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                child: Text(
                  secondaryText,
                  style: Theme.of(context).textTheme.subtitle1.copyWith(
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
    );
  }
}
