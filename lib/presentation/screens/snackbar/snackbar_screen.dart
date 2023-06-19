import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  const SnackbarScreen({Key? key}) : super(key: key);

  void showCustomSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackbar = SnackBar(
      content: const Text('Hola Mundo!'),
      action: SnackBarAction(label: 'Ok!', onPressed: () {}),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) => AlertDialog(
              title: const Text('¿Estas seguro?'),
              content: const Text(
                  'Voluptate nulla nulla esse est anim esse cillum consequat elit elit sint ipsum voluptate. Do ullamco magna enim veniam sit voluptate pariatur qui adipisicing id Lorem sit mollit cillum. Eiusmod excepteur ipsum est velit non. Non cupidatat incididunt ullamco in reprehenderit elit. Incididunt do aliquip dolore magna culpa.'),
              actions: [
                TextButton(
                    onPressed: () => context.pop(),
                    child: const Text('Cancelar')),
                FilledButton(
                    onPressed: () => context.pop(),
                    child: const Text('Aceptar'))
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y Diálogos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: () {
                showAboutDialog(context: context, children: [
                  const Text(
                      'Deserunt in ad velit ullamco pariatur nulla ex. Minim dolore amet id esse incididunt magna tempor incididunt ex enim laboris aliquip elit labore. Excepteur consectetur irure ea officia exercitation excepteur et magna esse officia. Quis do elit velit nulla pariatur ullamco et aliquip labore voluptate aute ad nulla ad. Tempor duis commodo cupidatat irure elit aliqua culpa id amet dolore anim pariatur. Mollit est quis Lorem in tempor incididunt ad magna ea laboris enim.')
                ]);
              },
              child: const Text('Licencias usadas'),
            ),
            FilledButton.tonal(
              onPressed: () => openDialog(context),
              child: const Text('Mostrar diálogo'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Mostrar Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackBar(context),
      ),
    );
  }
}
