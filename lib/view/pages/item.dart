import 'package:flutter/material.dart';
import 'package:interv/model/item_model.dart';

class ItemDetail extends StatelessWidget {
  final Item? selectedItem;

  ItemDetail({required this.selectedItem});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            selectedItem?.name ?? 'No item selected',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(
            selectedItem?.description ?? '',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 8),
          Text(
            selectedItem != null
                ? 'Price: \$${selectedItem!.price.toStringAsFixed(2)}'
                : '',
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}