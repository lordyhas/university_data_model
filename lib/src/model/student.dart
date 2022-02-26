part of data.model;

class Student {
  int id;
  String name;
  String lastName;
  String? firstName;
  int? age;
  String registrationNumber;

  Student({
    required this.id,
    required  this.name,
    required  this.lastName,
    this.firstName,
    this.age,
    required this.registrationNumber
  });

  @override
  String toString() {
    return 'Student{id: $id, name: $name, lastName: $lastName, '
        'firstName: $firstName, age: $age, '
        'registrationNumber: $registrationNumber}';
  }
}
