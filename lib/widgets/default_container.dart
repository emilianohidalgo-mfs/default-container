import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DefaultContainer extends StatelessWidget {
  const DefaultContainer({Key? key, required this.content}) : super(key: key);

  final Widget content;
  final String ellipsesPath = 'assets/banner-background-ellipses.svg';
  final String tigoLogoPath = 'assets/tigo-logo.svg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.settings,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DefaultContainer(
                          content: content,
                        )),
              );
            },
          )
        ],
      ),
      body: Stack(
        children: <Widget>[
          SizedBox(
            height: 300,
            width: double.infinity,
            child: Stack(children: [
              Positioned.fill(
                child: Container(
                  color: Theme.of(context).primaryColor,
                  child: SvgPicture.asset(
                    ellipsesPath,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 50,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25),
                    ),
                  ),
                  child: Row(),
                ),
              ),
            ]),
          ),
          content
        ],
      ),
    );
  }
}
