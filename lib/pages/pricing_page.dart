import 'package:flutter/material.dart';
import 'package:modular_ui/modular_ui.dart';

class PricingPage extends StatelessWidget {
  final double amount;

  const PricingPage({
    super.key,
    required this.amount,
  });

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Pricing",
        ),
      ),
      body: Center(
        child: MUIPricingCard(
          title: '',
          duration: MUIPricingDuration.yearly,
          currency: MUIPricingCurrency.dollar,
          amount: amount,
          button: MaterialButton(
            onPressed: () {},
            child: const Text(
              "Buy Now!",
            ),
          ),
        ),
      ),
    );
  }
}
