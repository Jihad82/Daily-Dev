import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/actors_controller.dart';

class ActorsView extends StatelessWidget {
  final ActorsController controller = Get.put(ActorsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Actors List'),
      ),
      body: ListView.builder(
        itemCount: controller.actors.length,
        itemBuilder: (context, index) {
          final actor = controller.actors[index];
          return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
              child: ListTile(
            title: Text('${actor.firstName} ${actor.lastName}'),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Age: ${actor.age}'),
                Text('Movies: ${actor.movies}'),
                Text('Country: ${actor.country}'),
              ],
            ),
          ),
              ),
          );
        },
      ),
    );
  }
}
