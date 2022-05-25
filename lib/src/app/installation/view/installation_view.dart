import 'package:flutter/material.dart';

import '../../../core/core.dart';

class InstallationView extends StatelessWidget {
  const InstallationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Padding(
        padding: const EdgeInsets.all(kDefaultPadding),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(kDefaultBorderRadius),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Stepper(
                  currentStep: 1,
                  controlsBuilder: (
                    BuildContext context, {
                    VoidCallback? onStepContinue,
                    VoidCallback? onStepCancel,
                  }) =>
                      const SizedBox.shrink(),
                  steps: [
                    const Step(
                      isActive: true,
                      state: StepState.complete,
                      title: Text('Installing Git'),
                      content: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'The Git software is going to be used to download'
                          'and setup versions of AtoM.',
                        ),
                      ),
                    ),
                    const Step(
                      isActive: true,
                      state: StepState.indexed,
                      title: Text('Cloning AtoM Repository'),
                      content: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Downloading AtoM\'s repository from GitHub.\n'
                          'This might take a while...',
                        ),
                      ),
                    ),
                    const Step(
                      state: StepState.indexed,
                      title: Text('Configuring the Environment'),
                      content: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Finishing things up.',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  padding: const EdgeInsets.all(kDefaultPadding),
                  width: double.infinity,
                  height: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(kDefaultBorderRadius),
                      bottomRight: Radius.circular(kDefaultBorderRadius),
                    ),
                  ),
                  child: const Text(
                    '\$ git clone -b stable/2.6.x --strip 1 '
                    'https://github.com/artefactual/atom.git atom',
                    style: AppTheme.console,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
