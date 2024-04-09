import 'package:flutter/material.dart';
import 'package:tailor_trade/Screens/client/add_measurements_screen.dart';

class CreateOrderPage extends StatefulWidget {
  final String? selectedOutFitType;

  const CreateOrderPage({super.key, required this.selectedOutFitType});
  @override
  CreateOrderPageState createState() => CreateOrderPageState();
}

class CreateOrderPageState extends State<CreateOrderPage> {
  final List<String> _outfitOptions = ['Stitching', 'Alteration'];
  final TextEditingController _specialInstructionController =
      TextEditingController();
  bool _isUrgent = false;
  DateTime? _deliveryDate;
  DateTime? _trialDate;
  int? _selectedOption;

  @override
  Widget build(BuildContext context) {
    String? outfitType = widget.selectedOutFitType;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Order'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('For Outfit Type : $outfitType'),
              Column(
                children: _outfitOptions.asMap().entries.map((entry) {
                  int index = entry.key;
                  String option = entry.value;
                  return RadioListTile(
                    title: Text(option),
                    value: index,
                    groupValue: _selectedOption,
                    onChanged: (value) {
                      setState(() {
                        _selectedOption = value;
                      });
                    },
                  );
                }).toList(),
              ),
              const Text(
                'Measurements',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            const BodyMeasurementPage(tailorName: 'tailorName')));
                  },
                  child: const Text('+ ADD')),
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: TextField(
                  controller: _specialInstructionController,
                  decoration: const InputDecoration(
                    labelText: 'Special Instruction',
                    hintText: 'Special instruction',
                  ),
                ),
              ),
              SwitchListTile(
                title: const Text('Mark as Urgent'),
                value: _isUrgent,
                onChanged: (value) {
                  setState(() {
                    _isUrgent = value;
                  });
                },
              ),
              const Text(
                'Delivery Date',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              GestureDetector(
                onTap: () async {
                  final pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime.now(),
                    lastDate: DateTime(2025),
                  );
                  if (pickedDate != null) {
                    setState(() {
                      _deliveryDate = pickedDate;
                    });
                  }
                },
                child: Text(
                  _deliveryDate != null
                      ? 'Expected Date: ${_deliveryDate!.toString().split(' ')[0]}'
                      : 'Select Expected Date',
                ),
              ),
              const Text(
                'Trial Date',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              GestureDetector(
                onTap: () async {
                  final pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime.now(),
                    lastDate: DateTime(2025),
                  );
                  if (pickedDate != null) {
                    setState(() {
                      _trialDate = pickedDate;
                    });
                  }
                },
                child: Text(
                  _trialDate != null
                      ? 'Select Trial Date: ${_trialDate!.toString().split(' ')[0]}'
                      : 'Select Trial Date',
                ),
              ),
              const Text(
                'Cloth Images',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // Add image picker widget here
            ],
          ),
        ),
      ),
    );
  }
}
