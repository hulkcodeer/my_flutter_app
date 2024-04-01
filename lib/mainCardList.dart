import 'package:flutter/material.dart';
import 'package:my_flutter_app/widgets/button.dart';
import 'package:my_flutter_app/widgets/currency_card.dart';

void main() {
  runApp(const App());
}

// 3가지 중에 하나는 무조건 상속받아야 한다.
// 그중에 StatelessWidget부터 상속받아서 해본다.
// App Root에 Return해야 하는 앱이 두개 있는데, 하나는 material, 다른 하나는 cupertino 앱을 리턴하는것
// scaffold는 무조건 써야한다.
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        'Hey, Hyunjin',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w800),
                      ),
                      Text(
                        'Welcome back',
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.8), fontSize: 18),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Total Balance',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white.withOpacity(0.8),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                '\$5 192 482',
                style: TextStyle(
                    fontSize: 48,
                    color: Colors.white.withOpacity(0.8),
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Button(
                      text: 'Transfer',
                      bgColor: Color(0xFFF2B33A),
                      textColor: Colors.white),
                  Button(
                      text: 'Request',
                      bgColor: Color(0xFF1F2123),
                      textColor: Colors.white),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    'Wallets',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Currencycard(
                name: 'Euro',
                code: 'EUR',
                amount: '6 428',
                iconImage: Icons.euro_rounded,
                isInverted: false,
              ),
              Transform.translate(
                offset: const Offset(0, -20),
                child: const Currencycard(
                  name: 'Bitcoin',
                  code: 'BTC',
                  amount: '6 428',
                  iconImage: Icons.currency_bitcoin,
                  isInverted: true,
                ),
              ),
              Transform.translate(
                offset: const Offset(0, -40),
                child: const Currencycard(
                  name: 'Dollars',
                  code: 'DTC',
                  amount: '6 128',
                  iconImage: Icons.currency_exchange,
                  isInverted: false,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
