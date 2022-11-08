import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ogunmolawa_john/config/theme.dart';
import 'package:ogunmolawa_john/constants/strings.dart';
import 'package:ogunmolawa_john/core/utils/extensions/context.dart';
import 'package:ogunmolawa_john/core/widgets/footer/footer.dart';
import 'package:ogunmolawa_john/core/widgets/navigation_bar/navbar_tablet_desktop.dart';
import 'package:ogunmolawa_john/generated/assets.gen.dart';

class AboutMeViewDesktop extends StatefulWidget {
  const AboutMeViewDesktop({super.key});

  @override
  State<AboutMeViewDesktop> createState() => _AboutMeViewDesktopState();
}

class _AboutMeViewDesktopState extends State<AboutMeViewDesktop> {
  List<String> bgImage = [
    Assets.gallery.one.path,
    Assets.gallery.two.path,
    Assets.gallery.three.path,
    Assets.gallery.four.path,
    Assets.gallery.five.path,
    Assets.work.collectionOne.path,
    Assets.work.collectionTwo.path,
    Assets.work.collectionThree.path,
    Assets.work.collectionFour.path,
    Assets.work.collectionFive.path,
    Assets.work.collectionSix.path,
    Assets.work.collectionSeven.path,
  ];

  List<String> imageTitle = [
    "HAUNTED",
    "LIBERATION",
    "BLACK PEARL #1, 2021",
    "BLACK PEARL #2, 2022",
    "SOLITUDE",
    "ALICE",
    "DAVID",
    "MANDELA",
    "C. ODUMEGU OJUKWU",
    "",
    "",
    "FELA",
  ];

  List<String> year = [
    "2021",
    "2021",
    "2021",
    "2022",
    "2020",
    "2022",
    "2022",
    "2021",
    "2021",
    "",
    "Yasuke",
    "2020",
  ];

  int _currentPage = 0;
  late Timer _timer;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      if (_currentPage < 4) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(seconds: 2),
        curve: Curves.decelerate,
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: context.height,
          width: context.width,
          decoration: BoxDecoration(
              color: AppColors.primaryColor,
              image: DecorationImage(
                image: AssetImage(Assets.images.one.path),
                fit: BoxFit.cover,
                opacity: .4,
              )),
        ),
        SingleChildScrollView(
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
                      "About Me",
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
                  width: context.getWidth(.85),
                  // padding: const EdgeInsets.all(Insets.xl * 2),
                  height: context.getHeight(.7),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    // color: Colors.white.withOpacity(.4),
                    boxShadow: [
                      // BoxShadow(
                      //     blurRadius: 40,
                      //     spreadRadius: 1,
                      //     color: Colors.grey.shade400)
                    ],
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Container(
                          decoration: BoxDecoration(
                              color: AppColors.primaryBlue,
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                  image: AssetImage(Assets.images.one.path),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      const Gap(Insets.lg),
                      Expanded(
                        flex: 5,
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            children: [
                              const Gap(Insets.xl * 1.5),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 10,
                                    height: 35,
                                    color: AppColors.primaryBlue,
                                  ),
                                  const Gap(Insets.lg),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "OGUNMOLA JOHN OLUBUKOLA",
                                        style: TextStyle(
                                            color: AppColors.primaryBlue,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      // Gap(Insets.sm / 2),
                                      Text(
                                        "Profile",
                                        style: TextStyle(
                                            color: AppColors.primaryDark,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: Insets.xl, horizontal: Insets.xl),
                                child: Text(
                                  "Ogunmolawa John Olubukola (born 1996) a Nigerian artist, activist and a Civil Engineer. My style of art is known as hyper realism which is inspired by telling my subjects stories and their journey which involves spending countless hours working on an artwork to stimulate deep and strong emotions in order to connect more intimately with my viewers."
                                  "I began drawing at the age of six and work primarily with charcoal and graphite on paper, I use my works to speaks on the happenings in my society, Systemic Oppression, the struggles of the common youths and triumphs of surviving through the challenges faced, I perceives my art as a response to society and a way to inspire one or two people to re-evaluate their socio-political structures. In my work “Haunted”, it depicts how the resilient Nigerian youth with ‘spark’ in their eyes and willpower are oppressed and restrained by the ’harms’ of the government using armed forces as tools resulting in Police Brutality and several bias policies to suppress them. In my work Liberation shows his subject breaking free from the shackles of oppression. ",
                                  style: TextStyle(
                                      color: AppColors.primaryDark,
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )),
              const Gap(Insets.xl * 2),
              Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      // alignment: Alignment.center,
                      height: 250,
                      width: context.getWidth(.85),
                      padding:
                          const EdgeInsets.symmetric(horizontal: Insets.xl * 3),
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            famousQuote,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const Gap(Insets.lg),
                          Text(
                            quoteAuthor,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Positioned(
                      top: 0,
                      child: Image.asset(
                        Assets.icons.quote.path,
                        height: 50,
                      ),
                    ),
                  )
                ],
              ),
              const Gap(Insets.xl * 2),
              SizedBox(
                height: 450,
                width: context.width,
                child: ListView.builder(
                  controller: _pageController,
                  itemCount: bgImage.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, imageIndex) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 400,
                          width: 400,
                          margin: const EdgeInsets.only(right: Insets.xl),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(bgImage[imageIndex]),
                            ),
                          ),
                        ),
                        const Gap(Insets.sm),
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                            text: "${imageTitle[imageIndex]}\n",
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          TextSpan(
                            text: "Year: ${year[imageIndex]}",
                            style: const TextStyle(
                              fontSize: 12,
                              // color: Colors.white,
                              backgroundColor: AppColors.primaryBlue,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ])),
                      ],
                    );
                  },
                ),
              ),
              const Gap(Insets.xl * 2),
              const Footer(),
            ],
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
