import 'package:flutter/material.dart';
import 'package:home_services/features/sign_up/presentation/views/widgets/location_access_view_body.dart';

class LocationAccessView extends StatelessWidget {
  const LocationAccessView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Spacer(flex: 1),
            Expanded(
              flex: 4,
              child: SingleChildScrollView(
                child: LocationAccessViewBody(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
