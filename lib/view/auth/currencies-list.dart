import 'package:flutter/material.dart';

class Currencies extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Currency Picker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CurrencyPicker(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Currency {
  final String fullName;
  final String abbreviation;

  Currency({required this.fullName, required this.abbreviation});
}

class CurrencyPicker extends StatefulWidget {
  @override
  _CurrencyPickerState createState() => _CurrencyPickerState();
}

class _CurrencyPickerState extends State<CurrencyPicker> {
  TextEditingController _controller = TextEditingController();
  List<Currency> currencies = [
    Currency(fullName: 'Argentine Peso', abbreviation: 'ARS'),
    Currency(fullName: 'Australian Dollar', abbreviation: 'AUD'),
    Currency(fullName: 'Brazilian Real', abbreviation: 'BRL'),
    Currency(fullName: 'British Pound Sterling', abbreviation: 'GBP'),
    Currency(fullName: 'Canadian Dollar', abbreviation: 'CAD'),
    Currency(fullName: 'Chinese Yuan', abbreviation: 'CNY'),
    Currency(fullName: 'Danish Krone', abbreviation: 'DKK'),
    Currency(fullName: 'Euro', abbreviation: 'EUR'),
    Currency(fullName: 'Hong Kong Dollar', abbreviation: 'HKD'),
    Currency(fullName: 'Indian Rupee', abbreviation: 'INR'),
    Currency(fullName: 'Indonesian Rupiah', abbreviation: 'IDR'),
    Currency(fullName: 'Japanese Yen', abbreviation: 'JPY'),
    Currency(fullName: 'Mexican Peso', abbreviation: 'MXN'),
    Currency(fullName: 'New Zealand Dollar', abbreviation: 'NZD'),
    Currency(fullName: 'Norwegian Krone', abbreviation: 'NOK'),
    Currency(fullName: 'Russian Ruble', abbreviation: 'RUB'),
    Currency(fullName: 'Saudi Riyal', abbreviation: 'SAR'),
    Currency(fullName: 'Singapore Dollar', abbreviation: 'SGD'),
    Currency(fullName: 'South African Rand', abbreviation: 'ZAR'),
    Currency(fullName: 'South Korean Won', abbreviation: 'KRW'),
    Currency(fullName: 'Swedish Krona', abbreviation: 'SEK'),
    Currency(fullName: 'Swiss Franc', abbreviation: 'CHF'),
    Currency(fullName: 'Turkish Lira', abbreviation: 'TRY'),
    Currency(fullName: 'United Arab Emirates Dirham', abbreviation: 'AED'),
    Currency(fullName: 'United States Dollar', abbreviation: 'USD'),
  ];
  List<Currency> filteredCurrencies = [];

  @override
  void initState() {
    super.initState();
    filteredCurrencies = currencies;
  }

  void filterCurrencies(String query) {
    setState(() {
      filteredCurrencies = currencies
          .where((currency) =>
              currency.fullName.toLowerCase().contains(query.toLowerCase()) ||
              currency.abbreviation.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Currencies',
            style: TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        body: Container(
          width: 500,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _controller,
                  onChanged: (value) => filterCurrencies(value),
                  decoration: InputDecoration(
                    hintText: 'Search currencies...',
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: filteredCurrencies.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(filteredCurrencies[index].fullName),
                      subtitle: Text(filteredCurrencies[index].abbreviation),
                      onTap: () {
                        // Do something when currency is tapped
                        Navigator.of(context).pop();
                        print(
                            'Selected currency: ${filteredCurrencies[index].fullName}');
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
