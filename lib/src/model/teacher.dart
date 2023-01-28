part of data.model;

class Teacher {
  dynamic id;
  String name;
  String lastName;
  String firstName;
  DateTime birthdate;
  String birthplace;
  String nationality;
  String registrationNumber;
  DateTime registrationDate;
  String gender;
  dynamic teacherID;
  dynamic address;


  Teacher({
    required this.id,
    required this.name,
    required this.lastName,
    required this.firstName,
    required this.birthdate,
    required this.birthplace,
    required this.nationality,
    required this.registrationNumber,
    required this.registrationDate,
    required this.gender,
    required this.teacherID,
    required this.address,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Teacher &&
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
          gender == other.gender &&
          teacherID == other.teacherID &&
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
      gender.hashCode ^
      teacherID.hashCode ^
      address.hashCode;

  @override
  String toString() {
    return 'Teacher{' +
        ' id: $id,' +
        ' name: $name,' +
        ' lastName: $lastName,' +
        ' firstName: $firstName,' +
        ' birthdate: $birthdate,' +
        ' birthplace: $birthplace,' +
        ' nationality: $nationality,' +
        ' registrationNumber: $registrationNumber,' +
        ' registrationDate: $registrationDate,' +
        ' gender: $gender,' +
        ' teacherID: $teacherID,' +
        ' address: $address,' +
        '}';
  }

  Teacher copyWith({
    dynamic? id,
    String? name,
    String? lastName,
    String? firstName,
    DateTime? birthdate,
    String? birthplace,
    String? nationality,
    String? registrationNumber,
    DateTime? registrationDate,
    String? gender,
    dynamic? teacherID,
    dynamic? address,
  }) {
    return Teacher(
      id: id ?? this.id,
      name: name ?? this.name,
      lastName: lastName ?? this.lastName,
      firstName: firstName ?? this.firstName,
      birthdate: birthdate ?? this.birthdate,
      birthplace: birthplace ?? this.birthplace,
      nationality: nationality ?? this.nationality,
      registrationNumber: registrationNumber ?? this.registrationNumber,
      registrationDate: registrationDate ?? this.registrationDate,
      gender: gender ?? this.gender,
      teacherID: teacherID ?? this.teacherID,
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
      'gender': gender,
      'teacherID': teacherID,
      'address': address,
    };
  }

  factory Teacher.fromMap(Map<String, dynamic> map) {
    return Teacher(
      id: map['id'] as dynamic,
      name: map['name'] as String,
      lastName: map['lastName'] as String,
      firstName: map['firstName'] as String,
      birthdate: map['birthdate'] as DateTime,
      birthplace: map['birthplace'] as String,
      nationality: map['nationality'] as String,
      registrationNumber: map['registrationNumber'] as String,
      registrationDate: map['registrationDate'] as DateTime,
      gender: map['gender'] as String,
      teacherID: map['teacherID'] as dynamic,
      address: map['address'] as dynamic,
    );
  }

}