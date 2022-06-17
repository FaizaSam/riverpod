import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_color_gen/material_color_gen.dart';

final colorStateProvider = StateProvider((ref) => Colors.grey);
final sizeStateProvider = StateProvider((ref) => 10.0);
void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends ConsumerWidget {
  //static Color iconColor = Colors.grey;
  // double _sliderValue = 10.0;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final iconColor = ref.watch(colorStateProvider);
    final _sliderValue = ref.watch(sizeStateProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text('RiverrPod Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Icon(
              Icons.favorite,
              color: iconColor,
              size: 20.0 + ref.read(sizeStateProvider.state).state,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                    child: Container(
                      //  color: Colors.black,
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.black),
                    ),
                    onTap: () {
                      var icnColor = Color(
                        0xff010a1d,
                      ).toMaterialColor();
                      ref.read(colorStateProvider.state).state = icnColor;
                      // setState(() {
                      //   iconColor = Colors.black;
                      // });
                    }),
                SizedBox(
                  width: 3,
                ),
                GestureDetector(
                    child: Container(
                      //  color: Colors.black,
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xff042975)),
                    ),
                    onTap: () {
                      var icnColor = Color(0xff042975).toMaterialColor();
                      ref.read(colorStateProvider.state).state = icnColor;
                    }),
                SizedBox(
                  width: 3,
                ),
                GestureDetector(
                    child: Container(
                      //  color: Colors.black,
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xffd58858)),
                    ),
                    onTap: () {
                      var icnColor = Color(0xffd58858).toMaterialColor();
                      ref.read(colorStateProvider.state).state = icnColor;
                    })
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                    child: Container(
                      //  color: Colors.black,
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xff3dcb61)),
                    ),
                    onTap: () {
                      var icnColor = Color(0xff3dcb61).toMaterialColor();
                      ref.read(colorStateProvider.state).state = icnColor;
                    }),
                SizedBox(
                  width: 3,
                ),
                GestureDetector(
                    child: Container(
                      //  color: Colors.black,
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xffcc0e11)),
                    ),
                    onTap: () {
                      var icnColor = Color(0xffcc0e11).toMaterialColor();
                      ref.read(colorStateProvider.state).state = icnColor;
                    }),
                SizedBox(
                  width: 3,
                ),
                GestureDetector(
                    child: Container(
                      //  color: Colors.black,
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xff0fa2aa)),
                    ),
                    onTap: () {
                      var icnColor = Color(0xff0fa2aa).toMaterialColor();
                      ref.read(colorStateProvider.state).state = icnColor;
                    })
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Flexible(
              flex: 1,
              child: Slider(
                activeColor: Colors.indigoAccent,
                min: 10.0,
                max: 25.0,
                onChanged: (newRating) {
                  ref.read(sizeStateProvider.state).state = newRating;
                  //    setState(() => _sliderValue = newRating);
                },
                value: _sliderValue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
