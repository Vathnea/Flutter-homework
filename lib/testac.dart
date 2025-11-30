import 'package:flutter/material.dart';

class AcledaSecondUI extends StatelessWidget {
  const AcledaSecondUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0C193D),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 🟦 Recommended Section
              const Text(
                "Recommended",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              SizedBox(
                height: 150,
                child: PageView(
                  children: [
                    _RecommendedCard(
                      image: 'assets/image/banner1.png',
                      title: 'Small Business Loan',
                      subtitle:
                          'One-Stop Financial Solution for Your Growing Business!',
                    ),
                    _RecommendedCard(
                      image: 'assets/image/banner2.png',
                      title: 'Digital Banking',
                      subtitle: 'Manage all your finances with ease anywhere!',
                    ),
                    _RecommendedCard(
                      image: 'assets/image/banner3.png',
                      title: 'Saving Account',
                      subtitle: 'Grow your money safely with attractive rates.',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              // 🟣 Recent Transactions
              const Text(
                "Recent Transactions",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              SizedBox(
                height: 90,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    _TransactionItem("HV", "HIN VATHNEA"),
                    _TransactionItem("SS", "Srey Sorphorn"),
                    _TransactionItem("SS", "SANN SEYHA"),
                    _TransactionItem("MT", "Muth Thida"),
                    _TransactionItem("HV", "HIN VATHNEA"),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              // 🟡 Other Services
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Other Services",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios, color: Colors.white, size: 16),
                ],
              ),
              const SizedBox(height: 12),

              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color(0xFF142850),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children: [
                    // Government Logo Card
                    Container(
                      height: 80,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Image.asset(
                        'assets/image/gov_logo.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Services Icons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _ServiceItem('assets/image/nodrug.png', 'NoDrug'),
                        _ServiceItem(
                          'assets/image/weather.png',
                          'MOWRAM\nWeather',
                        ),
                        _ServiceItem('assets/image/angkor.png', 'Angkor Tep'),
                        _ServiceItem('assets/image/water.png', 'Garden Water'),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// 🟦 Recommended Card Widget
class _RecommendedCard extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;

  const _RecommendedCard({
    required this.image,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        color: const Color(0xFF142850),
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(
            colors: [Colors.black.withOpacity(0.6), Colors.transparent],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        padding: const EdgeInsets.all(16),
        alignment: Alignment.bottomLeft,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.yellow,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              subtitle,
              style: const TextStyle(color: Colors.white, fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}

// 🟣 Transaction Item Widget
class _TransactionItem extends StatelessWidget {
  final String initials;
  final String name;
  const _TransactionItem(this.initials, this.name);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Column(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: Colors.purple.shade800,
            child: Text(
              initials,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 6),
          Text(
            name,
            style: const TextStyle(color: Colors.white70, fontSize: 12),
          ),
        ],
      ),
    );
  }
}

// 🟡 Service Item Widget
class _ServiceItem extends StatelessWidget {
  final String image;
  final String title;
  const _ServiceItem(this.image, this.title);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(image, height: 50, width: 50),
        const SizedBox(height: 6),
        Text(
          title,
          style: const TextStyle(color: Colors.white70, fontSize: 12),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
