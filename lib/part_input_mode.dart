import 'package:flutter/material.dart';
import 'package:flutter_application_desktop_windows/common/app_colors.dart';

class PartInputMode extends StatefulWidget {
  const PartInputMode({Key? key}) : super(key: key);

  @override
  State<PartInputMode> createState() => _PartInputModeState();
}

class _PartInputModeState extends State<PartInputMode> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "РЕЖИМ ВВОДА",
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: AppColors.greyTextColor),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
              color: AppColors.activeColor,
              border: Border.all(width: 1),
              borderRadius: const BorderRadius.all(Radius.circular(4))),
          width: 700,
          child: const ListTile(
            title: Text(
              "Активация по голосу",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w600),
            ),
            leading: Icon(
              Icons.check_box,
              color: Colors.white,
              size: 30,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
              color: AppColors.leftbackColor,
              border: Border.all(width: 1),
              borderRadius: const BorderRadius.all(Radius.circular(4))),
          width: 700,
          child: const ListTile(
            title: Text(
              "Режим рации",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w600),
            ),
            leading: Icon(
              Icons.check_box_outline_blank,
              color: AppColors.greyTextColor,
              size: 28,
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const Text(
          "ЧУВСТВИТЕЛЬНОСТЬ ВВОДА",
          style: TextStyle(
              color: AppColors.greyTextColor,
              fontSize: 15,
              fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            SizedBox(
              width: 700,
              child: ListTile(
                title: const Text(
                  "Автоматически определять чувствительность микрофона.",
                  style: TextStyle(
                      color: AppColors.whiteTextColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
                trailing: Switch(
                  value: true,
                  onChanged: (context) => () {},
                  activeColor: AppColors.whiteTextColor,
                  activeTrackColor: AppColors.activeColor,
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
