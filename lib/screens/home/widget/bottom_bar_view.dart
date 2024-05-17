
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsup_clone/utils/color_res.dart';
import 'package:whatsup_clone/utils/font_res.dart';

import '../../../utils/string_res.dart';

class BottomBarView extends StatefulWidget {

  final int index;
  final Function(int value) onPressed;
  const BottomBarView({
    super.key,
    required this.onPressed,
    this.index = 0
  });
  @override
  State<BottomBarView> createState() => _BottomBarViewState();
}

class _BottomBarViewState extends State<BottomBarView> {

 //  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
          minHeight: 45
      ),
      padding: const EdgeInsets.only(
          top: 15,
          bottom: 15
      ),
      decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          boxShadow: [
            BoxShadow(
              color: ColorRes.mediumGray.withOpacity(.1),
              offset: const Offset(0, -1),
              spreadRadius: .1,
              blurRadius: .1,
              blurStyle: BlurStyle.normal,
            )
          ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildItem(
            icon: Icon(
              Icons.chat,
              color: Theme.of(context).iconTheme.color,
              size: 24,
            ),
            selectedIcon: Icon(
              Icons.chat,
              color: ColorRes.green,
              size: 24,
            ),
            label: StringRes.chat,
            isSelected: widget.index.isEqual(0),
            onPressed: () => widget.onPressed(0),
          ),

          _buildItem(
            icon: Icon(
              Icons.update,
              color: Theme.of(context).iconTheme.color,
              size: 24,
            ),
            selectedIcon: Icon(
              Icons.update,
              color: ColorRes.green,
              size: 24,
            ),
            label: StringRes.status,
            isSelected: widget.index.isEqual(1),
            onPressed: () => widget.onPressed(1),
          ),

          _buildItem(
            icon: Icon(
              Icons.groups_2_outlined,
              color: Theme.of(context).iconTheme.color,
              size: 24,
            ),
            selectedIcon: Icon(
              Icons.groups_2_outlined,
              color: ColorRes.green,
              size: 24,
            ),
            label: StringRes.communities,
            isSelected: widget.index.isEqual(2),
            onPressed: () => widget.onPressed(2),
          ),

          _buildItem(
            icon: Icon(
              Icons.call_sharp,
              color: Theme.of(context).iconTheme.color,
              size: 24,
            ),
            selectedIcon: Icon(
              Icons.call_sharp,
              color: ColorRes.green,
              size: 24,
            ),
            label: StringRes.calls,
            isSelected: widget.index.isEqual(3),
            onPressed: () => widget.onPressed(3),
          ),
        ],
      ),
    );
  }
  
  Widget _buildItem({
    required Widget icon,
    required Widget selectedIcon,
    required String label,
    required bool isSelected,
    required Function onPressed,
}) {
    
    return InkWell(
      onTap: () => onPressed(),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: isSelected ? ColorRes.lightGreen : ColorRes.transparent,
              borderRadius: BorderRadius.circular(15)
            ),
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 5
              ),
              child: isSelected ? selectedIcon : icon
          ),
          const SizedBox(height: 5,),
          Text(
            label,
            style: TextStyle(
              color: Theme.of(context).iconTheme.color,
              fontFamily: FontRes.openSans,
              fontSize: 14,
              fontWeight: FontWeight.w600
            ),
          )
        ],
      ),
    );
    
  }
}
