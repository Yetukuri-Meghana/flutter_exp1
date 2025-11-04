import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Library Info Page',
      debugShowCheckedModeBanner: false,
      home: const LibraryInfoPage(),
    );
  }
}

class LibraryInfoPage extends StatelessWidget {
  const LibraryInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Library Information'),
        backgroundColor: Colors.teal,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.info_outline),
            tooltip: 'About',
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                'Welcome to the Library!',
                style: TextStyle(
                  color: Colors.teal,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 12),

            // Top row: user icon, contact icon, login button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: const [
                    Icon(Icons.person, size: 36),
                    SizedBox(height: 6),
                    Text('Members')
                  ],
                ),
                Column(
                  children: const [
                    Icon(Icons.phone, size: 36),
                    SizedBox(height: 6),
                    Text('Contact')
                  ],
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    // implement login/navigation in future
                  },
                  icon: const Icon(Icons.login),
                  label: const Text('Member Login'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal,
                    foregroundColor: Colors.white,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 16),

            // Search field
            TextField(
              decoration: InputDecoration(
                hintText: 'Search books, authors, ISBN...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
              ),
            ),

            const SizedBox(height: 16),

            // Library image
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                // placeholder library image (random)
                'https://cdn.prod.website-files.com/604a97c70aee09eed25ce991/61897a35583a9b51db018d3e_MartinPublicSeating-97560-Importance-School-Library-blogbanner1.jpg',
                height: 180,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(height: 18),

            // Opening hours card
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Opening Hours',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Text('Mon - Fri: 08:00 AM - 08:00 PM'),
                    Text('Saturday: 09:00 AM - 05:00 PM'),
                    Text('Sunday: Closed'),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 14),

            // Featured books (ListTiles)
            const Text(
              'Featured Books',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),

            Card(
              child: Column(
                children: const [
                  ListTile(
                    leading: Icon(Icons.book),
                    title: Text('Introduction to Algorithms'),
                    subtitle: Text('Cormen, Leiserson, Rivest, Stein'),
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                  Divider(height: 1),
                  ListTile(
                    leading: Icon(Icons.menu_book),
                    title: Text('Clean Code'),
                    subtitle: Text('Robert C. Martin'),
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                  Divider(height: 1),
                  ListTile(
                    leading: Icon(Icons.library_books),
                    title: Text('The Pragmatic Programmer'),
                    subtitle: Text('Andrew Hunt, David Thomas'),
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 18),

            // Contact / Address
            const Text(
              'Contact & Address',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.teal.shade50,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: const [
                  Icon(Icons.location_on),
                  SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      '123 Library Lane, Knowledge City\nPhone: +91 98765 43210\nEmail: info@library.example',
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            // Small footer
            Center(
              child: Text(
                '© ${DateTime.now().year} Your Library Name',
                style: const TextStyle(color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
