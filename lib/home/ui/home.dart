import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:campali/settings/ui/settings.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:campali/feed/ui/feed.dart';
import 'package:campali/utils/widgets/app_strings.dart';
import 'package:campali/utils/widgets/custom_app_bar.dart';
import 'package:campali/utils/widgets/style.dart';

final navProvider = StateProvider((ref) => 0);

class HomePage extends HookWidget {
  HomePage({Key? key}) : super(key: key);

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white);

  static List<Widget> _widgetOptions = <Widget>[
    FeedPage(),
    Text(
      'Index 1: Card Wallet',
      style: optionStyle,
    ),
    Text(
      'Index 2: Exchange',
      style: optionStyle,
    ),
    Text(
      'Index 3: Broadcast',
      style: optionStyle,
    ),
    Text(
      'Index 4: Messages',
      style: optionStyle,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, watch, _) {
      final selectedIndex = watch(navProvider).state;
      final PageController controller =
          PageController(initialPage: selectedIndex);
      return SafeArea(
        child: Scaffold(
          appBar: CustomAppBar(
            title: selectedIndex == 0
                ? this.homeLogo(context)
                : appHead(context, AppStrings.menuText[selectedIndex]),
            actions: [
              GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Icon(FeatherIcons.search,
                      size: FontValues.fz3,
                      color: Theme.of(context).accentColor),
                ),
              ),
              GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Icon(FeatherIcons.bell,
                      size: FontValues.fz3,
                      color: Theme.of(context).accentColor),
                ),
              ),
              GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    child: Image.asset(
                      "assets/images/users/azamat-zhanisov.jpg",
                      fit: BoxFit.cover,
                      width: 40,
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SettingPage()),
                  );
                },
              ),
            ],
          ),
          body: Center(
              child: PageView(
            scrollDirection: Axis.horizontal,
            controller: controller,
            onPageChanged: (page) {
              context.read(navProvider).state = page;
            },
            children: _widgetOptions,
          )),
          bottomNavigationBar: BottomNavyBar(
            curve: Curves.elasticOut,
            animationDuration: const Duration(milliseconds: 2000),
            selectedIndex: selectedIndex,
            onItemSelected: (index) {
              controller.jumpToPage(
                index,
              );
              context.read(navProvider).state = index;
            },
            iconSize: 14,
            containerHeight: 50,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            backgroundColor: Theme.of(context).primaryColor,
            items: <BottomNavyBarItem>[
              BottomNavyBarItem(
                  title: Text('Home'),
                  icon: Icon(FeatherIcons.home),
                  textAlign: TextAlign.center,
                  inactiveColor: Theme.of(context).accentColor,
                  activeColor: ColorSets.colorBrand1),
              BottomNavyBarItem(
                  title: Text('Card Wallet'),
                  icon: Icon(FeatherIcons.layers),
                  textAlign: TextAlign.center,
                  inactiveColor: Theme.of(context).accentColor,
                  activeColor: ColorSets.colorBrand1),
              BottomNavyBarItem(
                  title: Text('Exchange'),
                  icon: Icon(FeatherIcons.refreshCcw),
                  textAlign: TextAlign.center,
                  inactiveColor: Theme.of(context).accentColor,
                  activeColor: ColorSets.colorBrand1),
              BottomNavyBarItem(
                  title: Text(
                    'Broadcast',
                  ),
                  icon: Icon(FeatherIcons.radio),
                  textAlign: TextAlign.center,
                  inactiveColor: Theme.of(context).accentColor,
                  activeColor: ColorSets.colorBrand1),
              BottomNavyBarItem(
                  title: Text('Messages'),
                  icon: Icon(FeatherIcons.messageCircle),
                  textAlign: TextAlign.center,
                  inactiveColor: Theme.of(context).accentColor,
                  activeColor: ColorSets.colorBrand1),
            ],
          ),
        ),
      );
    });
  }

  Widget homeLogo(context) {
    return Row(
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/logo_solo.png'),
                  fit: BoxFit.contain)),
        ),
        Container(
          child: Text(AppStrings.appTitle,
              style: Theme.of(context).textTheme.headline4),
          margin: EdgeInsets.only(left: 10.0, bottom: 6.0),
        ),
      ],
    );
  }
}
