import 'package:flutter/material.dart';
import 'package:flutter_components/themes/app_theme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnable = false;

  void setSliderValues(value) {
    _sliderValue = value;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Slider && Checks"),
        ),
        body: Column(
          children: [
            Slider.adaptive(
              activeColor: AppTheme.primary,
              min: 50,
              max: 500,
              value: _sliderValue,
              onChanged: _sliderEnable ? setSliderValues : null,
            ),
            Checkbox(
              value: _sliderEnable,
              onChanged: (value) {
                _sliderEnable = value ?? true;
                setState(() {});
              },
            ),
            CheckboxListTile(
              activeColor: AppTheme.primary,
              title: const Text("Habilitar Slider"),
              value: _sliderEnable,
              onChanged: (value) {
                _sliderEnable = value ?? true;
                setState(() {});
              },
            ),
            Switch(
              activeColor: AppTheme.primary,
              value: _sliderEnable,
              onChanged: (value) => setState(() {
                _sliderEnable = value;
              }),
            ),
            SwitchListTile.adaptive(
              title: const Text('Habilitar Slider'),
              value: _sliderEnable,
              onChanged: (value) => setState(() {
                _sliderEnable = value;
              }),
            ),
            const AboutListTile(),
            Expanded(
              child: SingleChildScrollView(
                child: Image(
                  image: const NetworkImage(
                      'https://www.nicepng.com/png/detail/433-4336827_banner-batman-from-the-animated-animado-dibujos-de.png'),
                  fit: BoxFit.cover,
                  width: _sliderValue,
                ),
              ),
            ),
          ],
        ));
  }
}
