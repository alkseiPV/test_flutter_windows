import 'package:flutter/material.dart';
import 'package:flutter_application_desktop_windows/common/app_colors.dart';
import 'package:flutter_application_desktop_windows/menu_data.dart';

class LeftMenu extends StatefulWidget {
  const LeftMenu({Key? key}) : super(key: key);

  @override
  State<LeftMenu> createState() => _LeftMenuState();
}

class _LeftMenuState extends State<LeftMenu> {
  @override
  Widget build(BuildContext context) {
    SettingsUser settingsUser = SettingsUser();
    DiscordNitro settingsNitro = DiscordNitro();
    SettingsApp settingsApp = SettingsApp();
    return SingleChildScrollView(
      child: SizedBox(
        width: 350,
        child: Container(
          height: MediaQuery.of(context).size.height,
          color: AppColors.leftbackColor,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              Row(
                children: const [
                  SizedBox(
                    width: 125,
                  ),
                  Text(
                    "Настройки пользователя",
                    style: TextStyle(
                        color: AppColors.greyTextColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              const SizedBox(
                height: 18,
              ),
              buildData(
                  settingsUser.settingUser.length, settingsUser.settingUser),
              const SizedBox(
                height: 3,
              ),
              Divider(
                color: Colors.grey[800],
                height: 1,
              ),
              const SizedBox(
                height: 17,
              ),
              GestureDetector(
                child: Row(
                  children: const [
                    SizedBox(
                      width: 125,
                    ),
                    Text(
                      "Discord Nitro",
                      style: TextStyle(
                          color: Color.fromRGBO(128, 128, 180, 2),
                          fontSize: 17,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              buildData(settingsNitro.settingsDisNitro.length,
                  settingsNitro.settingsDisNitro),
              const SizedBox(
                height: 3,
              ),
              Divider(
                color: Colors.grey[800],
                height: 1,
              ),
              const SizedBox(
                height: 17,
              ),
              Row(
                children: const [
                  SizedBox(
                    width: 125,
                  ),
                  Text(
                    "Настройки приложения",
                    style: TextStyle(
                        color: AppColors.greyTextColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              const SizedBox(
                height: 18,
              ),
              buildData(settingsApp.settingsApp.length, settingsApp.settingsApp)
            ],
          ),
        ),
      ),
    );
  }

  ListView buildData(int quantity, List<dynamic> dataList) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {},
          child: Row(
            children: [
              const SizedBox(
                width: 125,
              ),
              SizedBox(
                  height: 33,
                  child: Text(
                    dataList[index],
                    style: const TextStyle(
                        color: AppColors.greyTextColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  )),
            ],
          ),
        );
      },
      itemCount: quantity,
    );
  }
}
