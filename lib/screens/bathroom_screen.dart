import 'package:flutter/material.dart';
import 'package:smart_home/components/control_panel/bath_room_control_panel.dart';
import 'package:smart_home/components/cover_image.dart';
import 'package:smart_home/components/welcome_bar.dart';
import 'package:provider/provider.dart';
import 'package:smart_home/states/bathroom.dart';

class BathroomScreen extends StatelessWidget {
  const BathroomScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      child: Stack(
        children: [
          CoverImage(
            imgUrl: context.read<BathRoomState>().imgUrl,
          ),
          WelcomBar(),
          Positioned(
            child: BathRoomControl(),
            bottom: 0,
          )
        ],
      ),
    );
  }
}
