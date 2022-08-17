import 'package:flutter/material.dart';
import 'package:nomady_design_system/src/resources/design_system_strings.dart';

class DsButtonSave extends StatelessWidget {
  const DsButtonSave({
    Key? key,
    this.onpressed,
  }) : super(key: key);
  final Function? onpressed;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      //flex: 1,
      child: ElevatedButton.icon(
        onPressed: () {},
        icon: const Icon(Icons.save),
        label: const Text(DsStrings.dsButtonSave),
      ),
    );
  }
}
