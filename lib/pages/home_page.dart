import 'package:flutter/material.dart';
import 'package:flutter_youtube/models/item_model.dart';
import 'package:flutter_youtube/widgets/card_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello Flutter Youtube'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CardWidget(
              item: ItemModel(
                title: 'Rocket',
                imagePath: 'images/rocket.png',
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: CardWidget(
                    item: ItemModel(
                      title: 'Travel',
                      imagePath: 'images/travel.png',
                    ),
                  ),
                ),
                Expanded(
                  child: CardWidget(
                    item: ItemModel(
                      title: 'Space',
                      imagePath: 'images/space.png',
                    ),
                  ),
                ),
              ],
            ),
            CardWidget(
              item: ItemModel(
                title: 'Yeah',
                imagePath: 'images/yeah.png',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
