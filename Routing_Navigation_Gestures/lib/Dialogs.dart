import 'package:flutter/material.dart';

class Dialogs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialogs'),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(
                'Dialogs',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              ElevatedButton(
                child: const Text('Click and get your gift'),
                onPressed: () => showDialog<void>(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          content: const Text('Your gift is mark deduction, Press OK to continue'),
                          actions: <Widget>[
                            TextButton(
                                child: const Text('OK'),
                                onPressed: () => Navigator.pop(context)),
                          ],
                        );
                      },
                    ),
              ),
              ElevatedButton(
                child: const Text('Get a response'),
                onPressed: () async {
                  final String? response = await showDialog<String>(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        content: const Text('Are you sure? You will get more mark deduction?'),
                        actions: <Widget>[
                          TextButton(
                              child: const Text('Yes'),
                              onPressed: () => Navigator.pop(context, 'Yes')),
                          TextButton(
                              child: const Text('No'),
                              onPressed: () => Navigator.pop(context, 'No')),
                        ],
                      );
                    },
                  );
                  print(response);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}