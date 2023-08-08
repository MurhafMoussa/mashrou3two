import 'package:flutter/material.dart';
import 'package:mashrou3two/core/extensions/context_extensions.dart';
import 'package:mashrou3two/core/resources/assets_manager.dart';
import 'package:mashrou3two/core/resources/color_manager.dart';
import 'package:mashrou3two/core/resources/constant_values.dart';
import 'package:mashrou3two/core/resources/padding_manager.dart';
import 'package:mashrou3two/core/widgets/app_button.dart';
import 'package:mashrou3two/core/widgets/app_text.dart';
import 'package:mashrou3two/features/auth/presentation/widgets/user_type_card.dart';

class ChooseAccountTypeScreen extends StatefulWidget {
  const ChooseAccountTypeScreen({super.key});

  @override
  State<ChooseAccountTypeScreen> createState() =>
      _ChooseAccountTypeScreenState();
}

class _ChooseAccountTypeScreenState extends State<ChooseAccountTypeScreen> {
  int? selectedUser;

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: ColorManager.lightGreen,
        body: Column(
          children: [
            Padding(
              padding: PaddingManager.appTotalWithStepperPadding,
              child: AppText.mediumHeadLine(
                text: context.appLocalizations.areYouA,
                color: ColorManager.white,
              ),
            ),
            UserTypeCard(
              userTypeName: context.appLocalizations.tourist,
              userTypeImage: AssetsManager.client,
              isSelected: selectedUser == clientRoleStatusCode,
              onTap: () {
                setState(() {
                  selectedUser = clientRoleStatusCode;
                });
              },
            ),
            UserTypeCard(
              userTypeName: context.appLocalizations.tourismFacility,
              userTypeImage: AssetsManager.facility,
              isSelected: selectedUser == touristFacilityRoleStatusCode,
              onTap: () {
                setState(() {
                  selectedUser = touristFacilityRoleStatusCode;
                });
              },
            ),
            UserTypeCard(
              userTypeName: context.appLocalizations.tourismCompany,
              userTypeImage: AssetsManager.company,
              isSelected: selectedUser == touristCompanyRoleStatusCode,
              onTap: () {
                setState(() {
                  selectedUser = touristCompanyRoleStatusCode;
                });
              },
            ),
            const Spacer(
              flex: 2,
            ),
            AppButton.filled(
              onPressed:selectedUser!=null? () {}:null,
              content:  Text(context.appLocalizations.continueWord),
            ),
            const Spacer(),
          ],
        ),
      );
}
