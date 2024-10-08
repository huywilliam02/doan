import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:galaxy_web3/app/constants/app_color.dart';
import 'package:galaxy_web3/app/constants/app_style.dart';
import 'package:galaxy_web3/app/core/widgets/button/custom_button.dart';
import 'package:galaxy_web3/app/core/widgets/card/information_card.dart';
import 'package:galaxy_web3/app/core/widgets/card/model/information.dart';
import 'package:galaxy_web3/app/core/widgets/text/gradient_text.dart';
import 'package:galaxy_web3/app/core/utils/spaces.dart';
import 'package:galaxy_web3/gen/assets.gen.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class LoadingPageSrceen extends StatefulWidget {
  const LoadingPageSrceen({super.key});

  @override
  State<LoadingPageSrceen> createState() => _LoadingPageSrceenState();
}

class _LoadingPageSrceenState extends State<LoadingPageSrceen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(Assets.images.iconMenu),
            ),
            SvgPicture.asset(
              Assets.images.logo,
            ),
            CustomButton(
              btnTxt: 'Connect Wallet',
              width: 128,
              textStyle: const TextStyle(
                color: AppColor.c_310D0,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
              height: 40,
              onTap: () {},
            ),
          ],
        ),
        backgroundColor: AppColor.appBarColor,
      ),
      body: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                spaceH18,
                Center(
                  child: GradientText(
                    text: "The World’s Best ",
                    style: AppStyle.textHeader,
                    gradient: AppColor.gradientc_310D0c_310D0,
                  ),
                ),
                spaceH4,
                Center(
                  child: GradientText(
                    text: "Arbitrage Platform",
                    style: AppStyle.textHeader,
                    gradient: AppColor.gradientc_310D0c_310D0,
                  ),
                ),
                spaceH8,
                const Text(
                  "Automated Operation By Smart Contract",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                spaceH8,
                CustomButton(
                  btnTxt: 'Join Now',
                  width: 128,
                  icon: Assets.icons.arrowRightFill.path,
                  gradient: AppColor.gradientc_310D0c_310D0,
                  onTap: () {},
                ),
                spaceH10,
                SizedBox(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    Assets.images.headerbanner.path,
                    fit: BoxFit.cover,
                  ),
                ),
                spaceH20,
                Container(
                  height: 430,
                  width: 390,
                  child: GridView.builder(
                    itemCount: profileUtils.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            mainAxisExtent: 171,
                            childAspectRatio: 1 / 1.5),
                    itemBuilder: (context, index) {
                      return Container(
                        height: 171,
                        width: 142,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColor.backgroundColor,
                          border: GradientBoxBorder(
                            gradient: LinearGradient(colors: [
                              AppColor.c_310D0.withOpacity(0.3),
                              AppColor.c_DC349E.withOpacity(0.3),
                            ]),
                            width: 2,
                          ),
                        ),
                        child: Column(
                          children: [
                            Text(profileUtils[index].title,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                )),
                            spaceH4,
                            Text(profileUtils[index].description,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ))
                          ],
                        ),
                      );
                    },
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
