import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:xgrid_test/Core/widgets/button_widgets.dart';
import 'package:xgrid_test/UI/profile/profile_controller.dart';

class Profile extends GetView<ProfileController> {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    controller.updateTheme();
                  },
                  child: const Align(
                    alignment: Alignment.centerRight,
                    child: Icon(
                      Icons.dark_mode_outlined,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).primaryColorDark,
                    border: Border.all(
                      color: Theme.of(context).primaryColor,
                      width: 3,
                    ),
                  ),
                  padding: const EdgeInsets.all(18),
                  child: Icon(
                    Icons.person_outline,
                    color: Theme.of(context).primaryColor,
                    size: 40.r,
                  ),
                ),
                8.verticalSpace,
                Text(
                  "John Doe",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                8.verticalSpace,
                Text(
                  "john.doe@example.com",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                20.verticalSpace,
                ButtonWidgets.buttonWithWidth(
                  title: "Upgrade to PRO",
                  onTap: () {},
                ),
                25.verticalSpace,
                ButtonWidgets.buttonWithAnchorAndIcon(
                  title: "Privacy",
                  onTap: null,
                  icon: Icons.privacy_tip_outlined,
                ),
                14.verticalSpace,
                ButtonWidgets.buttonWithAnchorAndIcon(
                  title: "Purchase History",
                  onTap: null,
                  icon: Icons.history,
                ),
                14.verticalSpace,
                ButtonWidgets.buttonWithAnchorAndIcon(
                  title: "Help & Support",
                  onTap: null,
                  icon: Icons.help_outline_outlined,
                ),
                14.verticalSpace,
                ButtonWidgets.buttonWithAnchorAndIcon(
                  title: "Settings",
                  onTap: null,
                  icon: Icons.settings_outlined,
                ),
                14.verticalSpace,
                ButtonWidgets.buttonWithAnchorAndIcon(
                  title: "Invite a Friend",
                  onTap: null,
                  icon: Icons.person_add_outlined,
                ),
                14.verticalSpace,
                ButtonWidgets.buttonWithWidth(
                  title: "Logout",
                  onTap: () {},
                  screenWidth: 0.8,
                  color: Colors.black,
                  textColor: Colors.white,
                  textSize: 16,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
