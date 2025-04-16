

import 'package:flutter/material.dart';

Widget featuresIcons() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      featureIcon(
        icon: Icons.local_gas_station,
        title: 'Diesel',
        subTitle: 'Common Rail',
      ),
      featureIcon(
        icon: Icons.speed,
        title: 'Acceleration',
        subTitle: '0 - 100 KM',
      ),
      featureIcon(
        icon: Icons.ac_unit,
        title: 'Cold',
        subTitle: 'Temp Control',
      ),
    ],
  );
}


Widget featureIcon({
  required IconData icon,
  required String title,
  required String subTitle,
}) {
  return Container(
    height: 100,
    width: 100,
    padding: EdgeInsets.all(5),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: Colors.grey, width: 1),
    ),
    child: Column(
      children: [
        Icon(icon, size: 24),
        FittedBox(child: Text(title)),
        Text(subTitle, style: TextStyle(fontSize: 10, color: Colors.grey)),
      ],
    ),
  );
}