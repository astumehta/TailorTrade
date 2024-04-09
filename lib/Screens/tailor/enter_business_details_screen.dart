import 'package:flutter/material.dart';
import 'package:tailor_trade/Screens/tailor/TailorMainPage.dart';

class BusinessDetailsPage extends StatefulWidget {
  @override
  _BusinessDetailsPageState createState() => _BusinessDetailsPageState();
}

class _BusinessDetailsPageState extends State<BusinessDetailsPage> {
  final _businessNameController = TextEditingController();
  final _shopNameController = TextEditingController();
  final _shopLocationController = TextEditingController();
  final _productPriceRangeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Enter your business details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _businessNameController,
              decoration: const InputDecoration(
                labelText: 'Business name',
                hintText: 'Your Business name',
              ),
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: _shopNameController,
              decoration: const InputDecoration(
                labelText: 'Shop name',
                hintText: 'Your Shop name',
              ),
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: _shopLocationController,
              decoration: const InputDecoration(
                labelText: 'Shop Location',
                hintText: 'Your Shop Location',
              ),
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: _productPriceRangeController,
              decoration: const InputDecoration(
                labelText: 'Product price range',
                hintText: 'Price range',
              ),
            ),
            const SizedBox(height: 32.0),
            ElevatedButton(
              style: const ButtonStyle(
                elevation: MaterialStatePropertyAll(20),
              ),
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: ((context) => const TailorMainPage())));
              },
              child: const Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}
