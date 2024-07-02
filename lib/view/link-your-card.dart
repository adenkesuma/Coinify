import 'package:defi/view/CardTerms.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'CustomTextField-LinkYourCard.dart';

class LinkYourCard extends StatefulWidget {
  const LinkYourCard({super.key});

  @override
  State<LinkYourCard> createState() => _LinkYourCardState();
}

class _LinkYourCardState extends State<LinkYourCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          width: 500,
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Link your card",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Name on card",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), hintText: 'Mobbin'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Card Number",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const CustomImageTextField(
                      imagePath1: 'assets/payment/visa.png',
                      imagePath2: 'assets/payment/tes.png',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Expiration",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'MM/YY',
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "CVC",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: '123',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Postal Code",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: '012345',
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    const Text("By adding a new card, you agree to the"),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CardTerms()));
                      },
                      child: const Text(
                        'credit/debit card terms.',
                        style: TextStyle(
                          color: Colors.blueAccent,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Button action
                      },
                      child: Text(
                        'Add Card',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: BorderSide(
                              color: Colors.blueAccent,
                              width: 2, // Border width
                            ),
                          ),
                          minimumSize: Size(500, 100)),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
