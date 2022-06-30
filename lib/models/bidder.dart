class Bidder {
  String? name;
  DateTime? date;
  num? price;

  Bidder(
    this.name,
    this.date,
    this.price,
  );

  static List<Bidder> generateBidder() {
    return [
      Bidder('Kim', DateTime.now(), 35.00),
      Bidder('Lee', DateTime.now(), 30.00),
      Bidder('Jack', DateTime.now(), 28.00),
      Bidder('Joo', DateTime.now(), 25.00),
      Bidder('Mike', DateTime.now(), 20.00),
      Bidder('Kim', DateTime.now(), 19.00),
    ];
  }

  static List<Bidder> generateHistory() {
    return [
      Bidder('Jon', DateTime.now(), 27.00),
      Bidder('Han', DateTime.now(), 26.00),
      Bidder('Kim', DateTime.now(), 25.00),
      Bidder('Jung', DateTime.now(), 23.00),
      Bidder('Yoon', DateTime.now(), 19.00),
      Bidder('Kim', DateTime.now(), 10.00),
    ];
  }
}
