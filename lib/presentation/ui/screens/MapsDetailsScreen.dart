import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:gariwala/data/model/car_models.dart';
import 'package:gariwala/presentation/widgets/carDetailsCard.dart';
import 'package:latlong2/latlong.dart';

class MapsDetailsScreen extends StatefulWidget {
  const MapsDetailsScreen({super.key, required this.car});

  final Car car;

  @override
  State<MapsDetailsScreen> createState() => _MapsDetailsScreenState();
}

class _MapsDetailsScreenState extends State<MapsDetailsScreen> with TickerProviderStateMixin{




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(
              initialCenter: LatLng(51, -0.09),
              initialZoom: 13,
            ),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: 'com.example.app',
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: carDetailCard(car: widget.car),
          ),
        ],
      ),
    );
  }

  
}




