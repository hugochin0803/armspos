import 'package:flutter/material.dart';
import 'dart:io';

class FCategories extends StatelessWidget {
  const FCategories({Key? key}) : super(key: key);

  void _showFruitsPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Items'),
          content: Container(
            height: 500,
            width: 1000,
            child: DataTable(
              columns: const <DataColumn>[
                DataColumn(
                  label: Expanded(
                    child: Text(
                      'Name',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                ),
                DataColumn(
                  label: Expanded(
                    child: Text(
                      'Age',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                ),
                DataColumn(
                  label: Expanded(
                    child: Text(
                      'Role',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                ),
              ],
              rows: const <DataRow>[
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('Sarah')),
                    DataCell(Text('19')),
                    DataCell(Text('Student')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('Janine')),
                    DataCell(Text('43')),
                    DataCell(Text('Professor')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('William')),
                    DataCell(Text('27')),
                    DataCell(Text('Associate Professor')),
                  ],
                ),
              ],
            ),
            decoration: BoxDecoration(border: Border(
              top: BorderSide(color: Colors.black),
              bottom: BorderSide(color: Colors.black),
              )),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          const SizedBox(width: 40),
          Column(
            children: [
              const SizedBox(height: 40),
              SizedBox(
                width: 120,
                height: 70,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Test1'),
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(width: 3, color: Colors.brown),
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 120,
                height: 70,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Snacks'),
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(width: 3, color: Colors.brown),
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 120,
                height: 70,
                child: ElevatedButton(
                  onPressed: () => _showFruitsPopup(context),
                  child: const Text('Beverages'),
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(width: 3, color: Colors.brown),
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 120,
                height: 70,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Test'),
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(width: 3, color: Colors.brown),
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 120,
                height: 70,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Test'),
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(width: 3, color: Colors.brown),
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(width: 40),
          Column(
            children: [
              const SizedBox(height: 40),
              SizedBox(
                width: 120,
                height: 70,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Test'),
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(width: 3, color: Colors.brown),
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 120,
                height: 70,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Test'),
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(width: 3, color: Colors.brown),
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 120,
                height: 70,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Test'),
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(width: 3, color: Colors.brown),
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 120,
                height: 70,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Test'),
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(width: 3, color: Colors.brown),
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 120,
                height: 70,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Test'),
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(width: 3, color: Colors.brown),
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(width: 40),
          Column(
            children: [
              const SizedBox(height: 40),
              SizedBox(
                width: 120,
                height: 70,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Test'),
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(width: 3, color: Colors.brown),
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 120,
                height: 70,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Test'),
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(width: 3, color: Colors.brown),
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 120,
                height: 70,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Test'),
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(width: 3, color: Colors.brown),
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 120,
                height: 70,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Test'),
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(width: 3, color: Colors.brown),
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 120,
                height: 70,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Test'),
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(width: 3, color: Colors.brown),
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(width: 40),
          Column(
            children: [
              const SizedBox(height: 40),
              SizedBox(
                width: 120,
                height: 70,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Test'),
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(width: 3, color: Colors.brown),
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 120,
                height: 70,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Test'),
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(width: 3, color: Colors.brown),
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 120,
                height: 70,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Test'),
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(width: 3, color: Colors.brown),
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 120,
                height: 70,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Test'),
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(width: 3, color: Colors.brown),
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 120,
                height: 70,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Test'),
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(width: 3, color: Colors.brown),
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(width: 40),
          Column(
            children: [
              const SizedBox(height: 40),
              SizedBox(
                width: 120,
                height: 70,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Test'),
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(width: 3, color: Colors.brown),
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 120,
                height: 70,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Test'),
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(width: 3, color: Colors.brown),
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 120,
                height: 70,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Test'),
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(width: 3, color: Colors.brown),
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 120,
                height: 70,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Test'),
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(width: 3, color: Colors.brown),
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 120,
                height: 70,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Test'),
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(width: 3, color: Colors.brown),
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}