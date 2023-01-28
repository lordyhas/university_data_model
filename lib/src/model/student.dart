part of data.model;

class Student {
  int id;
  String name;
  String lastName;
  String firstName;
  DateTime birthdate;
  String birthplace;
  String nationality;
  String registrationNumber;
  DateTime registrationDate;
  dynamic departmentID;
  String gender;
  dynamic address;




  int get age => - DateTime.now().year - birthdate.year;
  String get sex => gender;


  Student({
    required this.id,
    required this.name,
    required this.lastName,
    required this.firstName,
    required this.birthdate,
    required this.birthplace,
    required this.nationality,
    required this.registrationNumber,
    required this.registrationDate,
    required this.departmentID,
    required this.gender,
    required this.address,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Student &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          lastName == other.lastName &&
          firstName == other.firstName &&
          birthdate == other.birthdate &&
          birthplace == other.birthplace &&
          nationality == other.nationality &&
          registrationNumber == other.registrationNumber &&
          registrationDate == other.registrationDate &&
          departmentID == other.departmentID &&
          gender == other.gender &&
          address == other.address);

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      lastName.hashCode ^
      firstName.hashCode ^
      birthdate.hashCode ^
      birthplace.hashCode ^
      nationality.hashCode ^
      registrationNumber.hashCode ^
      registrationDate.hashCode ^
      departmentID.hashCode ^
      gender.hashCode ^
      address.hashCode;

  @override
  String toString() {
    return 'Student{'
        ' id: $id,'
        ' name: $name,'
        ' lastName: $lastName,'
        ' firstName: $firstName,'
        ' birthdate: $birthdate,'
        ' birthplace: $birthplace,'
        ' nationality: $nationality,'
        ' registrationNumber: $registrationNumber,'
        ' registrationDate: $registrationDate,'
        ' departmentID: $departmentID,'
        ' gender: $gender,'
        ' address: $address,'
        '}';
  }

  Student copyWith({
    int? id,
    String? name,
    String? lastName,
    String? firstName,
    DateTime? birthdate,
    String? birthplace,
    String? nationality,
    String? registrationNumber,
    DateTime? registrationDate,
    dynamic departmentID,
    String? gender,
    dynamic address,
  }) {
    return Student(
      id: id ?? this.id,
      name: name ?? this.name,
      lastName: lastName ?? this.lastName,
      firstName: firstName ?? this.firstName,
      birthdate: birthdate ?? this.birthdate,
      birthplace: birthplace ?? this.birthplace,
      nationality: nationality ?? this.nationality,
      registrationNumber: registrationNumber ?? this.registrationNumber,
      registrationDate: registrationDate ?? this.registrationDate,
      departmentID: departmentID ?? this.departmentID,
      gender: gender ?? this.gender,
      address: address ?? this.address,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'lastName': lastName,
      'firstName': firstName,
      'birthdate': birthdate,
      'birthplace': birthplace,
      'nationality': nationality,
      'registrationNumber': registrationNumber,
      'registrationDate': registrationDate,
      'departmentID': departmentID,
      'gender': gender,
      'address': address,
    };
  }

  factory Student.fromMap(Map<String, dynamic> map) {
    return Student(
      id: map['id'] as int,
      name: map['name'] as String,
      lastName: map['lastName'] as String,
      firstName: map['firstName'] as String,
      birthdate: map['birthdate'] as DateTime,
      birthplace: map['birthplace'] as String,
      nationality: map['nationality'] as String,
      registrationNumber: map['registrationNumber'] as String,
      registrationDate: map['registrationDate'] as DateTime,
      departmentID: map['departmentID'] as dynamic,
      gender: map['gender'] as String,
      address: map['address'] as dynamic,
    );
  }

}
