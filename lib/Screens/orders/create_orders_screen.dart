import 'package:flutter/material.dart';
import 'package:tailor_trade/Screens/orders/order_details.dart';
import '../../constants/constants.dart';
import '../../widgets/outfit_choicechip.dart';

class OutfitSelectionPage extends StatefulWidget {
  const OutfitSelectionPage({super.key});

  @override
  OutfitSelectionPageState createState() => OutfitSelectionPageState();
}

class OutfitSelectionPageState extends State<OutfitSelectionPage> {
  String? selectedOutfitType;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Order'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Select Outfit Type',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16.0),
            Wrap(
              spacing: 16.0,
              runSpacing: 16.0,
              children: outfitTypes.map((outfitType) {
                return OutfitChip(
                  name: outfitType['name'],
                  image: outfitType['image'],
                  imageHeight: 100,
                  imageWidth: 100,
                  isSelected: selectedOutfitType == outfitType['name'],
                  onSelected: (bool selected) {
                    setState(() {
                      selectedOutfitType = selected ? outfitType['name'] : null;
                    });
                  },
                );
              }).toList(),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: selectedOutfitType != null
                    ? () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => CreateOrderPage(selectedOutFitType: selectedOutfitType,)));
                        // print('Selected Outfit Type: $selectedOutfitType');
                      }
                    : null,
                child: const Text('Save and Continue'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
