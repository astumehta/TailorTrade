import 'package:flutter/material.dart';

class MeasurementFormField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final String measurementMetric;
  final FormFieldValidator<String>? validator;
  final FormFieldSetter<String>? onSaved;

  const MeasurementFormField({super.key, 
    required this.labelText,
    required this.hintText,
    required this.measurementMetric,
    this.validator,
    this.onSaved,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                labelText: labelText,
                hintText: hintText,
              ),
              validator: validator,
              onSaved: onSaved,
            ),
          ),
          const SizedBox(width: 16.0),
          Text(
            measurementMetric,
            style: const TextStyle(fontSize: 16.0),
          ),
        ],
      ),
    );
  }
}