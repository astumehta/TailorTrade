import 'package:flutter/material.dart';
import 'package:tailor_trade/constants/constants.dart';
import '../../widgets/measurement_form_field.dart';

class BodyMeasurementPage extends StatefulWidget {
  final String tailorName;
  const BodyMeasurementPage({super.key, required this.tailorName});

  @override
  BodyMeasurementPageState createState() => BodyMeasurementPageState();
}

class BodyMeasurementPageState extends State<BodyMeasurementPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Body Measurement'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Tailor Name: ${widget.tailorName}',
                  style: const TextStyle(
                      fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16.0),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.7,
                  child: ListView.builder(
                      itemCount: 14,
                      itemBuilder: (context, index) {
                        final String measurementName = measurementTypes[index];
                        return MeasurementFormField(
                          labelText: measurementName,
                          hintText: 'Enter $measurementName measurement',
                          measurementMetric: 'cm',
                          validator: (value) {
                            if (value!.isEmpty || value.length > 3) {
                              return 'Please enter a valid $measurementName measurement';
                            }
                            return null;
                          },
                          onSaved: (value) {
                            measurements['chest'] = value!;
                          },
                        );
                      }),
                ),
                const SizedBox(height: 16.0),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                      }
                    },
                    child: const Text('Save and Continue'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
