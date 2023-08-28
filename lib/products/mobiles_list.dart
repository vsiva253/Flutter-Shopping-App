import 'package:flutter/material.dart';
import '../model/api.dart';
import 'product_details.dart';

class ElectronicsPage extends StatefulWidget {
  @override
  _ElectronicsPageState createState() => _ElectronicsPageState();
}

class _ElectronicsPageState extends State<ElectronicsPage> {
  List<Welcome> electronicsData = [];

  @override
  void initState() {
    super.initState();
    _fetchElectronicsData(); // Call the method to fetch data when the page is created
  }

  // Define the method to fetch electronics data
  Future<void> _fetchElectronicsData() async {
    try {
      List<Welcome> data = await fetchElectronicsDataFromApi();
      setState(() {
        electronicsData = data;
      });
    } catch (e) {
      // Handle errors here
      print('Error fetching electronics data: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Electronics')),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 20.0), // Add bottom padding
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount:
                  2, // Set the number of columns you want in the grid
              crossAxisSpacing: 8.0, // Set the spacing between columns
              mainAxisSpacing: 8.0, // Set the spacing between rows
            ),
            itemCount: electronicsData.length,
            itemBuilder: (context, index) {
              return buildElectronicsItem(context, electronicsData[index]);
            },
          ),
        ),
      ),
    );
  }

  Widget buildElectronicsItem(BuildContext context, Welcome item) {
    // Get a substring of the title with a maximum of 10 characters
    String limitedTitle = item.title.length <= 10
        ? item.title
        : item.title.substring(0, 14) + "...";

    return GestureDetector(
      onTap: () {
        _navigateToProductDetails(context, item);
        // Implement the action when the item is tapped.
        // For example, navigate to a details page for the item.
      },
      child: Container(
        height: 240, // Reduce the height of the container
        color: Colors.grey.shade200,
        child: Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 100, // Reduce the height of the image container
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade100),
                  color: Colors.white,
                  image: DecorationImage(
                    image: NetworkImage(item.image),
                    fit: BoxFit.contain,
                    // Use BoxFit.contain to fit the image within the container
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      limitedTitle,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16, // Reduce the font size of the title
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Price: \$${item.price.toStringAsFixed(2)}',
                      style: const TextStyle(
                        fontSize: 14, // Reduce the font size of the price
                      ),
                    ),
                    // Add any other product details you want to display
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Method to navigate to the product details page
  void _navigateToProductDetails(BuildContext context, Welcome product) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProductDetailsPage(product: product),
      ),
    );
  }
}
