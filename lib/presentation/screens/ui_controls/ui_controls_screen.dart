import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  const UiControlsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Controls + Tiles'),
      ),
      body: const _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transp { car, plane, boat, submarine }

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  Transp selectedTransp = Transp.car;
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
            onChanged: (value) => setState(() {
                  isDeveloper = !isDeveloper;
                })),
        ExpansionTile(
          title: const Text('Vehículo de transporte'),
          subtitle: Text('$selectedTransp'),
          children: [
            RadioListTile(
                title: const Text('By Car'),
                subtitle: const Text('Viajar en Auto'),
                value: Transp.car,
                groupValue: selectedTransp,
                onChanged: (value) => setState(() {
                      selectedTransp = Transp.car;
                    })),
            RadioListTile(
                title: const Text('By Boat'),
                subtitle: const Text('Viajar en Barco'),
                value: Transp.boat,
                groupValue: selectedTransp,
                onChanged: (value) => setState(() {
                      selectedTransp = Transp.boat;
                    })),
            RadioListTile(
                title: const Text('By Plane'),
                subtitle: const Text('Viajar en Avión'),
                value: Transp.plane,
                groupValue: selectedTransp,
                onChanged: (value) => setState(() {
                      selectedTransp = Transp.plane;
                    })),
            RadioListTile(
                title: const Text('By Submarine'),
                subtitle: const Text('Viajar en Submarino'),
                value: Transp.submarine,
                groupValue: selectedTransp,
                onChanged: (value) => setState(() {
                      selectedTransp = Transp.submarine;
                    })),
          ],
        ),
        CheckboxListTile(
            title: const Text('¿Incluir Desayuno?'),
            value: wantsBreakfast,
            onChanged: (value) => setState(() {
                  wantsBreakfast = !wantsBreakfast;
                })),
        CheckboxListTile(
            title: const Text('¿Incluir Almuerzo?'),
            value: wantsLunch,
            onChanged: (value) => setState(() {
                  wantsLunch = !wantsLunch;
                })),
        CheckboxListTile(
            title: const Text('¿Incluir Cena?'),
            value: wantsDinner,
            onChanged: (value) => setState(() {
                  wantsDinner = !wantsDinner;
                }))
      ],
    );
  }
}
