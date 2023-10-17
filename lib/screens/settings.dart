import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:remember/data/data.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cài đặt'),
        elevation: 5,
        backgroundColor: Colors.grey[900],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ListTile(
              leading: CircleAvatar(
                radius: 24,
                backgroundImage: NetworkImage(
                    'https://res.cloudinary.com/drpatrit3/image/upload/v1685428262/i41_aykc1o.jpg'),
              ),
              title: Text('Nhân viên'),
              subtitle: Text('Chấm công'),
              trailing: Icon(FluentIcons.chevron_circle_down_12_regular),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(settingOptions[index]),
                  trailing:
                      const Icon(FluentIcons.chevron_circle_down_12_regular),
                );
              },
              itemCount: settingOptions.length,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white24,
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 40),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5))),
                onPressed: () {},
                child: const Text(
                  'Đăng xuất',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                )),
            const SizedBox(
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}
