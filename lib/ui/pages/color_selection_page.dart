import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';

import '../../utils/color_utils.dart';
import '../widgets/color_palette.dart';

class ColorSelectionPage extends StatelessWidget {
  const ColorSelectionPage({Key? key}) : super(key: key);

  void showDialog() {
    Get.dialog(const AlertDialog(
      title: Text('Flutter'),
      content: Text('Dialog'),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Color palette app'),
          actions: [
            IconButton(onPressed: showDialog, icon: Icon(Icons.info_outline))
          ],
        ),
        // https://colorhunt.co/
        body: (Center(
          child: SingleChildScrollView(
            child: Column(children: [
              ColorPalette(
                  baseColor: ["#000000", "#0F6292", "#16FF00", "#FFED00"],
                  callback: showColor),
              ColorPalette(
                  baseColor: ["#F9F54B", "#8BF5FA", "#3F979B", "#205E61"],
                  callback: showColor),
              ColorPalette(
                  baseColor: ["#362FD9", "#3C84AB", "#85CDFD", "#DEFCF9"],
                  callback: showColor),
              ColorPalette(
                  baseColor: ["#B5F1CC", "#E5FDD1", "#C9F4AA", "#C9F4AA"],
                  callback: showColor),
              ColorPalette(
                  baseColor: ["#6096B4", "#93BFCF", "#BDCDD6", "#EEE9DA"],
                  callback: showColor),
            ]),
          ),
        )));
  }

  // está es la función que será llamada con cada click a un ColorPalette
  void showColor(String value) {
    Clipboard.setData(ClipboardData(text: value));
    Get.snackbar(
      'Color palette',
      'Valor copiado',
      backgroundColor: ColorUtils.FromHex(value),
      snackPosition: SnackPosition.BOTTOM,
    );
  }
}
