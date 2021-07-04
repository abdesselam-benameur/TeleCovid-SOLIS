import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tele_covid_solis/controllers/question_controller.dart';
import 'package:tele_covid_solis/widgets/body-questionnaire.dart';

class QuestionnairePageWidget extends StatelessWidget {
  // @override
  // void initState() {
  //   super.initState();
  //   textController = TextEditingController();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Color(0xFF473F97),
        automaticallyImplyLeading: true,
        actions: [],
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Color(0xFF473F97),
      body: ChangeNotifierProvider(
        create: (_) => QuestionController(),
        child: Body(),
      ),
    );
  }
}
