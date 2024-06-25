import 'package:flutter/material.dart';

class TwoWaySlider extends StatefulWidget {
  final double min;
  final double max;
  final double lowerValue;
  final double upperValue;
  final ValueChanged<RangeValues> onChanged;

  const TwoWaySlider({
    super.key,
    required this.min,
    required this.max,
    required this.lowerValue,
    required this.upperValue,
    required this.onChanged,
  });

  @override
  _TwoWaySliderState createState() => _TwoWaySliderState();
}

class _TwoWaySliderState extends State<TwoWaySlider> {
  late double _lowerValue;
  late double _upperValue;

  @override
  void initState() {
    super.initState();
    _lowerValue = widget.lowerValue;
    _upperValue = widget.upperValue;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            trackHeight: 4.0,
            thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 10.0),
            overlayShape: const RoundSliderOverlayShape(overlayRadius: 20.0),
          ),
          child: RangeSlider(
            activeColor: Colors.yellow.shade800,
            values: RangeValues(_lowerValue, _upperValue),
            min: widget.min,
            max: widget.max,
            onChanged: (RangeValues values) {
              setState(() {
                _lowerValue = values.start;
                _upperValue = values.end;
              });
              widget.onChanged(values);
            },
          ),
        ),
       
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('${_lowerValue.toStringAsFixed(2)} Rs'),
            Text('${_upperValue.toStringAsFixed(2)} Rs'),
          ],
        ),
      ],
    );
  }
}

class RangeSliderExample extends StatelessWidget {
  const RangeSliderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Two-Way Slider Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: TwoWaySlider(
          min: 0,
          max: 100,
          lowerValue: 20,
          upperValue: 80,
          onChanged: (RangeValues values) {
          
          },
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: RangeSliderExample(),
  ));
}
