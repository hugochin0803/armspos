import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
  body: Row(
    children: [
      Container(
        width: 300,
        child: ListView(
          children: [
            Container(
              color: Colors.white,
              
            ),
          ],
        ),
      ),
      Expanded(
        flex: 14,
        child: Column(
          children: [
            _topMenu(
              title: 'ARMS POS',
              subTitle: '20 October 2022',
              action: _search(),
            ),
            Container(
              height: 120,
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _itemTab(
                    icon: const AssetImage('assets/icons/icon-burger.png').assetName,
                    title: 'Burger',
                    isActive: true,
                  ),
                  _itemTab(
                    icon: const AssetImage('assets/icons/icon-noodles.png').assetName,
                    title: 'Noodles',
                    isActive: false,
                  ),
                  _itemTab(
                    icon: const AssetImage('assets/icons/icon-drinks.png').assetName,
                    title: 'Drinks',
                    isActive: false,
                  ),
                  _itemTab(
                    icon: const AssetImage('assets/icons/icon-desserts.png').assetName,
                    title: 'Desserts',
                    isActive: false,
                  ),
                ],
              ),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 4,
                childAspectRatio: (1 / 1.2),
                children: [
                  _item(
                    image: const AssetImage('assets/items/1.png').assetName,
                    title: 'Original Burger',
                    price: '\$5.99',
                    item: '11 item',
                  ),
                  _item(
                    image: const AssetImage('assets/items/2.png').assetName,
                    title: 'Double Burger',
                    price: '\$10.99',
                    item: '10 item',
                  ),
                  _item(
                    image: const AssetImage('assets/items/3.png').assetName,
                    title: 'Cheese Burger',
                    price: '\$6.99',
                    item: '7 item',
                  ),
                  _item(
                    image: const AssetImage('assets/items/4.png').assetName,
                    title: 'Double Cheese Burger',
                    price: '\$12.99',
                    item: '20 item',
                  ),
                  _item(
                    image: const AssetImage('assets/items/5.png').assetName,
                    title: 'Spicy Burger',
                    price: '\$7.39',
                    item: '12 item',
                  ),
                  _item(
                    image: const AssetImage('assets/items/6.png').assetName,
                    title: 'Special Black Burger',
                    price: '\$7.39',
                    item: '39 item',
                  ),
                  _item(
                    image: const AssetImage('assets/items/7.png').assetName,
                    title: 'Special Cheese Burger',
                    price: '\$8.00',
                    item: '2 item',
                  ),
                  _item(
                    image: const AssetImage('assets/items/8.png').assetName,
                    title: 'Jumbo Cheese Burger',
                    price: '\$15.99',
                    item: '2 item',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      Container(
        width: 300,
        child: ListView(
          children: [
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  _cart(),
                  const Divider(height: 1),
                  _orderSummary(),
                  const Divider(height: 1),
                  _paymentMethod(),
                ],
              ),
            ),
          ],
        ),
      ),
    ],
  ),
);
  }

  Widget _topMenu({required String title, required String subTitle, required Widget action}) {
    return Container(
      color: Colors.blue,
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Icon(Icons.menu, color: Colors.white),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subTitle,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
          action,
        ],
      ),
    );
  }

  Widget _search() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: const [
          Icon(Icons.search),
          SizedBox(width: 8),
          Text('Search...'),
        ],
      ),
    );
  }

  Widget _itemTab({required String icon, required String title, required bool isActive}) {
    final backgroundColor = isActive ? Colors.blue : Colors.transparent;
    final textColor = isActive ? Colors.black : Colors.grey;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Image.asset(
              icon,
              width: 24,
              height: 24,
              color: textColor,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _item({required String image, required String title, required String price, required String item}) {
    return Container(
      padding: const EdgeInsets.all(6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 120,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          const SizedBox(height: 6),
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(price),
          const SizedBox(height: 4),
          Text(
            item,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }

  Widget _cart() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: const [
              Icon(Icons.shopping_cart),
              SizedBox(width: 8),
              Text('Cart'),
            ],
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Clear All'),
          ),
        ],
      ),
    );
  }

  Widget _orderSummary() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Order Summary',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Subtotal:'),
              Text('\$38.96'),
            ],
          ),
          const SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Tax:'),
              Text('\$3.12'),
            ],
          ),
          const SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Total:'),
              Text('\$42.08'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _paymentMethod() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Payment Method',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          ListTile(
            leading: Image.asset('assets/icons/icon-cash.png', width: 24, height: 24),
            title: const Text('Cash'),
            trailing: Radio(
              value: 1,
              groupValue: 1,
              onChanged: (value) {},
            ),
          ),
          ListTile(
            leading: Image.asset('assets/icons/icon-card.png', width: 24, height: 24),
            title: const Text('Card'),
            trailing: Radio(
              value: 2,
              groupValue: 1,
              onChanged: (value) {},
            ),
          ),
          ListTile(
            leading: Image.asset('assets/icons/icon-paypal.png', width: 24, height: 24),
            title: const Text('PayPal'),
            trailing: Radio(
              value: 3,
              groupValue: 1,
              onChanged: (value) {},
            ),
          ),
        ],
      ),
    );
  }
}