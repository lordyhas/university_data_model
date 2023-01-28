part of data.model;

class Course {
  final String title;
  final String? shortTitle;
  final int lessonCredit;
  final int hours;
  final int raters;
  final int rates;
  final String imagePath;
  final dynamic courseID;


  double get rating => raters/raters;


  const Course({
    required this.title,
    required this.lessonCredit,
    required this.hours,
    required this.raters,
    required this.rates,
    required this.imagePath,
    required this.courseID,
    this.shortTitle,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Course &&
          runtimeType == other.runtimeType &&
          title == other.title &&
          shortTitle == other.shortTitle &&
          lessonCredit == other.lessonCredit &&
          hours == other.hours &&
          raters == other.raters &&
          rates == other.rates &&
          imagePath == other.imagePath &&
          courseID == other.courseID);

  @override
  int get hashCode =>
      title.hashCode ^
      shortTitle.hashCode ^
      lessonCredit.hashCode ^
      hours.hashCode ^
      raters.hashCode ^
      rates.hashCode ^
      imagePath.hashCode ^
      courseID.hashCode;

  @override
  String toString() {
    return 'Course{'
        ' title: $title,'
        ' shortTitle: $shortTitle,'
        ' lessonCredit: $lessonCredit,'
        ' hours: $hours,'
        ' raters: $raters,'
        ' rates: $rates,'
        ' imagePath: $imagePath,'
        ' courseID: $courseID,'
        '}';
  }

  Course copyWith({
    String? title,
    String? shortTitle,
    int? lessonCredit,
    int? hours,
    int? raters,
    int? rates,
    String? imagePath,
    dynamic courseID,
  }) {
    return Course(
      title: title ?? this.title,
      shortTitle: shortTitle ?? this.shortTitle,
      lessonCredit: lessonCredit ?? this.lessonCredit,
      hours: hours ?? this.hours,
      raters: raters ?? this.raters,
      rates: rates ?? this.rates,
      imagePath: imagePath ?? this.imagePath,
      courseID: courseID ?? this.courseID,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'shortTitle': shortTitle,
      'lessonCredit': lessonCredit,
      'hours': hours,
      'raters': raters,
      'rates': rates,
      'imagePath': imagePath,
      'courseID': courseID,
    };
  }

  factory Course.fromMap(Map<String, dynamic> map) {
    return Course(
      title: map['title'] as String,
      shortTitle: map['shortTitle'] as String,
      lessonCredit: map['lessonCredit'] as int,
      hours: map['hours'] as int,
      raters: map['raters'] as int,
      rates: map['rates'] as int,
      imagePath: map['imagePath'] as String,
      courseID: map['courseID'] as dynamic,
    );
  }

}