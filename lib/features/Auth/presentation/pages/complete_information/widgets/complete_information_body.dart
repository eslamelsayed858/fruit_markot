import 'package:flutter/material.dart';
import 'package:fruit_markot/core/widgets/custom_buttons.dart';
import 'package:fruit_markot/core/widgets/space_widget.dart';
import 'package:fruit_markot/features/Auth/presentation/pages/complete_information/widgets/complete_information_item.dart';

class CompleteInformationBody extends StatelessWidget {
  const CompleteInformationBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ListView(
        children: [
          Container(
            child: Column(
              children: [
                VerticalSpace(9),
                CompleteInforItem(
                  text: 'Enter Your Name',
                ),
                VerticalSpace(1),
                CompleteInforItem(
                  text: 'Enter Your Phone Number',
                ),
                VerticalSpace(1),
                CompleteInforItem(
                  maxLines: 50,
                  text: 'Add Address',
                ),
                VerticalSpace(3),
                CustomGeneralButton(
                  text: 'Login',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
