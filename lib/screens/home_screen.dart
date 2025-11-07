import 'package:flutter/material.dart';
import 'package:flutter_projects/models/drink_model.dart';
import 'package:flutter_projects/screens/drink_details.dart';
import 'package:flutter_projects/widget/drink_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(height: 30),
            Expanded(
              child: ListView.builder(
                controller: controller,
                itemCount: DrinkModel.drinks.length,
                itemBuilder: (context, index) {
                  final drink = DrinkModel.drinks[index];
                  return AnimatedBuilder(
                    animation: controller,
                    builder: (context, child) {
                      double offset = 0;
                      if (controller.hasClients) {
                      offset = controller.offset / 100 - index;  
                      }
                      offset = offset.clamp(1, 3);
                      return Transform.scale(
                     scale: 1 - (offset * 0.2),
                     child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,MaterialPageRoute(builder: (_)=>const DrinkDetails()));
                      },
                       child: DrinkWidget(
                        image: drink.image,
                        name: drink.name,
                        title: drink.title,
                                           ),
                     ),
                      );
                    }
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
