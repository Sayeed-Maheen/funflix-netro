import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/appColors.dart';



class RememberMeModel extends StatefulWidget {
  const RememberMeModel({super.key});

  @override
  State<RememberMeModel> createState() => _RememberMeModelState();
}

class _RememberMeModelState extends State<RememberMeModel> {
  bool? check1 = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30, top: 12, bottom: 12),
          child: Theme(
            data: Theme.of(context).copyWith(
              unselectedWidgetColor: AppColors.colorWhiteHighEmp,
            ),
            child: Transform.scale(
              scale: 0.9,
              child: SizedBox(
                height: 20.h,
                width: 20.w,
                child: Checkbox(

                    value: check1,
                    onChanged: (bool? value) {
                      setState(() {
                        check1 = value;
                      });
                    }),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            "Remember me",
            style: TextStyle(
              fontSize: 14.sp,
              color: AppColors.colorWhiteHighEmp,
            ),
          ),
        )
      ],
    );
  }
}