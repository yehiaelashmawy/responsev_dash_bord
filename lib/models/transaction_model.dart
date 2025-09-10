class TransactionModel {
  final String title, subTitle, mount;
  final bool isWithdraw;

  const TransactionModel({
    required this.title,
    required this.subTitle,
    required this.mount,
    required this.isWithdraw,
  });
}
