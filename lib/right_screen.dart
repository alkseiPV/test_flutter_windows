import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_desktop_windows/common/app_colors.dart';
import 'package:flutter_application_desktop_windows/part_input_mode.dart';

class Mainscreen extends StatefulWidget {
  const Mainscreen({Key? key}) : super(key: key);

  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width - 350,
        color: AppColors.mainbackColor,
        child: Row(
          children: [
            const SizedBox(
              width: 40,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 25,
                ),
                Row(
                  children: const [
                    Text(
                      "Настройки голоса",
                      style: TextStyle(
                          color: AppColors.whiteTextColor, fontSize: 25),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Устройство ввода",
                          style: TextStyle(
                              color: AppColors.greyTextColor,
                              fontSize: 17,
                              fontWeight: FontWeight.w600),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: AppColors.leftbackColor,
                              border: Border.all(width: 1),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(4))),
                          width: 350,
                          child: const ListTile(
                            title: Text(
                              "External Mic (Realtek(R) Audio)  ",
                              style: TextStyle(
                                  color: AppColors.whiteTextColor,
                                  fontSize: 17),
                            ),
                            trailing: Icon(
                              Icons.keyboard_arrow_down,
                              color: AppColors.greyTextColor,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          "Громкость микрофона",
                          style: TextStyle(
                              color: AppColors.greyTextColor,
                              fontSize: 17,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          width: 355,
                          child: CupertinoSlider(
                              value: 100,
                              min: 0,
                              max: 100,
                              onChanged: (value) => {}),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Устройство вывода",
                          style: TextStyle(
                              color: AppColors.greyTextColor,
                              fontSize: 17,
                              fontWeight: FontWeight.w600),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: AppColors.leftbackColor,
                              border: Border.all(width: 1),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(4))),
                          width: 350,
                          child: const ListTile(
                            title: Text(
                              "Realtek HD Audio 2nd output(Realtek(R)",
                              style: TextStyle(
                                  color: AppColors.whiteTextColor,
                                  fontSize: 15),
                            ),
                            trailing: Icon(
                              Icons.keyboard_arrow_down,
                              color: AppColors.greyTextColor,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          "Громкость звука",
                          style: TextStyle(
                              color: AppColors.greyTextColor,
                              fontSize: 17,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          width: 355,
                          child: CupertinoSlider(
                              value: 50,
                              min: 0,
                              max: 100,
                              onChanged: (value) => {}),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "ПРОВЕРКА МИКРОФОНА",
                  style: TextStyle(
                      color: AppColors.greyTextColor,
                      fontSize: 17,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  width: 700,
                  child: Text(
                    "Проблемы с микрофоном? Начните проверку и скажите какую-нибудь ерунду - мы тут же ее воспроизведем",
                    style: TextStyle(
                        color: AppColors.greyTextColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          "Давайте пр...",
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: AppColors.activeColor,
                            textStyle: const TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w600))),
                    const SizedBox(
                      width: 15,
                    ),
                    SizedBox(
                      height: 20,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Container(
                            height: 10,
                            width: 6,
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                              color: AppColors.greyTextColor,
                            ),
                          );
                        },
                        itemCount: 50,
                        separatorBuilder: (BuildContext context, int index) =>
                            const SizedBox(
                          width: 5,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: const [
                    Text(
                      "Need help with voice or video? Check out our ",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: AppColors.greyTextColor),
                    ),
                    Text(
                      " troubleshooting guide",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: AppColors.blueTextColor),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: 600,
                  child: Divider(
                    color: Colors.grey[800],
                    height: 1,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const PartInputMode(),
              ],
            ),
            const SizedBox(
              width: 50,
            ),
            Column(
              children: [
                const SizedBox(
                  height: 35,
                ),
                Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 1, color: AppColors.greyTextColor),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(360))),
                    child: const Center(
                      child: Icon(
                        Icons.clear,
                        color: AppColors.greyTextColor,
                        size: 18,
                      ),
                    )),
                const SizedBox(
                  height: 7,
                ),
                const Text(
                  "ESC",
                  style: TextStyle(
                      color: AppColors.greyTextColor,
                      fontWeight: FontWeight.w600),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
