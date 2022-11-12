import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ogunmolawa_john/config/theme.dart';
import 'package:ogunmolawa_john/core/mixins/form_mixin.dart';
import 'package:ogunmolawa_john/core/providers/contact_provider.dart';
import 'package:ogunmolawa_john/core/utils/extensions/context.dart';
import 'package:ogunmolawa_john/core/utils/extensions/hover_extensions.dart';
import 'package:ogunmolawa_john/core/utils/validators.dart';
import 'package:ogunmolawa_john/core/widgets/call_to_action/call_to_action.dart';
import 'package:ogunmolawa_john/core/widgets/footer/footer.dart';
import 'package:ogunmolawa_john/core/widgets/navigation_bar/navbar_tablet_desktop.dart';
import 'package:ogunmolawa_john/core/widgets/textfield/textfield.dart';
import 'package:provider/provider.dart';

class DetailPreviewWidgetDesktop extends StatefulWidget {
  final String title, price, story, size, medium, image;

  const DetailPreviewWidgetDesktop(
      {super.key,
      required this.title,
      required this.price,
      required this.story,
      required this.size,
      required this.image,
      required this.medium});

  @override
  State<DetailPreviewWidgetDesktop> createState() =>
      _DetailPreviewWidgetDesktopState();
}

class _DetailPreviewWidgetDesktopState extends State<DetailPreviewWidgetDesktop>
    with FormMixin {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final subjectController = TextEditingController();
  final messageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: context.height,
          width: context.width,
          color: AppColors.primaryColor,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Gap(context.getHeight(.2)),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: context.getWidth(.15)),
                  child: Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return Container(
                                    constraints: BoxConstraints(
                                      maxHeight: context.getHeight(.8),
                                    ),
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(widget.image),
                                      ),
                                    ),
                                    child: Column(
                                      children: [
                                        const Gap(Insets.xl * 1.5),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.maybePop(context);
                                            },
                                            child: Container(
                                              height: 30,
                                              width: 30,
                                              decoration: const BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: AppColors.primaryBlue),
                                              child: const Icon(
                                                Icons.close,
                                                color: Colors.white,
                                              ),
                                              // color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                    spreadRadius: 1,
                                    blurRadius: 2,
                                    color: AppColors.primaryDark,
                                  )
                                ],
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    widget.image,
                                  ),
                                )),
                            child: Image.asset(
                              widget.image,
                              fit: BoxFit.cover,
                            ),
                          ).moveCardsUpOnHover,
                        ),
                      ),
                      const Gap(Insets.xl),
                      Expanded(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 22,
                                width: 10,
                                color: AppColors.primaryBlue,
                              ),
                              const Gap(Insets.md),
                              Text(
                                widget.title,
                                style: const TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.w700,
                                ),
                              )
                            ],
                          ),
                          const Gap(Insets.lg),
                          const Divider(),
                          const Gap(Insets.sm),
                          const Text(
                            'Story',
                            style: TextStyle(
                                color: AppColors.primaryBlue,
                                fontSize: 18,
                                fontWeight: FontWeight.w200),
                          ),
                          ConstrainedBox(
                            constraints:
                                BoxConstraints(maxWidth: context.getWidth(.3)),
                            child: Text(
                              widget.story,
                              style: const TextStyle(
                                  color: AppColors.primaryDark,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          const Gap(Insets.lg),
                          const Text(
                            'Medium',
                            style: TextStyle(
                                color: AppColors.primaryBlue,
                                fontSize: 18,
                                fontWeight: FontWeight.w200),
                          ),
                          ConstrainedBox(
                            constraints:
                                BoxConstraints(maxWidth: context.getWidth(.3)),
                            child: Text(
                              widget.medium,
                              style: const TextStyle(
                                  color: AppColors.primaryDark,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          const Gap(Insets.lg),
                          const Text(
                            'Size',
                            style: TextStyle(
                                color: AppColors.primaryBlue,
                                fontSize: 18,
                                fontWeight: FontWeight.w200),
                          ),
                          ConstrainedBox(
                            constraints:
                                BoxConstraints(maxWidth: context.getWidth(.3)),
                            child: Text(
                              widget.size,
                              style: const TextStyle(
                                  color: AppColors.primaryDark,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          const Divider(),
                          const Gap(Insets.lg),
                          Text(
                            '\$${widget.price}',
                            style: const TextStyle(
                                color: AppColors.primaryDark,
                                fontSize: 22,
                                fontWeight: FontWeight.w600),
                          ),
                          const Gap(Insets.lg),
                          CallToAction(
                            title: 'Place Order',
                            color: AppColors.primaryDark,
                            action: () => showDialog(
                              context: context,
                              builder: (context) => Container(
                                width: context.getWidth(.5),
                                constraints: BoxConstraints(
                                  maxHeight: context.getHeight(.8),
                                  maxWidth: context.getWidth(.5),
                                ),
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                ),
                                child: Consumer<ContactProvider>(
                                    builder: (context, contact, child) {
                                  return Column(
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
                                          if (formKey.currentState!
                                              .validate()) {
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
                                  );
                                }),
                              ),
                            ),
                          )
                        ],
                      )),
                    ],
                  ),
                ),
                const Gap(Insets.xl * 1.5),
                const Footer(),
              ],
            ),
          ),
        ),
        const Positioned(
          top: 0,
          child: NavBarTabletDesktop(),
        ),
      ],
    );
  }
}
