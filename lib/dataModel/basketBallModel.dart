class BasketModel{
  final DateTime startDate;
  final DateTime endDate;
  final bool isPublic = false;

  BasketModel({
    required this.startDate,
    required this.endDate,
  });

  Map<String,dynamic> toJson(){
    return {
      'startDate':this.startDate,
      'endDate':this.endDate,
      'isPublic':this.isPublic,
    };
  }

}