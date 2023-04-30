import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const name = 'ui_controls_screen';

  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('UI Controls'),
        ),
        body: const _UiControlsView());
  }
}

enum Transportation { car, plane, boat, submarine }

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = false;
  Transportation selectedTransportation = Transportation.car;
  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text('Developer Mode'),
          subtitle: const Text('Controles adicionales'),
          value: isDeveloper,
          onChanged: (value) {
            isDeveloper = !isDeveloper;
            setState(() {});
          },
        ),
        ExpansionTile(
          title: const Text('Vehículo de transporte'),
          subtitle: Text('$selectedTransportation'),
          children: [
            RadioListTile(
              title: const Text('By Car'),
              subtitle: const Text('Viajar por auto'),
              value: Transportation.car,
              groupValue: selectedTransportation,
              onChanged: (value) {
                selectedTransportation = Transportation.car;
                setState(() {});
              },
            ),
            RadioListTile(
              title: const Text('By Plane'),
              subtitle: const Text('Viajar por avión'),
              value: Transportation.plane,
              groupValue: selectedTransportation,
              onChanged: (value) {
                selectedTransportation = Transportation.plane;
                setState(() {});
              },
            ),
            RadioListTile(
              title: const Text('By Boat'),
              subtitle: const Text('Viajar por barco'),
              value: Transportation.boat,
              groupValue: selectedTransportation,
              onChanged: (value) {
                selectedTransportation = Transportation.boat;
                setState(() {});
              },
            ),
            RadioListTile(
              title: const Text('By Submarine'),
              subtitle: const Text('Viajar por submarino'),
              value: Transportation.submarine,
              groupValue: selectedTransportation,
              onChanged: (value) {
                selectedTransportation = Transportation.submarine;
                setState(() {});
              },
            ),
          ],
        ),
        CheckboxListTile(
          title: const Text('Wants Breakfast'),
          subtitle: const Text('Wants Breakfast'),
          value: wantsBreakfast,
          onChanged: (value) {
            wantsBreakfast = !wantsBreakfast;
            setState(() {});
          },
        ),
        CheckboxListTile(
          title: const Text('Wants Lunch'),
          subtitle: const Text('Wants Lunch'),
          value: wantsLunch,
          onChanged: (value) {
            wantsLunch = !wantsLunch;
            setState(() {});
          },
        ),
        CheckboxListTile(
          title: const Text('Wants Dinner'),
          subtitle: const Text('Wants Dinner'),
          value: wantsDinner,
          onChanged: (value) {
            wantsDinner = !wantsDinner;
            setState(() {});
          },
        ),
      ],
    );
  }
}
