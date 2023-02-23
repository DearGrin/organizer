import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

///вынести в отдеьлный файл - легче читать и ориентироваться
class WidgetSizeRenderObject extends RenderProxyBox {
  final OnWidgetSizeChange onSizeChange;
  Size? currentSize;

  WidgetSizeRenderObject(this.onSizeChange);

  @override
  void performLayout() {
    super.performLayout();

    try {
      Size? newSize = child?.size;

      if (newSize != null && currentSize != newSize) {
        currentSize = newSize;
        WidgetsBinding.instance.addPostFrameCallback((_) {
          onSizeChange(newSize);
        });
      }
    } catch (e) {
      debugPrint("$e");
    }
  }
}

///вынести в отдеьлный файл - легче читать и ориентироваться
typedef OnWidgetSizeChange = void Function(Size size);

class WidgetSizeOffsetWrapper extends SingleChildRenderObjectWidget {
  final OnWidgetSizeChange onSizeChange;

  const WidgetSizeOffsetWrapper({
    Key? key,
    required this.onSizeChange,
    required Widget child,
  }) : super(key: key, child: child);

  @override
  RenderObject createRenderObject(BuildContext context) {
    return WidgetSizeRenderObject(onSizeChange);
  }
}

///вынести в отдеьлный файл - легче читать и ориентироваться
// class _CreateSample extends StatefulWidget {
//   const _CreateSample({
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   State<_CreateSample> createState() => _CreateSampleState();
// }
//
// class _CreateSampleState extends State<_CreateSample> {
//   late TextEditingController fieldTittle;
//   late TextEditingController fieldText;
//
//   @override
//   void initState() {
//     fieldTittle = TextEditingController();
//     fieldText = TextEditingController();
//
//     super.initState();
//   }
//
//   ///не забыть про dispose контроллеров
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       child: Column(
//         children: [
//           TextField(
//             controller: fieldTittle,
//           ),
//           TextField(
//             controller: fieldText,
//           ),
//           ElevatedButton(
//             onPressed: () {
//               ///для читаемости вынести отдельно
//               context.read<ExperimentSchemeBloc>().add(
//                     ExperimentSchemeEvent.addNewSample(
//                       text: fieldText.text,
//                       title: fieldTittle.text,
//                     ),
//                   );
//               fieldText.clear();
//               fieldTittle.clear();
//             },
//
//             ///не забываем про const
//             child: Text("Создать образец"),
//           )
//         ],
//       ),
//     );
//   }
// }

