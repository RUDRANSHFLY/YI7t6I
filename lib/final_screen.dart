import 'package:flutter/material.dart';
import 'package:widget_assignment_app/insert_screen.dart';

class FinalScreen extends StatefulWidget {
  final bool isTextWidget;
  final bool isImageWidget;
  final bool isButtonWidget;

  const FinalScreen({
    super.key,
    required this.isTextWidget,
    required this.isButtonWidget,
    required this.isImageWidget,
  });

  @override
  State<FinalScreen> createState() => _FinalScreenState();
}

class _FinalScreenState extends State<FinalScreen> {

  bool isAdded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                child: widget.isTextWidget ||
                        widget.isButtonWidget ||
                        widget.isImageWidget
                    ? Column(
                        children: [
                          if (widget.isTextWidget)
                            Container(
                              color: Colors.blueAccent,
                              width: 400,
                              child: const Text(
                                'Text Widget',
                                style: TextStyle(fontSize: 30),
                              ),
                            ),
                          if (widget.isImageWidget)
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 20),
                              color: Colors.blueAccent,
                              width: 400,
                              height: 100,
                              child: const Text(
                                'Image Widget',
                                style: TextStyle(fontSize: 30),
                              ),
                            ),
                          if (widget.isButtonWidget)
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 20),
                              color: Colors.blueAccent,
                              width: 400,
                              child: const Text(
                                'Button Widget',
                                style: TextStyle(fontSize: 30),
                              ),
                            ),
                          TextButton(
                            style: ButtonStyle(
                                padding: WidgetStatePropertyAll(
                                    EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 40)),
                                backgroundColor:
                                    WidgetStatePropertyAll(Colors.yellow)),
                            onPressed: () {
                              setState(() {
                                isAdded = true;
                              });
                            },
                            child: Text(
                              'Save',
                              style: TextStyle(fontSize: 30),
                            ),
                          )
                        ],
                      )
                    : Column(
                        children: [
                          Container(
                            child: Text(
                              'Select at least a Widget',
                              style: TextStyle(fontSize: 30),
                            ),
                          )
                        ],
                      )),
            TextButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.black12),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/insert_widget');
              },
              child: Text(
                'Add Widget',
                style: TextStyle(fontSize: 30),
              ),
            ),
            if(isAdded)
              Container(
                color: Colors.green,
                child: Text('Widget Sucessfully added',style: TextStyle(fontSize: 30),) ,
              )
          ],
        ),
      ),
    );
  }
}

void onAddWidgetPress() {}
