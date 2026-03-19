class Student{
  int? id;
  String name;
  int roll_no;
  String class_name;

  Student({
    this.id,
    required this.name,
    required this.roll_no,
    required this.class_name
  });

  Map<String, dynamic> toMap(){
    return{
      'id': id,
      'name': name,
      'roll_no': roll_no,
      'class_name': class_name
    };
  }
  factory Student.fromMap(Map<String, dynamic> map){
    return Student(
      id: map['id'],
      name: map['name'],
      roll_no: map['roll_no'],
      class_name: map['class_name']
    );
  }


}