import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:opticash/app/app_colors.dart';
import 'package:opticash/gen/assets.gen.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    super.key,
    required this.selected,
    required this.onTap,
  });

  final int selected;

  final void Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(24, 13, 24, 18),
          decoration: BoxDecoration(
            color: AppColors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 19,
                spreadRadius: 4,
                offset: const Offset(4, 8),
                color: AppColors.black.withOpacity(0.625),
              )
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: _bottomNavBarItems(),
          ),
        ),
        GestureDetector(
          onTap: () => onTap(2),
          child: Container(
            width: 65,
            height: 65,
            alignment: Alignment.bottomCenter,
            margin: const EdgeInsets.only(bottom: 50),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(24)),
              color: AppColors.darkGreen,
            ),
            child: Center(
              child: AppAssets.images.opticashIcon.image(
                width: 41.466,
                height: 49.31,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _bottomNav({
    required String label,
    required int index,
    Widget? activeIcon,
    Widget? inActiveIcon,
    bool showIcon = true,
  }) {
    final selectedValue = index == selected;
    return CupertinoButton(
      padding: const EdgeInsets.all(5),
      onPressed: () => onTap(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (showIcon) ...[
            if (selectedValue) activeIcon! else inActiveIcon!,
            const SizedBox(height: 5),
          ] else
            const SizedBox(height: 25),
          Text(
            label,
            style: GoogleFonts.poppins(
              fontSize: 10,
              color: selectedValue ? AppColors.green74 : AppColors.greyA7,
              fontWeight: selectedValue ? FontWeight.w600 : FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _bottomNavBarItems() {
    return [
      _bottomNav(
        label: 'Home',
        index: 0,
        activeIcon: AppAssets.images.home.svg(
          colorFilter: const ColorFilter.mode(
            AppColors.green74,
            BlendMode.srcIn,
          ),
        ),
        inActiveIcon: AppAssets.images.home.svg(
          colorFilter: const ColorFilter.mode(
            AppColors.greyA7,
            BlendMode.srcIn,
          ),
        ),
      ),
      _bottomNav(
        label: 'Card',
        index: 1,
        activeIcon: AppAssets.images.creditCard.svg(
          colorFilter: const ColorFilter.mode(
            AppColors.green74,
            BlendMode.srcIn,
          ),
        ),
        inActiveIcon: AppAssets.images.creditCard.svg(
          colorFilter: const ColorFilter.mode(
            AppColors.greyA7,
            BlendMode.srcIn,
          ),
        ),
      ),
      _bottomNav(
        label: 'Send',
        index: 2,
        showIcon: false,
      ),
      _bottomNav(
        label: 'Swap',
        index: 3,
        activeIcon: AppAssets.images.swap.svg(
          colorFilter: const ColorFilter.mode(
            AppColors.green74,
            BlendMode.srcIn,
          ),
        ),
        inActiveIcon: AppAssets.images.swap.svg(
          colorFilter: const ColorFilter.mode(
            AppColors.greyA7,
            BlendMode.srcIn,
          ),
        ),
      ),
      _bottomNav(
        label: 'Account',
        index: 4,
        activeIcon: AppAssets.images.mechanic.svg(
          colorFilter: const ColorFilter.mode(
            AppColors.green74,
            BlendMode.srcIn,
          ),
        ),
        inActiveIcon: AppAssets.images.mechanic.svg(
          colorFilter: const ColorFilter.mode(
            AppColors.greyA7,
            BlendMode.srcIn,
          ),
        ),
      ),
    ];
  }
}
