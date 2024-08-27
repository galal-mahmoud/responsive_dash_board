class TransactionModel {
  final String title, date, price;
  final bool isActive;

  TransactionModel( {
    required this.isActive,
    required this.title,
    required this.date,
    required this.price,
  });
}
