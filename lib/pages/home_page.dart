import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  late double _deviceHeight, _deviceWidth;

   HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: _deviceHeight,
          width: _deviceWidth,
          padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.05),
          child: _destinationDropDownWidget(),
        ),
      ),
    );
  }

  Widget _pageTitle() {
    return const Text(
      "Space_Exploration",
      style: TextStyle(
        color: Colors.white, 
        fontSize: 40,
        fontWeight: FontWeight.w600,
        ),
    );
  }

  Widget _astroImageWidget() {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/astronaut.png"),
        )
        ),
      ),
    );
  }

  Widget _destinationDropDownWidget() {
    List <DropdownMenuItem<String>> _items = [
      'Travis Station',
      'Joe Station',
    ].map((e) {return DropdownMenuItem(
      value: e, 
      child: Text(e),
      );
      },
      ).toList();
    return Container(
      child: DropdownButton(
      onChanged: (_) {},
      items: _items,
    ),
    );
  }
}
