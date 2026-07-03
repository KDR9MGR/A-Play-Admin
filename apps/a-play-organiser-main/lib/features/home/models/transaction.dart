class Transaction {
  final String id;
  final String customerId;
  final String customerName;
  final String? customerEmail;
  final String eventId;
  final String eventTitle;
  final double amount;
  final DateTime purchaseDate;
  final String status;

  const Transaction({
    required this.id,
    required this.customerId,
    required this.customerName,
    this.customerEmail,
    required this.eventId,
    required this.eventTitle,
    required this.amount,
    required this.purchaseDate,
    required this.status,
  });

  factory Transaction.fromJson(Map<String, dynamic> json) {
    return Transaction(
      id: json['id'] as String,
      customerId: json['user_id'] as String,
      customerName: json['customer_name'] as String? ?? 'Unknown Customer',
      customerEmail: json['customer_email'] as String?,
      eventId: json['event_id'] as String,
      eventTitle: json['event_title'] as String? ?? 'Unknown Event',
      amount: double.tryParse(json['amount']?.toString() ?? '0') ?? 0.0,
      purchaseDate: DateTime.parse(json['created_at'] as String),
      status: json['status'] as String? ?? 'pending',
    );
  }
} 