import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magdsoft_flutter_structure/business_logic/login_cubit/login_cubit.dart';
import 'package:magdsoft_flutter_structure/business_logic/login_cubit/login_cubit.dart';
import 'package:magdsoft_flutter_structure/constants/validation.dart';
import 'package:magdsoft_flutter_structure/presentation/router/routes.dart';
import 'package:magdsoft_flutter_structure/presentation/widget/toast.dart';

import '../../../styles/colors.dart';
import '../../../widget/custom_button.dart';
import '../../../widget/custom_form_field.dart';

class CardItem extends StatelessWidget {
  const CardItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController phoneController = TextEditingController();
    final formKey = GlobalKey<FormState>();

    return BlocConsumer<LoginCubit, LoginStates>(
      listener: (context, state) {
        if (state is ErrorLoginState) {
          print("Error");
          showToast(context, state.error.toString());
        }
        if (state is SuccessLoginState) {
          print("Done");
          showToast(context, state.dataModel.message.toString());
          Navigator.pushNamed(context, Routes.verifyRoute,
              arguments: phoneController.text);
        }
      },
      builder: (context, state) {
        return Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 29.0),
            child: Container(
              width: double.infinity,
              padding:
                  const EdgeInsets.symmetric(horizontal: 44.0, vertical: 27.0),
              margin: const EdgeInsets.only(top: 140.0),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 20,
                    offset: Offset(2, 5),
                    spreadRadius: 5,
                  )
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Welcome',
                    style: TextStyle(
                      color: ColorManager.textColorBlack,
                      fontSize: 30,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Container(
                    width: 143,
                    height: 3.13,
                    color: ColorManager.lightBlue,
                  ),
                  const SizedBox(
                    height: 42.0,
                  ),
                  CustomFormField(
                    hintText: 'Enter your Full Name',
                    validation: (val) {
                      if (!val!.isValidName) {
                        return "Enter valid Name";
                      } else if (val.isEmpty) {
                        return "Please enter your name";
                      }
                      return null;
                    },
                    controller: nameController,
                    inputType: TextInputType.text,
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  CustomFormField(
                    hintText: 'Enter your Phone Number',
                    validation: (val) {
                      if (!val!.isValidPhone) {
                        return "Enter valid Phone";
                      } else if (val.isEmpty) {
                        return "Please enter your phone";
                      }
                      return null;
                    },
                    controller: phoneController,
                    inputType: TextInputType.phone,
                  ),
                  const SizedBox(
                    height: 32.0,
                  ),
                  CustomButton(
                    text: "Login",
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        LoginCubit.get(context).verifyAccount(
                            name: nameController.text,
                            phone: phoneController.text);
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
