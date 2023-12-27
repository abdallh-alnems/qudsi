import 'package:flutter/material.dart';
import 'package:qudsi/constant/theme/app_colors.dart';

class SearchButton extends StatelessWidget {
 final void Function()? onTap;
  const SearchButton({super.key,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: GestureDetector(
          onTap: onTap ,
          child: Container(
            padding: const EdgeInsets.only(left: 5),
            alignment: Alignment.centerLeft,
            height: 40,
            width: 120,
            decoration: BoxDecoration(
                border: Border.all(color: AppColors.secondaryColor)),
            child: const Icon(
              Icons.search,
              color: AppColors.iconAndBarColor,
              size: 21,
            ),
          ),
        ),
      ),
    );
  }
}
