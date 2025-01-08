import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widget_assignment_app/final_screen.dart';

class InsertScreen extends StatefulWidget {
  const InsertScreen({super.key});

  @override
  State<InsertScreen> createState() => _InsertScreenState();
}

class _InsertScreenState extends State<InsertScreen> {
  bool isImageWidget = false;

  bool isTextWidget = false;

  bool isButtonWidget = false;
  
  void onImportWidgetPress(){
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => FinalScreen(isTextWidget: isTextWidget, isButtonWidget: isButtonWidget, isImageWidget: isImageWidget)),
    );
  }

  void onPressedTextWidget() {
    setState(() {
      isTextWidget = !isTextWidget;
    });
  }

  void onButtonWidgetPressed() {
    setState(() {
      isButtonWidget = !isButtonWidget;
    });
  }

  void onImageWidgetPressesd() {
    setState(() {
      isImageWidget = !isImageWidget;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Colors.amberAccent,
              width: 300,
              child: Row(
                children: [
                  IconButton(
                    onPressed: onPressedTextWidget,
                    icon: Icon(
                      Icons.circle,
                      color: isTextWidget ? Colors.green : Colors.grey,
                      size: 30,
                    ),
                  ),
                  Text(
                    'Text Widget',
                    style: TextStyle(fontSize: 30),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              color: Colors.amberAccent,
              width: 300,
              child: Row(
                children: [
                  IconButton(
                    onPressed: onImageWidgetPressesd,
                    icon: Icon(
                      Icons.circle,
                      color: isImageWidget ? Colors.green : Colors.grey,
                      size: 30,
                    ),
                  ),
                  Text(
                    'Image Widget',
                    style: TextStyle(fontSize: 30),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              color: Colors.amberAccent,
              width: 300,
              child: Row(
                children: [
                  IconButton(
                    onPressed: onButtonWidgetPressed,
                    icon: Icon(
                      Icons.circle,
                      color: isButtonWidget ? Colors.green : Colors.grey,
                      size: 30,
                    ),
                  ),
                  Text(
                    'Button Widget',
                    style: TextStyle(fontSize: 30),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            TextButton(
              style: const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.black12),
              ),
              onPressed: onImportWidgetPress,
              child: const Text('Import Widget',style: TextStyle(fontSize: 30),),
            ),
          ],
        ),
      ),
    );
  }
}
