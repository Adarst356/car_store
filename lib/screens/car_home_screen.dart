import 'package:car_store/screens/Details/car_details_screen.dart';
import 'package:car_store/utils/constant/colors.dart';
import 'package:flutter/material.dart';

import '../common/card_list.dart';
import '../model/car.dart';

class CarHomeScreen extends StatelessWidget {
  const CarHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: backgroundColor,
        title: Text(
          "Available Car",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Colors.white,
          ),
        ),
        actions: [
          Icon(Icons.menu, color: Colors.white),
          SizedBox(width: 15),
        ],
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: carList.length,
        itemBuilder: (context, index) {
          final car = carList[index];
          return GestureDetector(
            onTap: () {
              // for navigation
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CarDetailsScreen(car: car),
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(left: 24, right: 24, top: 50),
                    padding: EdgeInsets.only(
                      left: 25,
                      bottom: 15,
                      right: 20,
                      top: 10,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: cardColor,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "\$${car.price.toString()}",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "price/hr",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 15),
                        Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CardItems(name: 'Car', textColor:Colors.white, value:car.brand),
                            CardItems(name: 'Model', textColor:Colors.white, value:car.model),
                            CardItems(name: 'Co2', textColor:Colors.white, value:car.c02),
                            CardItems(name: 'Fuel', textColor:Colors.white, value:car.fuelCons),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(right: 30, child: Image.asset(car.image)),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}


