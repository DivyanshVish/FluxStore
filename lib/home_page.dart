
import 'package:flutter/material.dart';
import 'package:yoliday/utils/product_Card.dart';
import 'utils/category_Item.dart';
import 'utils/custom_nav.dart';

// Splash Screen Widget
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(const Duration(seconds: 3), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const HomePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 109, 84, 180),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.shopping_cart,
              size: 100,
              color: Colors.white,
            ),
            SizedBox(height: 20),
            Text(
              'Welcome to Fluxstore',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// HomePage (Dashboard) with Responsive UI
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Responsive layout based on screen size
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Fluxstore'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Horizontal category list
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CategoryItem(
                      color: Colors.cyan,
                      icon: Icons.person,
                      label: 'Men',
                    ),
                    CategoryItem(
                      icon: Icons.person_outline,
                      label: 'Women',
                      color: Colors.pink,
                    ),
                    CategoryItem(
                      icon: Icons.shopping_bag_rounded,
                      label: 'Clothing',
                      color: Colors.orange,
                    ),
                    CategoryItem(
                      icon: Icons.image,
                      label: 'Posters',
                      color: Colors.green,
                    ),
                    CategoryItem(
                      icon: Icons.music_note,
                      label: 'Music',
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
            ),

            // Large product card
            const ProductCard(
              fontSize: 20,
              height: 260,
              heightI: 240,
              imageUrl:
                  'https://i.pinimg.com/736x/4f/20/85/4f2085fae552d26cc5ca02a390c43b27.jpg',
              title: 'Blue Summer are already in store',
            ),
            const SizedBox(height: 10),

            // For larger screens, display 2 product cards per row
            if (screenWidth > 600)
              const Row(
                children: [
                  Expanded(
                    child: ProductCard(
                      fontSize: 18,
                      height: 220,
                      heightI: 200,
                      imageUrl:
                          'https://th.bing.com/th/id/OIP.xZjRztCPBw99qK6gej70MQAAAA?rs=1&pid=ImgDetMain',
                      title: 'For Gen\nHANG OUT & PARTY',
                    ),
                  ),
                  Expanded(
                    child: ProductCard(
                      fontSize: 18,
                      height: 220,
                      heightI: 200,
                      imageUrl:
                          'https://th.bing.com/th/id/OIP.HMcTz3Yw49G42voWJPpGDwHaJg?rs=1&pid=ImgDetMain',
                      title: 'Dress\nELEGANT DESIGN',
                    ),
                  ),
                ],
              )
            else
              // For smaller screens, display one product card
              const ProductCard(
                fontSize: 18,
                height: 220,
                heightI: 200,
                imageUrl:
                    'https://th.bing.com/th/id/OIP.xZjRztCPBw99qK6gej70MQAAAA?rs=1&pid=ImgDetMain',
                title: 'For Gen\nHANG OUT & PARTY',
              ),

            // Smaller product cards
            const SizedBox(height: 10),
            const Row(
              children: [
                Expanded(
                  child: ProductCard(
                    fontSize: 12,
                    height: 180,
                    heightI: 160,
                    imageUrl:
                        'https://th.bing.com/th/id/OIP.0EW1fJKIBc-zSVLrzj5zHAHaEc?w=640&h=384&rs=1&pid=ImgDetMain',
                    title: 'T-Shirts\nTHE OFFICE LIFE',
                  ),
                ),
                Expanded(
                  child: ProductCard(
                    fontSize: 12,
                    height: 180,
                    heightI: 160,
                    imageUrl:
                        'https://th.bing.com/th/id/OIP.HMcTz3Yw49G42voWJPpGDwHaJg?rs=1&pid=ImgDetMain',
                    title: 'Dress\nELEGANT DESIGN',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}

class New extends StatefulWidget {
  const New({super.key});

  @override
  State<New> createState() => _NewState();
}

class _NewState extends State<New> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
