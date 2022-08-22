import 'package:assesment/core_views/color/color_pallete.dart';
import 'package:assesment/features/dashboard/presentation/widgets/score_carousel.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Image.asset(
            "assets/images/login_bg.png",
            fit: BoxFit.fill,
            width: Get.width,
            height: Get.height,
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).viewPadding.top + 16,
                  left: 16,
                  right: 16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Selamat Datang!",
                          style: context.textTheme.headline5?.copyWith(
                            fontFamily: "Intro",
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Username",
                          style: context.textTheme.bodyText2?.copyWith(
                            fontFamily: "Intro",
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 38,
                        backgroundImage: NetworkImage(
                          "https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              CarouselSlider(
                options: CarouselOptions(
                  enableInfiniteScroll: false,
                  height: 150,
                  enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.scale,
                ),
                items: [
                  ScoreCarousel(
                    label: "Skor Kelengkapan Berkas",
                    score: 40.toString(),
                    borderColor: ColorPallete.blue_400,
                    trailing: SvgPicture.asset(
                      "assets/svg/ic_note_checklist_outline.svg",
                      width: 80,
                      color: ColorPallete.gray_300,
                    ),
                  ),
                  ScoreCarousel(
                    label: "Skor Substansi Berkas",
                    score: 30.toString(),
                    borderColor: ColorPallete.red_400,
                    trailing: SvgPicture.asset(
                      "assets/svg/ic_graph_bar_outline.svg",
                      width: 80,
                      color: ColorPallete.gray_300,
                    ),
                  ),
                  ScoreCarousel(
                    label: "Skor Test & Karya Tulis",
                    score: 20.toString(),
                    borderColor: ColorPallete.yellow_400,
                    trailing: SvgPicture.asset(
                      "assets/svg/ic_note_edit_outline.svg",
                      width: 80,
                      color: ColorPallete.gray_300,
                    ),
                  ),
                  ScoreCarousel(
                    label: "Skor Wawancara",
                    score: 10.toString(),
                    borderColor: ColorPallete.green_400,
                    trailing: SvgPicture.asset(
                      "assets/svg/ic_bubble_chat_outline.svg",
                      width: 80,
                      color: ColorPallete.gray_300,
                    ),
                  ),
                ],
              )
            ],
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.55,
            minChildSize: 0.55,
            snap: true,
            builder: (BuildContext context, ScrollController scrollController) {
              return Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(16),
                    topLeft: Radius.circular(16),
                  ),
                  color: Colors.white,
                ),
                child: SingleChildScrollView(
                  keyboardDismissBehavior:
                      ScrollViewKeyboardDismissBehavior.onDrag,
                  controller: scrollController,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                        width: 55,
                        height: 5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: ColorPallete.gray_300,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
