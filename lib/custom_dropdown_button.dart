import 'package:flutter/material.dart';

/// Dropdown button with custom items.
class CustomDropDownButton<T> extends StatelessWidget {
  ///  List of items for the dropdown.
  final List<T> itemList;

  /// Initial value for the dropdown.
  final T? initialValue;

  /// Function that hold value T.
  final Function(T value)? onChangedValue;

  /// Function to get display string for each item.
  final String Function(T)? displayString;

  /// Title to display above dropdown button.
  final String title;

  const CustomDropDownButton({
    required this.initialValue,
    required this.itemList,
    this.displayString,
    required this.title,
    this.onChangedValue,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Variable to hold the current selected value
    T? dropdownValue = initialValue;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title),
        Container(
          color: Colors.grey[300],
          child: DropdownButtonFormField<T>(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
              // Set the current value of the dropdown
              value: dropdownValue,
              items: itemList
                  .map<DropdownMenuItem<T>>(
                    (T item) => DropdownMenuItem<T>(
                      value: item,
                      child: (displayString != null)
                          ? Text(displayString!(item))
                          : Text(item.toString()),
                    ),
                  )
                  .toList(),
              onChanged: (T? value) {
                // Ensure no null is assigned to dropdownValue
                if (value != null) {
                  dropdownValue = value;
                  if (onChangedValue != null) {
                    onChangedValue!(value);
                  }
                }
              }),
        ),
      ],
    );
  }
}
