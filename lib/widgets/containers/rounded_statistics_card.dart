import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class RoundedStatisticsCard extends StatelessWidget {
  final Color baseColor;
  final IconData icon;
  final String title, subTitle;
  final double height, width;

  RoundedStatisticsCard(
      {this.baseColor,
      this.icon,
      this.title,
      this.subTitle,
      this.height,
      this.width});

  Color getBaseColor(BuildContext context) {
    return baseColor == null ? Theme.of(context).primaryColor : baseColor;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.elliptical(8, 12))),
      color: baseColor,
      child: Container(
        padding: EdgeInsets.all(8),
        height: height == null ? 75 : height,
        width: width == null ? 100 : width,
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: getBaseColor(context),
              child: Center(
                child: Icon(icon, color: getBaseColor(context).withAlpha(5)),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'TITLE',
                    style: Theme.of(context).textTheme.headline4.copyWith(
                        color: getBaseColor(context).withAlpha(10),
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text('SUBTITLE', style: Theme.of(context).textTheme.caption)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
