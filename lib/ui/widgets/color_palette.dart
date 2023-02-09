import 'package:flutter/material.dart';
import '../../utils/color_utils.dart';

class ColorPalette extends StatelessWidget {
  const ColorPalette({Key? key, required this.baseColor, required this.callback
      // así se reciben en el constructor, por ejemplo
      //required this.baseColor
      })
      : super(key: key);

  // atributos de la clase, por ejemplo
  final List<String> baseColor;
  final Function(String) callback;
  // también se puede tener como un atributo un callback, necesiario ya que es un
  // widget sin estado, por ejemplo

// Hacer que se reciba en la clase palette una lista con los 4 colores que tiene una fila.
  @override
  Widget build(BuildContext context) {
    // padding para crear espacio alrededor del widget
    return Padding(
        padding: const EdgeInsets.all(8.0),
        // vamos a mostrar los elementos en un row
        child: Row(children: [
          Expanded(
              flex: 4,
              child: GestureDetector(
                  onTap: () => callback(baseColor[0]),
                  child: Container(
                      height: 100, color: ColorUtils.FromHex(baseColor[0])))),
          Expanded(
              flex: 3,
              child: GestureDetector(
                  onTap: () => callback(baseColor[1]),
                  child: Container(
                      height: 100, color: ColorUtils.FromHex(baseColor[1])))),
          Expanded(
              flex: 2,
              child: GestureDetector(
                  onTap: () => callback(baseColor[2]),
                  child: Container(
                      height: 100, color: ColorUtils.FromHex(baseColor[2])))),
          Expanded(
              flex: 1,
              child: GestureDetector(
                  onTap: () => callback(baseColor[3]),
                  child: Container(
                      height: 100, color: ColorUtils.FromHex(baseColor[3]))))
        ]));
  }
}
