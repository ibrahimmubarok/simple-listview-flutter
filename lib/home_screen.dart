import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'detail_screen.dart';
import 'utils/constants.dart';
import 'model/food_model.dart';

class HomeScreen extends StatelessWidget {
  final String name;

  HomeScreen({required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Home"),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          minimum: const EdgeInsets.all(dimen_16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                        'Hello, $name\n'
                        'Pilih menu makanan anda',
                        style: const TextStyle(fontSize: dimen_16)),
                    const SizedBox(height: 4.0),
                  ],
                ),
              ),
              const SizedBox(height: 1.5 * dimen_16),
              Container(
                  child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  final FoodModel food = foodList[index];
                  return InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return DetailScreen(food: food);
                      }));
                    },
                    child: Card(
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                          Expanded(
                            flex: 1,
                            child: Image.network(
                              food.imgUrl,
                              width: 140.0,
                              height: 140.0,
                              scale: 2.0,
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                          Expanded(
                              flex: 3,
                              child: Padding(
                                  padding: const EdgeInsets.all(dimen_16),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(food.name,
                                            style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16.0,
                                            )),
                                        const SizedBox(height: 10),
                                        Text(
                                          food.deskripsi,
                                          maxLines: 3,
                                          overflow: TextOverflow.ellipsis,
                                        )
                                      ]))),
                          const Expanded(
                              flex: 1,
                              child: Padding(
                                  padding: EdgeInsets.all(dimen_16),
                                  child: FavoriteButton()))
                        ])),
                  );
                },
                itemCount: foodList.length,
              ))
            ],
          ),
        ),
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Icon(
          isFavorite ? Icons.favorite : Icons.favorite_border,
          color: Colors.red,
        ),
        onPressed: () {
          setState(() {
            isFavorite = !isFavorite;
          });
        });
  }
}
