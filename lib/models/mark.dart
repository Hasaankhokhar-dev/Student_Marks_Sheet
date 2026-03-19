class Marks {
  int? id;
  int student_id;
  String subject;
  double obtained_marks;
  int total_marks;

  Marks({
    this.id,
    required this.student_id,
    required this.subject,
    required this.obtained_marks,
    required this.total_marks,
  });
  Map<String, dynamic>toMap(){
    return {
      'id': id,
      'student_id': student_id,
      'subject': subject,
      'obtained_marks': obtained_marks,
      'total_marks': total_marks,
    };
  }
   factory Marks.fromMap(Map<String, dynamic>map){
     return Marks(
       id: map['id'],
       student_id: map['student_id'],
       subject: map['subject'],
       obtained_marks: map['obtained_marks'],
       total_marks: map['total_marks'],
     );
   }
}
