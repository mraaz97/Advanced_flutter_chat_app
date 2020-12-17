import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../shared/ui_helper.dart';
import 'start_up_view_model.dart';

class StartUpView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StartUpViewModel>.reactive(
      viewModelBuilder: () => StartUpViewModel(),
      onModelReady: (model) {
        model.handleStartUpLogic();
      },
      builder: (context, model, child) => Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              UIHelper.verticalSpaceMedium(),
              UIHelper.verticalSpaceMedium(),
              CircularProgressIndicator(
                strokeWidth: 3,
                valueColor: AlwaysStoppedAnimation(Color(0xff19c7c1)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
