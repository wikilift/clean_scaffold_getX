import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:noe_multi_service/app/ui/global/animated_button_widget.dart';
import 'package:noe_multi_service/app/ui/utils/style_utils.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog(
      {required this.message,
      required this.okFunction,
      required this.cancelMessage,
      required this.okMessage,
      super.key});
  final String message;
  final VoidCallback okFunction;
  final String cancelMessage;
  final String okMessage;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: SizedBox(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const Spacer(),
                    AnimatedButtonWidget(
                        child: const Icon(Icons.close, color: Colors.grey, size: 30),
                        onPressed: () => Get.back(result: false))
                  ],
                ),
              ),
              SizedBox(
                child: SpinKitWave(color: Colors.blue.withOpacity(0.5)),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                message,
                textAlign: TextAlign.center,
                style: appStandarText(fontSize: H2),
              ),
            ],
          ),
        ),
      ),
      actions: [
        ElevatedButton(
          onPressed: () {
            Get.back(result: false);
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.grey),
          ),
          child: Text(
            cancelMessage,
            style: appStandarText(color: Colors.white, fontSize: H4),
          ),
        ),
        ElevatedButton(
          onPressed: okFunction,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue),
          ),
          child: Text(
            okMessage,
            style: appStandarText(color: Colors.white, fontSize: H4),
          ),
        ),
      ],
    );
  }
}
