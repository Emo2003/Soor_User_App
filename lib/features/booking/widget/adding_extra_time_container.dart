import 'package:flutter/material.dart';
import 'package:soor_app/features/booking/widget/body_add_container.dart';

import 'header_add_container.dart';

class AddingExtraTimeContainer extends StatefulWidget {
  const AddingExtraTimeContainer({super.key});

  @override
  State<AddingExtraTimeContainer> createState() =>
      _AddingExtraTimeContainerState();
}

class _AddingExtraTimeContainerState extends State<AddingExtraTimeContainer> {
  int duration = 3;

  void incrementDuration() {
    setState(() {
      duration++;
    });
  }

  void decrementDuration() {
    if (duration > 3) {
      setState(() {
        duration--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        HeaderAddContainer(title: 'select_time'),
        BodyAddContainer(
          onConfirm: () {
            Navigator.pop(context, duration);
          },
          count: duration,
          onIncrement: incrementDuration,
          onDecrement: decrementDuration,
        ),
      ],
    );
  }
}
