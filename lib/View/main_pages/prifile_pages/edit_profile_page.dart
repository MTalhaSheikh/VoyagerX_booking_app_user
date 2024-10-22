import 'package:flutter/material.dart';

import '../../../config/pallet.dart';
import '../../Widgets/reuseableWidget.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: appBar(
            () {
          Navigator.pop(context);
        },
        'Profile Edit',
      ),
    );
  }
}
