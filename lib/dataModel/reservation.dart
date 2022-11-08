class StudyReservation {
  final String id;
  final String roomNumber;
  final String explanation;
  final String dateStart;
  final String dateEnd;
  final String status;

  const StudyReservation({
    required this.id,
    required this.roomNumber,
    required this.explanation,
    required this.dateStart,
    required this.dateEnd,
    required this.status,
  });
}

class SportReservation {
  final String id;
  final String terrain;
  final bool public;
  final String dateStart;
  final String dateEnd;
  final String status;

  const SportReservation({
    required this.id,
    required this.terrain,
    required this.public,
    required this.dateStart,
    required this.dateEnd,
    required this.status,
  });
}

