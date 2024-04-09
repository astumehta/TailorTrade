import 'package:flutter/material.dart';

class OrderSummaryPage extends StatelessWidget {
  final String orderType;
  final String customerName;
  final String phoneNumber;
  final String estimateTime;
  final String trialDate;
  final double totalAmount;
  final double advanceAmount;

  const OrderSummaryPage({
    super.key, 
    required this.orderType,
    required this.customerName,
    required this.phoneNumber,
    required this.estimateTime,
    required this.trialDate,
    required this.totalAmount,
    required this.advanceAmount,
  });

  @override
  Widget build(BuildContext context) {
    double balanceDue = totalAmount - advanceAmount;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Order Summary'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Type',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4.0),
            Text(orderType),
            const SizedBox(height: 16.0),
            const Text(
              'Name',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4.0),
            Text(customerName),
            const SizedBox(height: 16.0),
            const Text(
              'Phone Number',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4.0),
            Text(phoneNumber),
            const SizedBox(height: 16.0),
            const Text(
              'Estimate time',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4.0),
            Text(estimateTime),
            const SizedBox(height: 16.0),
            const Text(
              'Trial date',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4.0),
            Text(trialDate),
            const SizedBox(height: 16.0),
            const Text(
              'Dress',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 32.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Total Amount'),
                Text('\$${totalAmount.toStringAsFixed(2)}'),
              ],
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Advance Amount'),
                Text('\$${advanceAmount.toStringAsFixed(2)}'),
              ],
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Balance Due',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  '\$${balanceDue.toStringAsFixed(2)}',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Handle create order action
                },
                child: const Text('Create Order'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
