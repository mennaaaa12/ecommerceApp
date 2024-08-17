import 'package:ecommerceapp/features/auth/widgets/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LocationAndDroplist extends StatelessWidget {
  const LocationAndDroplist({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      hintText: 'Location',
      suffixIcon: PopupMenuButton<String>(
        icon: const Icon(FontAwesomeIcons.chevronDown),
        onSelected: (String value) {},
        itemBuilder: (BuildContext context) {
          return <PopupMenuEntry<String>>[
            const PopupMenuItem<String>(
              value: 'Option 1',
              child: Text('cairo'),
            ),
            const PopupMenuItem<String>(
              value: 'Option 2',
              child: Text('alexandria'),
            ),
            const PopupMenuItem<String>(
              value: 'Option 3',
              child: Text('giza'),
            ),
          ];
        },
        color: Colors.white,
      ),
    );
  }
}
