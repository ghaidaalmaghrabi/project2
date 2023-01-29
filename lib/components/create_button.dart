import 'package:flutter/material.dart';
import 'package:projecr2/pages/form.dart';

class CreateButton extends StatelessWidget {
  const CreateButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xffEB5D2E),
        ),
        onPressed: () {
          final navigator = Navigator.of(context);
          navigator.push(
            MaterialPageRoute(
              builder: (context) => FormPage(),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: const [
              Text(
                'Create Challenge',
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(
                width: 8,
              ),
              Icon(Icons.add),
            ],
          ),
        ),
      ),
    );
  }
}
