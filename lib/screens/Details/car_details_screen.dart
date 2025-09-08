import 'package:car_store/model/car.dart';
import 'package:car_store/utils/constant/colors.dart';
import 'package:flutter/material.dart';

import '../../common/card_list.dart';

class CarDetailsScreen extends StatelessWidget {
  final Car car;

  const CarDetailsScreen({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // for image
          Image.asset(
            "assets/images/map.png",
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          // for back button , name and menu icon
          CarDetailAppbar(context),
          Positioned(
            left: 10,
            right: 10,
            bottom: 25,
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(15),
                  margin: EdgeInsets.only(top: 45),
                  decoration: BoxDecoration(
                    color: backgroundColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      CardInformation(),
                      Divider(height: 15, color: Colors.white),
                      Row(
                        children: [
                          Image.asset("assets/images/driver.png", height: 150),
                          SizedBox(width: 15),
                          Expanded(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Jesica Smith",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                          ),
                                        ),
                                        Text(
                                          "Licencse: NWR 369852",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          "360",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                            color: Colors.white
                                          ),
                                        ),
                                        Text(
                                          "Rider",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: 12,),
                                Row(
                                  children: [
                                    Text("5.0",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
                                    ),
                                    SizedBox(width: 6,),
                                    Icon(Icons.star,color: Colors.white,size: 16,),
                                    Icon(Icons.star,color: Colors.white,size: 16,),
                                    Icon(Icons.star,color: Colors.white,size: 16,),
                                    Icon(Icons.star,color: Colors.white,size: 16,),
                                    Icon(Icons.star,color: Colors.white,size: 16,),

                                  ],
                                ),
                                SizedBox(height: 12,),
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 30),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: cardColor,
                                      ),
                                      child: Text("Call",style: TextStyle(color: Colors.white),),
                                    ),
                                    SizedBox(width: 15,),
                                    Container(
                                      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 30),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: cardColor,
                                      ),
                                      child: Text("Book",style: TextStyle(color: Colors.white),),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(right: 60, child: Image.asset(car.image)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Column CardInformation() {
    return Column(
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
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CardItems(name: 'Car', textColor: Colors.black, value: car.brand),
            CardItems(name: 'Model', textColor: Colors.black, value: car.model),
            CardItems(name: 'Co2', textColor: Colors.black, value: car.c02),
            CardItems(
              name: 'Fuel',
              textColor: Colors.black,
              value: car.fuelCons,
            ),
          ],
        ),
      ],
    );
  }
}

SafeArea CarDetailAppbar(BuildContext context) {
  return SafeArea(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back, color: Colors.white),
        ),
        const Text(
          "Car Detail",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Colors.white,
          ),
        ),
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.menu, color: Colors.white),
        ),
      ],
    ),
  );
}
