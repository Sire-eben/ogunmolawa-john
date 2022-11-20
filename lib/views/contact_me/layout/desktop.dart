import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ogunmolawa_john/config/theme.dart';
import 'package:ogunmolawa_john/core/mixins/form_mixin.dart';
import 'package:ogunmolawa_john/core/providers/contact_provider.dart';
import 'package:ogunmolawa_john/core/utils/extensions/context.dart';
import 'package:ogunmolawa_john/core/utils/validators.dart';
import 'package:ogunmolawa_john/core/widgets/call_to_action/call_to_action.dart';
import 'package:ogunmolawa_john/core/widgets/footer/footer.dart';
import 'package:ogunmolawa_john/core/widgets/navigation_bar/navbar.dart';
import 'package:ogunmolawa_john/core/widgets/textfield/textfield.dart';
import 'package:ogunmolawa_john/generated/assets.gen.dart';
import 'package:provider/provider.dart';

class ContactViewDesktop extends StatefulWidget {
  const ContactViewDesktop({super.key});

  @override
  State<ContactViewDesktop> createState() => _ContactViewDesktopState();
}

class _ContactViewDesktopState extends State<ContactViewDesktop>
    with FormMixin {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final subjectController = TextEditingController();
  final messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Consumer<ContactProvider>(builder: (context, contact, child) {
      return Stack(
        children: [
          Container(
            height: context.height,
            width: context.width,
            color: contact.isLoading ? Colors.white : AppColors.primaryColor,
          ),
          contact.isLoading
              ? Center(child: Image.asset(Assets.gif.preLoader.path))
              : Center(
                  child: SingleChildScrollView(
                    child: Form(
                      key: formKey,
                      child: Column(
                        children: [
                          Gap(context.getHeight(.15)),
                          Padding(
                            padding: const EdgeInsets.all(Insets.lg),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  color: AppColors.primaryBlue,
                                ),
                                const Gap(Insets.md),
                                const Text(
                                  "Let's Talk",
                                  style: TextStyle(
                                    fontSize: 23,
                                    fontWeight: FontWeight.w700,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: context.getWidth(.5),
                            padding: const EdgeInsets.all(Insets.xl * 2),
                            // height: context.getHeight(.7),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 40,
                                    spreadRadius: 4,
                                    color: Colors.grey.shade400)
                              ],
                            ),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TextInputField(
                                    labelText: "Your Name",
                                    controller: nameController,
                                    validator: (input) =>
                                        Validators.validateString()(input),
                                  ),
                                  const Gap(Insets.xl),
                                  TextInputField(
                                    labelText: 'Email',
                                    controller: emailController,
                                    validator: (input) =>
                                        Validators.validateEmail(input),
                                  ),
                                  const Gap(Insets.xl),
                                  TextInputField(
                                    labelText: 'Subject',
                                    controller: subjectController,
                                    validator: (input) =>
                                        Validators.validateString()(input),
                                  ),
                                  const Gap(Insets.xl),
                                  TextInputField(
                                    labelText: 'Message',
                                    maxLines: 5,
                                    controller: messageController,
                                    validator: (input) =>
                                        Validators.validateString()(input),
                                  ),
                                  const Gap(Insets.md),
                                  CallToAction(
                                    title: 'Send',
                                    action: () {
                                      if (formKey.currentState!.validate()) {
                                        contact.sendMessage(
                                          context,
                                          nameController.text.trim(),
                                          emailController.text.trim(),
                                          subjectController.text.trim(),
                                          messageController.text.trim(),
                                        );
                                      }
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Gap(Insets.xl * 1.5),
                          const Footer(),
                        ],
                      ),
                    ),
                  ),
                ),
          const Positioned(
            top: 0,
            child: NavBar(),
          ),
        ],
      );
    });
  }
}
