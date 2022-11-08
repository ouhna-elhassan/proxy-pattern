class Complaint {
  final String residence;
  final String roomNumber;
  final String problemType;
  final String details;
  final String picture ;
  
  const Complaint({
    required this.residence,
    required this.roomNumber,
    required this.problemType,
    required this.details,
    required this.picture
  });

  Map<String,dynamic> toJson(){
    return {
      'residence':this.residence,
      'roomNumber':this.roomNumber,
      'typeProblem':this.problemType,
      'details':this.details,
      'picture':this.picture,
    };
  }

}