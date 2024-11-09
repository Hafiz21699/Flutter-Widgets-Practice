import 'package:flutter/material.dart';

class InflationCalculator extends StatefulWidget {
  const InflationCalculator({super.key});

  @override
  _InflationCalculatorState createState() => _InflationCalculatorState();
}

class _InflationCalculatorState extends State<InflationCalculator> {
  final TextEditingController _initialAmountController = TextEditingController();
  final TextEditingController _inflationRateController = TextEditingController();
  final TextEditingController _yearsController = TextEditingController();

  double _futureValue = 0.0;

  void _calculateInflation() {
    final initialAmount = double.tryParse(_initialAmountController.text) ?? 0.0;
    final inflationRate = double.tryParse(_inflationRateController.text) ?? 0.0;
    final years = int.tryParse(_yearsController.text) ?? 0;

    setState(() {
      _futureValue = initialAmount * (1 + inflationRate / 100).pow(years);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inflation Calculator'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _initialAmountController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Initial Amount',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _inflationRateController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Annual Inflation Rate (%)',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _yearsController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Number of Years',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _calculateInflation,
              child: const Text('Calculate Future Value'),
            ),
            const SizedBox(height: 20),
            Text(
              'Future Value: \$${_futureValue.toStringAsFixed(2)}',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

extension on double {
  num pow(int years) {
    return 1.0; // Replace with actual calculation if needed
  }
}
