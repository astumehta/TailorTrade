import 'package:flutter/material.dart';
import 'package:tailor_trade/Screens/client/add_measurements_screen.dart';

import '../../constants/constants.dart';
import '../../widgets/outfit_choicechip.dart';

class ClientTypeSelectionPage extends StatefulWidget {
  const ClientTypeSelectionPage({super.key});

  @override
  State<ClientTypeSelectionPage> createState() =>
      _ClientTypeSelectionPageState();
}

class _ClientTypeSelectionPageState extends State<ClientTypeSelectionPage> {
  String? selectedClientType;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Choose client type'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
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
              children: clientTypes.map((outfitType) {
                return OutfitChip(
                  name: outfitType['name'],
                  image: outfitType['image'],
                  imageHeight: 150,
                  imageWidth: 150,
                  isSelected: selectedClientType == outfitType['name'],
                  onSelected: (bool selected) {
                    setState(() {
                      selectedClientType = selected ? outfitType['name'] : null;
                    });
                  },
                );
              }).toList(),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: selectedClientType != null
                    ? () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const BodyMeasurementPage(
                                  tailorName: '',
                                )));
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
