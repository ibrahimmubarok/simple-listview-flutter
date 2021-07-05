import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'model/food_model.dart';
import 'utils/constants.dart';

class DetailScreen extends StatelessWidget {
  final FoodModel food;

  DetailScreen({required this.food});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(food.name)
        ),
        body: SingleChildScrollView(
          child: SafeArea(
          minimum: const EdgeInsets.all(dimen_16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.network(
                  food.imgUrl,
                  scale: 2.0,
                  width: 320.0,
                  height: 320.0,
                ),
                const SizedBox(height: 16.0),
                Text(food.name,
                    style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold
                    )),
                const SizedBox(height: 16.0),
                Text(food.deskripsi,
                    style: const TextStyle(
                      fontSize: 16.0,
                    )),
              ]
            )
          )
        )
    );
  }
}