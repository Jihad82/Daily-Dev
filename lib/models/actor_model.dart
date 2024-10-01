class Actor {
  final String firstName;
  final String lastName;
  final String age;
  final String movies;
  final String country;

  Actor({required this.firstName, required this.lastName, required this.age, required this.movies, this.country = 'N/A'});
}
