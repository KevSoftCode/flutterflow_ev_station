import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../models/models.dart';
import '../theme/themes.dart';

class StationInfoOutlet extends StatelessWidget {
  final Connectors? connector;
  const StationInfoOutlet({super.key, required this.connector});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4),
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.lightGrey),
      ),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 24.58,
                height: 23.04,
                child: SvgPicture.asset(
                  greenPlug,
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                  child: Text(
                'Type 2(AC)',
                style: TextStyles.textStyle.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppColors.greyTextColor,
                ),
              )),
              const SizedBox(width: 8),
              Text(
                '22 kWh',
                style: TextStyles.textStyle.copyWith(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: AppColors.greyTextColor,
                ),
              ),
            ],
          ),
          const SizedBox(height: 7),
          Row(
            children: [
              Expanded(
                child: Text(
                  '\$3 per kWh',
                  style: TextStyles.textStyle.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.blackColor,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Container(
                  // margin: const EdgeInsets.all(8),
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  width: 76,
                  decoration: BoxDecoration(
                      color:
                          // enabled ?
                          AppColors.lightGreen,
                      //  : AppColors.lightGrey,
                      borderRadius: BorderRadius.circular(4)),
                  child: Text(
                      // enabled ?
                      'Charge',
                      // : 'In Use',
                      textAlign: TextAlign.center,
                      style: TextStyles.textStyle.copyWith(
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                        color:
                            //  enabled?
                            AppColors.whiteColor,
                        // : AppColors.greyTextColor)),
                      )))
            ],
          ),
        ],
      ),
    );
  }
}
