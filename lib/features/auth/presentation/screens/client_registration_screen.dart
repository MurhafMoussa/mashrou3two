import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gender_picker/source/enums.dart';
import 'package:gender_picker/source/gender_picker.dart';
import 'package:mashrou3two/core/extensions/context_extensions.dart';
import 'package:mashrou3two/core/global_states/standard_state.dart';
import 'package:mashrou3two/core/resources/border_manager.dart';
import 'package:mashrou3two/core/resources/color_manager.dart';
import 'package:mashrou3two/core/resources/padding_manager.dart';
import 'package:mashrou3two/core/utils/app_utils.dart';
import 'package:mashrou3two/core/utils/app_validation_functions.dart';
import 'package:mashrou3two/core/widgets/app_back_button.dart';
import 'package:mashrou3two/core/widgets/app_button.dart';
import 'package:mashrou3two/core/widgets/app_text.dart';
import 'package:mashrou3two/core/widgets/app_text_form_field.dart';
import 'package:mashrou3two/features/auth/data/models/client_body.dart';
import 'package:mashrou3two/features/auth/domain/authentication_cubit.dart';

class ClientRegistrationScreen extends StatefulWidget {
  const ClientRegistrationScreen({super.key});

  @override
  State<ClientRegistrationScreen> createState() =>
      _ClientRegistrationScreenState();
}

class _ClientRegistrationScreenState extends State<ClientRegistrationScreen> {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController passwordConfirmationController =
      TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController genderController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController dateOfBirthController = TextEditingController();
  int currentStep = 0;
  final _formState = GlobalKey<FormState>();
  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    passwordConfirmationController.dispose();
    passwordController.dispose();
    genderController.dispose();
    dateOfBirthController.dispose();
    emailController.dispose();
    phoneController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final isInitialStep = currentStep == 0;
    final isLastStep = currentStep == getSteps(context).length - 1;
    return BlocListener<AuthenticationCubit, StandardState<String>>(
      listener: (context, state) {},
      child: Scaffold(
        appBar: AppBar(
          leading: const AppBackButton(),
        ),
        resizeToAvoidBottomInset: true,
        backgroundColor: ColorManager.lightGreen,
        body: Form(
          key: _formState,
          child: Column(
            children: [
              const Spacer(),
              AppText.smallHeadLine(
                text: 'Register As Client',
                color: ColorManager.white,
              ),
              const Spacer(),
              Container(
                height: context.height() * 4 / 5,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 50).w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusManager.topLeftOnly20,
                  color: ColorManager.white,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Stepper(
                        currentStep: currentStep,
                        onStepTapped: (value) => setState(() {
                          currentStep = value;
                        }),
                        onStepContinue: isLastStep
                            ? null
                            : () {
                                setState(() {
                                  currentStep++;
                                });
                              },
                        onStepCancel: isInitialStep || isLastStep
                            ? null
                            : () {
                                setState(() {
                                  currentStep--;
                                });
                              },
                        steps: getSteps(context),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Step> getSteps(BuildContext context) => [
        Step(
          isActive: currentStep >= 0,
          title: Text(context.appLocalizations.account),
          content: Column(
            children: [
              AppTextFormField(
                textEditingController: firstNameController,
                validator: AppValidation.validateFirstName,
                hintText: context.appLocalizations.firstName,
              ),
              AppTextFormField(
                textEditingController: lastNameController,
                validator: AppValidation.validateLastName,
                hintText: context.appLocalizations.lastName,
              ),
              AppTextFormField(
                textEditingController: phoneController,
                validator: AppValidation.validatePhoneNumber,
                hintText: context.appLocalizations.phoneNumber,
                textInputType: TextInputType.phone,
              ),
              AppTextFormField(
                textEditingController: passwordController,
                validator: AppValidation.validatePassword,
                hintText: context.appLocalizations.password,
              ),
              AppTextFormField(
                textEditingController: passwordConfirmationController,
                validator: (confirmPassword) =>
                    AppValidation.validatePasswordConfirmation(
                  confirmPassword,
                  passwordController.text,
                ),
                hintText: context.appLocalizations.confirmPassword,
              ),
              AppTextFormField(
                textEditingController: emailController,
                validator: AppValidation.validateEmail,
                hintText: context.appLocalizations.emailoptional,
                textInputType: TextInputType.emailAddress,
              ),
            ],
          ),
        ),
        Step(
          isActive: currentStep >= 1,
          title: Text(context.appLocalizations.genderOptional),
          content: GenderPickerWithImage(
            onChanged: (Gender? gender) {
              genderController.text =
                  gender.toString().substring(7).toLowerCase();
            },

            size: 100.w, //default : 40
          ),
        ),
        Step(
          isActive: currentStep >= 2,
          title: Text(context.appLocalizations.dateOfBirthOptional),
          content: AppTextFormField(
            textEditingController: dateOfBirthController,
            validator: (p0) => null,
            hintText: context.appLocalizations.tapToChooseDate,
            prefixIcon: const Icon(Icons.calendar_today),
            readOnly: true,
            onTap: () async => AppUtils.pickDateOfBirth(
              context,
              dateOfBirthController,
            ),
          ),
        ),
        Step(
          title: Text(context.appLocalizations.finish),
          content: AppButton.text(
            onPressed: () async {
              if (_formState.currentState != null &&
                  _formState.currentState!.validate()) {
                context.read<AuthenticationCubit>().registerAsClient(
                      ClientBody(
                        firstName: firstNameController.text,
                        lastNAme: lastNameController.text,
                        phoneNumber: phoneController.text,
                        password: passwordController.text,
                        passwordConfirmation:
                            passwordConfirmationController.text,
                      ),
                    );
              }
            },
            content: Text(context.appLocalizations.regester),
          ),
        ),
      ];
}
