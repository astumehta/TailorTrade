import 'package:flutter/material.dart';
import 'package:tailor_trade/Screens/orders/create_orders_screen.dart';
import 'package:tailor_trade/Screens/tailor/enter_business_details_screen.dart';

class WhoAreYou extends StatelessWidget {
  const WhoAreYou({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose who you are(for now)'),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BusinessDetailsPage()));
              },
              child: Text('Tailor')),
          ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('not yet made'),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('pop'))
                        ],
                      );
                    });
              },
              child: Text('User')),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const OutfitSelectionPage()));
              },
              child: Text('Outfitselection')),
        ],
      ),
    );
  }
}
