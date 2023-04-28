import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';

  const SnackbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void showCustomSnackbar(BuildContext context) {
      ScaffoldMessenger.of(context).clearSnackBars();

      final snackbar = SnackBar(
        content: const Text('Hola Mundo'),
        action: SnackBarAction(label: 'OK', onPressed: () {}),
        duration: const Duration(seconds: 2),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
    }

    void openDialog(BuildContext context) {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
          title: const Text('Estas seguro?'),
          content: const Text('Aliqua sit ipsum dolor eu deserunt aliquip.'),
          actions: [
            TextButton(
                onPressed: () => context.pop(), child: const Text('Cancelar')),
            FilledButton(
                onPressed: () => context.pop(), child: const Text('Aceptar')),
          ],
        ),
      );
    }

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
                      'Ex non eu culpa ipsum amet eu ex anim magna reprehenderit esse laborum. Dolore ut nostrud et consectetur minim labore mollit occaecat. Eiusmod do incididunt fugiat quis fugiat reprehenderit anim pariatur reprehenderit. Proident id incididunt excepteur officia consectetur veniam irure. Deserunt pariatur aliquip labore reprehenderit duis sunt elit elit. Aliqua est enim nisi eu non amet ipsum veniam et ut.')
                ]);
              },
              child: const Text('Licencias usadas'),
            ),
            FilledButton.tonal(
              onPressed: () => openDialog(context),
              child: const Text('Mostrar diálogos'),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showCustomSnackbar(context),
        label: const Text(
          'Mostrar Snackbar',
        ),
        icon: const Icon(Icons.remove_red_eye_outlined),
      ),
    );
  }
}
