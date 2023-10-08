import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/AppColors.dart';
import 'custom_elvated_btn.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.all(3),
      height: 390,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.white,
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            '??',
            style: Theme.of(context).textTheme.displayLarge!.copyWith(
                  color: AppColors.txt_black,
                  fontSize: 30,
                ),
          ),
          const SizedBox(
            height: 43,
          ),
          CustomElvatedBtn(
            text: 'text',
            onpressed: () {},
            width: 310,
            color: AppColors.cl,
          ),
          const SizedBox(
            height: 15,
          ),
          CustomElvatedBtn(
            text: 'text',
            onpressed: () {},
            width: 310,
            color: AppColors.cl,
          ),
          const SizedBox(
            height: 15,
          ),
          CustomElvatedBtn(
            text: 'text',
            onpressed: () {},
            width: 310,
            color: AppColors.cl,
          ),
          const SizedBox(
            height: 15,
          ),
          CustomElvatedBtn(
            text: 'text',
            onpressed: () {},
            width: 310,
            color: AppColors.cl,
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
