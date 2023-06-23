import 'package:flutter/material.dart';
import 'dart:io';

class RCategories extends StatelessWidget {
  const RCategories({Key? key}) : super(key: key);

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
    return Container(
      child: GridView.count(
        scrollDirection: Axis.vertical,
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 20,
        mainAxisSpacing: 30,
        crossAxisCount: 6,
        children: [
          SizedBox(
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Testabc'),
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(width: 3, color: Colors.brown),
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Testabc'),
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(width: 3, color: Colors.brown),
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(
                child: ElevatedButton(
                  onPressed: () => _showFruitsPopup(context),
                  child: const Text('Fruits'),
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(width: 3, color: Colors.brown),
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(
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
              SizedBox(
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
            SizedBox(
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
            SizedBox(
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
              ),SizedBox(
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
              ),SizedBox(
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
              ),SizedBox(
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
              ),SizedBox(
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
              ),SizedBox(
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
              ),SizedBox(
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
              ),SizedBox(
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
              ),SizedBox(
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
              ),SizedBox(
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
              ),SizedBox(
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
              ),SizedBox(
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
              ),SizedBox(
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
              ),SizedBox(
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
              ),SizedBox(
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
              ),SizedBox(
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
              ),SizedBox(
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
              ),SizedBox(
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
              ),SizedBox(
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
              ),SizedBox(
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
              ),SizedBox(
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
              ),SizedBox(
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
              ),SizedBox(
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
              ),SizedBox(
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
              ),SizedBox(
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
              ),SizedBox(
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
              ),SizedBox(
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
              ),SizedBox(
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
              ),SizedBox(
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
              ),SizedBox(
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
              ),SizedBox(
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
              ),SizedBox(
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
              ),SizedBox(
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
              ),SizedBox(
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
              ),SizedBox(
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
              ),SizedBox(
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
              ),SizedBox(
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
              ),SizedBox(
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
              ),SizedBox(
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
              ),SizedBox(
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
              ),SizedBox(
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
              ),SizedBox(
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
              ),SizedBox(
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
              ),SizedBox(
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
              ),SizedBox(
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
              ),SizedBox(
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
              ),SizedBox(
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
              ),SizedBox(
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
              ),SizedBox(
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
              ),SizedBox(
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
              ),SizedBox(
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
              ),SizedBox(
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
      );
  }
}