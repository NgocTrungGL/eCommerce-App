import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/lists.dart';
import 'package:emart_app/views/profile_screen/components/details_card.dart';
import 'package:emart_app/widgets_common/bg_widget.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: const Icon(
                  Icons.edit,
                  color: whiteColor,
                ),
              ).onTap(() {}),

              Row(
                children: [
                  Image.asset(
                    imgProfile2,
                    width: 100,
                    fit: BoxFit.cover,
                  ).box.roundedFull.clip(Clip.antiAlias).make(),
                  10.heightBox,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        "Mang Ham Rau Cai"
                            .text
                            .fontFamily(semibold)
                            .white
                            .make(),
                        "customer@gmail.com".text.white.make(),
                      ],
                    ),
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(
                        color: whiteColor,
                      ),
                    ),
                    onPressed: () {},
                    child: logout.text.fontFamily(semibold).white.make(),
                  )
                ],
              ),

              20.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  detailsCard(
                      count: "00",
                      title: "in your cart",
                      width: context.screenWidth / 3.4),
                  detailsCard(
                      count: "32",
                      title: "in your wishlist",
                      width: context.screenWidth / 3.4),
                  detailsCard(
                      count: "67",
                      title: "in your orders",
                      width: context.screenWidth / 3.4),
                ],
              ),
              // buttons section

              ListView.separated(
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: Image.asset(
                      profileButtonsIcon[index],
                      width: 22,
                    ),
                    title: profileButtonsList[index]
                        .text
                        .fontFamily(semibold)
                        .color(darkFontGrey)
                        .make(),
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider(
                    color: lightGrey,
                  );
                },
                itemCount: profileButtonsList.length,
              )
                  .box
                  .white
                  .rounded
                  .margin(const EdgeInsets.all(12))
                  .padding(const EdgeInsets.symmetric(horizontal: 16))
                  .shadowSm
                  .make()
                  .box
                  .color(redColor)
                  .make(),
            ],
          ),
        ),
      ),
    );
  }
}
