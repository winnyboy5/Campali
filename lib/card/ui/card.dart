import 'package:campali/settings/ui/settings.dart';
import 'package:campali/utils/widgets/style.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CardPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Hero(
              tag: 'CardSwitch',
              flightShuttleBuilder: flightShuttleBuilder,
              child: SingleChildScrollView(
                  child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 3.9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Theme.of(context).primaryColor,
                    ),
                    child: Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                    child: Container(
                                      color: Colors.transparent,
                                      child: Image.asset(
                                        'assets/images/users/azamat-zhanisov.jpg',
                                        width: 100.0,
                                        height: 100.0,
                                        fit: BoxFit.cover,
                                      ),
                                    )),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Container(
                                  child: Flexible(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          'Jenny Doe',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline4,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        Text(
                                          'Sr. Full-Stack Engineer',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline5,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        SizedBox(height: 10),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                    child: Container(
                                      color: Colors.transparent,
                                      child: Image.asset(
                                        'assets/images/brands/twitter.png',
                                        width: 100.0,
                                        height: 100.0,
                                        fit: BoxFit.cover,
                                      ),
                                    )),
                                ElevatedButton(
                                    child: Row(
                                      children: [
                                        Icon(FeatherIcons.plusCircle,
                                            size: FontValues.fz4,
                                            color:
                                                Theme.of(context).accentColor),
                                        Text(" Pick".toUpperCase(),
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline6!
                                                .copyWith(
                                                    fontWeight:
                                                        FontWeight.w800),
                                            overflow: TextOverflow.ellipsis),
                                      ],
                                    ),
                                    style: ButtonStyle(
                                        shadowColor:
                                            MaterialStateProperty.all<Color>(
                                                Theme.of(context)
                                                    .accentColor
                                                    .withOpacity(0.5)),
                                        foregroundColor:
                                            MaterialStateProperty.all<Color>(
                                                Theme.of(context).accentColor),
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                Theme.of(context).primaryColor),
                                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                                side: BorderSide(color: Theme.of(context).primaryColor)))),
                                    onPressed: () => null),
                              ],
                            ),
                          ]),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text('Holders',
                              style: Theme.of(context).textTheme.headline5),
                          Text('344K',
                              style: Theme.of(context).textTheme.headline3)
                        ],
                      ),
                      Column(
                        children: [
                          Text('Picks',
                              style: Theme.of(context).textTheme.headline5),
                          Text('50K',
                              style: Theme.of(context).textTheme.headline3)
                        ],
                      )
                    ],
                  )
                ],
              ))),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: FloatingActionButton(
          child: Icon(
            FeatherIcons.chevronLeft,
            color: Theme.of(context).accentColor,
            size: FontValues.fz2,
          ),
          backgroundColor: Theme.of(context).primaryColor,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SettingPage()),
            );
          },
        ),
      ),
    );
  }
}
