import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magdsoft_flutter_structure/business_logic/login_cubit/login_cubit.dart';
import 'package:magdsoft_flutter_structure/data/data_providers/local/cache_helper.dart';
import 'package:magdsoft_flutter_structure/presentation/router/routes.dart';
import 'package:magdsoft_flutter_structure/presentation/styles/colors.dart';
import 'package:magdsoft_flutter_structure/presentation/widget/custom_button.dart';
import 'package:magdsoft_flutter_structure/presentation/widget/toast.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerifyScreen extends StatelessWidget {
  final String phoneNumber;

  const VerifyScreen({Key? key, required this.phoneNumber}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("##############################");
    print(phoneNumber);
    print("##############################");
    final formKey = GlobalKey<FormState>();
    TextEditingController codeController = TextEditingController();
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocConsumer<LoginCubit, LoginStates>(
        listener: (context, state) {
          if (state is SuccessOTPState) {
            print("Done");
            showToast(context, state.dataModel.message);
            CacheHelper.saveDataSharedPreference(key: "logging", value: true);
            Navigator.pushReplacementNamed(context, Routes.homeRoute);
          }
          if (state is ErrorOTPState) {
            print("Error");
            showToast(context, state.error.toString());
          }
        },
        builder: (context, state) {
          return Scaffold(
            body: Form(
              key: formKey,
              child: SafeArea(
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 430,
                          height: 380,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(0.00, -1.00),
                              end: Alignment(0.0, 1),
                              colors: [Color(0xD80062BD), Color(0x000062BD)],
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            const SizedBox(
                              height: 42.0,
                            ),
                            const Text(
                              'Verify Phone',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const SizedBox(
                              height: 118.0,
                            ),
                            Padding(
                              padding:
                              const EdgeInsets.symmetric(horizontal: 47.0),
                              child: PinCodeTextField(
                                appContext: context,
                                controller: codeController,
                                // autoFocus: true,
                                cursorColor: ColorManager.lightBlue,
                                keyboardType: TextInputType.number,
                                length: 4,
                                obscureText: false,
                                textStyle: const TextStyle(
                                  color: ColorManager.lightBlue,
                                ),
                                animationType: AnimationType.scale,
                                pinTheme: PinTheme(
                                  shape: PinCodeFieldShape.box,
                                  activeBoxShadow: [
                                    const BoxShadow(
                                      color: Color(0x3F000000),
                                      blurRadius: 20,
                                      offset: Offset(2, 5),
                                      spreadRadius: 5,
                                    )
                                  ],
                                  inActiveBoxShadow: [
                                    const BoxShadow(
                                      color: Color(0x3F000000),
                                      blurRadius: 20,
                                      offset: Offset(2, 5),
                                      spreadRadius: 5,
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(15),
                                  fieldHeight: 80,
                                  fieldWidth: 70,
                                  borderWidth: 1.0,
                                  activeColor: ColorManager.white,
                                  inactiveColor: ColorManager.white,
                                  activeFillColor: ColorManager.white,
                                  inactiveFillColor: ColorManager.white,
                                  selectedColor: ColorManager.white,
                                  selectedFillColor: ColorManager.white,
                                ),
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return "code must not be empty";
                                  }
                                  return null;
                                },
                                animationDuration:
                                const Duration(milliseconds: 300),
                                backgroundColor: Colors.transparent,
                                enableActiveFill: true,
                                onChanged: (value) {},
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Resend Code',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF0062BD),
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 58.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 46.0),
                      child: CustomButton(
                        text: "Verify",
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            LoginCubit.get(context).otp(
                                code: "6523", phone: phoneNumber);
                          }
                          // Navigator.pushReplacementNamed(
                          //     context, Routes.homeRoute);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
