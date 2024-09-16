// import 'package:flutter/material.dart';

// class CustomBottomNavigationBar extends StatelessWidget {
//   final int selectedIndex;
//   final ValueChanged<int> onItemTapped;

//   const CustomBottomNavigationBar({
//     super.key,
//     required this.selectedIndex,
//     required this.onItemTapped,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return BottomAppBar(
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           BottomNavigationBarItemCustom(
//             icon: Icons.home_outlined,
//             label: 'Shop',
//             index: 0,
//             selectedIndex: selectedIndex,
//             onTap: onItemTapped,
//           ),
//           BottomNavigationBarItemCustom(
//             icon: Icons.search_sharp,
//             label: 'Search',
//             index: 1,
//             selectedIndex: selectedIndex,
//             onTap: onItemTapped,
//           ),
//           BottomNavigationBarItemCustom(
//             icon: Icons.add_shopping_cart,
//             label: 'Cart',
//             index: 2,
//             selectedIndex: selectedIndex,
//             onTap: onItemTapped,
//           ),
//           BottomNavigationBarItemCustom(
//             icon: Icons.person_outline,
//             label: 'Profile',
//             index: 3,
//             selectedIndex: selectedIndex,
//             onTap: onItemTapped,
//           ),
//         ],
//       ),
//     );
//   }
// }

// class BottomNavigationBarItemCustom extends StatelessWidget {
//   final IconData icon;
//   final String label;
//   final int index;
//   final int selectedIndex;
//   final ValueChanged<int> onTap;

//   const BottomNavigationBarItemCustom({
//     super.key,
//     required this.icon,
//     required this.label,
//     required this.index,
//     required this.selectedIndex,
//     required this.onTap,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () => onTap(index),
//       child: Container(
//         padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//         child: Row(
//           children: [
//             Icon(
//               icon,
//               color: selectedIndex == index ? Colors.blue : Colors.grey,
//             ),
//             const SizedBox(width: 5),
//             Text(
//               label,
//               style: TextStyle(
//                 color: selectedIndex == index ? Colors.blue : Colors.grey,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemTapped;

  const CustomBottomNavigationBar({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BottomNavigationBarItemCustom(
            icon: Icons.home_outlined,
            label: 'Shop',
            index: 0,
            selectedIndex: selectedIndex,
            onTap: onItemTapped,
          ),
          BottomNavigationBarItemCustom(
            icon: Icons.search_sharp,
            label: 'Search',
            index: 1,
            selectedIndex: selectedIndex,
            onTap: onItemTapped,
          ),
          BottomNavigationBarItemCustom(
            icon: Icons.add_shopping_cart,
            label: 'Cart',
            index: 2,
            selectedIndex: selectedIndex,
            onTap: onItemTapped,
          ),
          BottomNavigationBarItemCustom(
            icon: Icons.person_3_outlined,
            label: 'Profile',
            index: 3,
            selectedIndex: selectedIndex,
            onTap: onItemTapped,
          ),
        ],
      ),
    );
  }
}

class BottomNavigationBarItemCustom extends StatelessWidget {
  final IconData icon;
  final String label;
  final int index;
  final int selectedIndex;
  final ValueChanged<int> onTap;

  const BottomNavigationBarItemCustom({
    super.key,
    required this.icon,
    required this.label,
    required this.index,
    required this.selectedIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(index),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Row(
          children: [
            Icon(
              icon,
              color: selectedIndex == index ? Colors.blue : Colors.grey,
            ),
            const SizedBox(width: 5),
            if (selectedIndex == index) // Show the label only if selected
              Text(
                label,
                style: const TextStyle(
                  color: Colors.blue,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
