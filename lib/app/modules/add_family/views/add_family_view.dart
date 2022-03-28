import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nutrition_checker/app/widgets/header.dart';

import '../controllers/add_family_controller.dart';

class AddFamilyView extends GetView<AddFamilyController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        child: Column(
          children: [
            Header(
                status: true,
                child: Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Text(
                    'ADD FAMILY',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                )),
            Expanded(
              child: ListView(
                padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                children: [
                  Form(
                    key: controller.formKeyLogin,
                    child: Column(
                      children: [
                        _textField('Name', controller.nameC, controller.validateName.value, controller.errName.value),
                        SizedBox(
                          height: 10,
                        ),
                        _textField('Age', controller.nameC, controller.validateName.value, controller.errName.value),
                        SizedBox(
                          height: 10,
                        ),
                        _textField('Category', controller.nameC, controller.validateName.value, controller.errName.value),
                        SizedBox(
                          height: 10,
                        ),
                        _textField('Gender', controller.nameC, controller.validateName.value, controller.errName.value),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(29),
                            // ignore: deprecated_member_use
                            child: FlatButton(
                              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                              color: Color(0xff00345b),
                              onPressed: () {
                                if (controller.formKeyLogin.currentState.validate()) {
                                }
                              },
                              child: Text(
                                'SUBMIT',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }

  Widget _textField(label, controller, validateName, errName) {
    return TextFormField(
      validator: (val) {
        if (val == null || val.isEmpty) {
          return 'The ${label.toString().toLowerCase()} field is required';
        }
        return null;
      },
      cursorColor: Color(0xff00345b),
      controller: controller,
      readOnly: true,
      onTap: () {},
      decoration: InputDecoration(
          hintText: label,
          hintStyle: TextStyle(color: Color(0xff00345b)),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: Color(0xff00345b), width: 2.0),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: Color(0xff00345b), width: 2.0),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: Color(0xff00345b), width: 2.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: Color(0xff00345b), width: 2.0),
          ),
          errorText: validateName ? errName : null),
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(color: Color(0xff00345b)),
    );
  }
}
