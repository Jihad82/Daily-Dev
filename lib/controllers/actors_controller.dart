import 'package:get/get.dart';
import '../models/actor_model.dart';

class ActorsController extends GetxController {
  final List<Actor> actors = [
    Actor(firstName: 'Robert', lastName: 'De Niro', age: '77', movies: 'The Godfather Part II, Taxi Driver, Raging Bull', country: 'USA'),
    Actor(firstName: 'Marlon', lastName: 'Brando', age: '80', movies: 'The Godfather, On the Waterfront, Apocalypse Now', country: 'USA'),
    Actor(firstName: 'Al', lastName: 'Pacino', age: '81', movies: 'The Godfather, Scarface, Scent of a Woman', country: 'USA'),
    // Add more actors here...
  ];
}
