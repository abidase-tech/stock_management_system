import 'package:flutter/material.dart';

class SimpleStatisticsWidget extends StatelessWidget {
  final Color baseColor;
  final IconData icon;
  final String title, subTitle;
  final double height, width;

  SimpleStatisticsWidget(
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
    return Container(
      height: height == null ? 75 : height,
      width: width == null ? 100 : width,
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(12),
            color: getBaseColor(context).withAlpha(5),
            child: Center(
              child: Icon(icon, color: getBaseColor(context)),
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
    );
  }
}
