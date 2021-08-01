import 'package:campali/card/ui/card.dart';
import 'package:campali/home/ui/home.dart';
import 'package:campali/utils/providers/theme_provider.dart';
import 'package:campali/utils/widgets/style.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SettingPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final themeType = watch(ThemeProvider).state;
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
            Widget>[
          Expanded(
            child: ListView(
              children: <Widget>[
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(" Hey! Jenny Doe",
                          style: Theme.of(context).textTheme.headline4),
                      GestureDetector(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            child: Icon(FeatherIcons.x,
                                size: FontValues.fz2,
                                color: Theme.of(context).accentColor),
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                        },
                      ),
                    ]),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    height: 210,
                    child: Row(
                      children: [
                        Hero(
                          tag: 'CardSwitch',
                          flightShuttleBuilder: flightShuttleBuilder,
                          child: GestureDetector(
                            child: AnimatedContainer(
                              duration: Duration(milliseconds: 300),
                              width: 280,
                              height: 140,
                              margin: EdgeInsets.all(10),
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Theme.of(context).primaryColor,
                                boxShadow: [
                                  BoxShadow(
                                    color: Theme.of(context)
                                        .accentColor
                                        .withOpacity(0.15),
                                    offset: Offset(0.0, 1.0), //(x,y)
                                    blurRadius: 6.0,
                                  ),
                                ],
                              ),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        ClipRRect(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10.0)),
                                            child: Container(
                                              color: Colors.transparent,
                                              child: Image.asset(
                                                'assets/images/users/azamat-zhanisov.jpg',
                                                width: 48.0,
                                                height: 48.0,
                                                fit: BoxFit.cover,
                                              ),
                                            )),
                                        SizedBox(
                                          height: 10.0,
                                        ),
                                        Container(
                                          child: Flexible(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Text(
                                                  'Jenny Doe',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .headline5,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                                SizedBox(
                                                  height: 3,
                                                ),
                                                Text(
                                                  'Sr. Full-Stack Engineer',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .headline6,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        ClipRRect(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10.0)),
                                            child: Container(
                                              color: Colors.transparent,
                                              child: Image.asset(
                                                'assets/images/brands/twitter.png',
                                                width: 64.0,
                                                height: 64.0,
                                                fit: BoxFit.cover,
                                              ),
                                            )),
                                        SizedBox(width: 10),
                                        ElevatedButton(
                                            child: Row(
                                              children: [
                                                Icon(FeatherIcons.plusCircle,
                                                    size: FontValues.fz4,
                                                    color: Theme.of(context)
                                                        .accentColor),
                                                Text(" Pick".toUpperCase(),
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .headline6!
                                                        .copyWith(
                                                            fontWeight:
                                                                FontWeight
                                                                    .w800),
                                                    overflow:
                                                        TextOverflow.ellipsis),
                                              ],
                                            ),
                                            style: ButtonStyle(
                                                shadowColor: MaterialStateProperty.all<Color>(
                                                    Theme.of(context)
                                                        .accentColor
                                                        .withOpacity(0.5)),
                                                foregroundColor:
                                                    MaterialStateProperty.all<Color>(
                                                        Theme.of(context)
                                                            .accentColor),
                                                backgroundColor:
                                                    MaterialStateProperty.all<Color>(
                                                        Theme.of(context)
                                                            .primaryColor),
                                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                    RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0)), side: BorderSide(color: Theme.of(context).primaryColor)))),
                                            onPressed: () => null),
                                      ],
                                    ),
                                  ]),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CardPage()),
                              );
                            },
                          ),
                        ),
                        AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          width: 280,
                          height: 140,
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Theme.of(context).primaryColor,
                            boxShadow: [
                              BoxShadow(
                                color: Theme.of(context)
                                    .accentColor
                                    .withOpacity(0.15),
                                offset: Offset(0.0, 1.0), //(x,y)
                                blurRadius: 6.0,
                              ),
                            ],
                          ),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        ClipRRect(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10.0)),
                                            child: Container(
                                              color: Colors.transparent,
                                              child: Image.asset(
                                                'assets/images/users/azamat-zhanisov.jpg',
                                                width: 48.0,
                                                height: 48.0,
                                                fit: BoxFit.cover,
                                              ),
                                            )),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Flexible(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            'Jenny Doe',
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline5,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          SizedBox(
                                            height: 3,
                                          ),
                                          Text(
                                            'Sr. Full-Stack Engineer',
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline6,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    ClipRRect(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.0)),
                                        child: Container(
                                          color: Colors.transparent,
                                          child: Image.asset(
                                            'assets/images/brands/cola.jpg',
                                            width: 64.0,
                                            height: 64.0,
                                            fit: BoxFit.cover,
                                          ),
                                        )),
                                    SizedBox(width: 10),
                                    ElevatedButton(
                                        child: Row(
                                          children: [
                                            Icon(FeatherIcons.plusCircle,
                                                size: FontValues.fz4,
                                                color: Theme.of(context)
                                                    .accentColor),
                                            Text(" Pick".toUpperCase(),
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headline6!
                                                    .copyWith(
                                                        fontWeight:
                                                            FontWeight.w800),
                                                overflow:
                                                    TextOverflow.ellipsis),
                                          ],
                                        ),
                                        style: ButtonStyle(
                                            shadowColor: MaterialStateProperty.all<Color>(
                                                Theme.of(context)
                                                    .accentColor
                                                    .withOpacity(0.5)),
                                            foregroundColor: MaterialStateProperty.all<Color>(
                                                Theme.of(context).accentColor),
                                            backgroundColor: MaterialStateProperty.all<Color>(
                                                Theme.of(context).primaryColor),
                                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.all(Radius.circular(10.0)),
                                                    side: BorderSide(color: Theme.of(context).primaryColor)))),
                                        onPressed: () => null),
                                  ],
                                ),
                              ]),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  child: TextFormField(
                    style: Theme.of(context).textTheme.headline5,
                    decoration: InputDecoration(
                      hintText: "Search",
                      hintStyle: Theme.of(context).textTheme.headline5,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                        Radius.circular(8.0),
                      )),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8.0),
                          ),
                          borderSide: BorderSide.none),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8.0),
                          ),
                          borderSide: BorderSide.none),
                      filled: true,
                      fillColor: Theme.of(context).primaryColor,
                      prefixIcon: Icon(FeatherIcons.search,
                          size: FontValues.fz4,
                          color: Theme.of(context).accentColor),
                      isDense: true,
                      contentPadding: EdgeInsets.all(0),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    textCapitalization: TextCapitalization.sentences,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Icon(FeatherIcons.eye,
                            size: FontValues.fz4,
                            color: Theme.of(context).accentColor),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(left: 16),
                          child: Text("Dark Theme",
                              style: Theme.of(context).textTheme.headline5),
                        ),
                      ),
                      Switch(
                        onChanged: (bool value) {
                          context.read(ThemeProvider).state = !themeType;
                        },
                        value: context.read(ThemeProvider).state,
                        activeTrackColor: ColorSets.colorBrand1,
                        inactiveTrackColor: ColorSets.colorBrand1,
                        activeColor: Theme.of(context).indicatorColor,
                      )
                    ],
                  ),
                ),
                Divider(
                  thickness: 0.3,
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Icon(FeatherIcons.edit,
                            size: FontValues.fz4,
                            color: Theme.of(context).accentColor),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(left: 16),
                          child: Text("Account Details",
                              style: Theme.of(context).textTheme.headline5),
                        ),
                      ),
                      Container(
                        child: Icon(FeatherIcons.chevronRight,
                            size: FontValues.fz4,
                            color: Theme.of(context).accentColor),
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 0.3,
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Icon(FeatherIcons.lock,
                            size: FontValues.fz4,
                            color: Theme.of(context).accentColor),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(left: 16),
                          child: Text("Privacy \& Security",
                              style: Theme.of(context).textTheme.headline5),
                        ),
                      ),
                      Container(
                        child: Icon(FeatherIcons.chevronRight,
                            size: FontValues.fz4,
                            color: Theme.of(context).accentColor),
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 0.3,
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Icon(FeatherIcons.headphones,
                            size: FontValues.fz4,
                            color: Theme.of(context).accentColor),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(left: 16),
                          child: Text("Help \& Support",
                              style: Theme.of(context).textTheme.headline5),
                        ),
                      ),
                      Container(
                        child: Icon(FeatherIcons.chevronRight,
                            size: FontValues.fz4,
                            color: Theme.of(context).accentColor),
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 0.3,
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Icon(FeatherIcons.info,
                            size: FontValues.fz4,
                            color: Theme.of(context).accentColor),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(left: 16),
                          child: Text("About",
                              style: Theme.of(context).textTheme.headline5),
                        ),
                      ),
                      Container(
                        child: Icon(FeatherIcons.chevronRight,
                            size: FontValues.fz4,
                            color: Theme.of(context).accentColor),
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 0.3,
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
