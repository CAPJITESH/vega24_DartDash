import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavItem extends StatelessWidget {
  final String? iconData;
  final VoidCallback? onTap;
  final bool? isSelected;
  final String name;
  const BottomNavItem(
      {super.key,
      @required this.iconData,
      this.onTap,
      this.isSelected = false,
      required this.name});

  String getIconPath() {
    if (isSelected!) {
      return iconData!.replaceAll('.svg', '_sel.svg');
    } else {
      return iconData!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: IconButton(
        padding: EdgeInsets.zero,
        splashColor: Colors.white,
        color: Colors.white,
        icon: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              getIconPath(),
              colorFilter: ColorFilter.mode(
                isSelected! ? Colors.blue : Colors.black,
                BlendMode.dstIn,
              ),
              width: 25,
              height: 25,
            ),
            Text(
              name,
              style: TextStyle(
                color: isSelected! ? Colors.blue : Colors.black,
                fontSize: 10,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
        onPressed: onTap!,
      ),
    );
  }
}
