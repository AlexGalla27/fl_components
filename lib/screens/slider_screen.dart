import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 35;
  bool _checkBoxValue = true;
  bool _switchValue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sliders & Check")),
      body: Column(
        children: [
          Slider(
            min: 18,
            max: 99,
            value: _sliderValue,
            onChanged: _checkBoxValue
                ? (value) {
                    print(value);
                    _sliderValue = value;
                    setState(() {});
                  }
                : null,
          ),
          Row(
            children: [
              Checkbox(
                value: _checkBoxValue,
                onChanged: (value) {
                  _checkBoxValue = value ?? true;
                  setState(() {});
                },
              ),
              Text("Acepto terminos y condiciones"),
            ],
          ),

          Row(
            children: [
              Transform.scale(
                scale: 0.8,
                child: Switch(
                  value: _checkBoxValue,
                  onChanged: (value) {
                    _checkBoxValue = value;
                    setState(() {});
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
