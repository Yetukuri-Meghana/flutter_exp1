import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Library Information',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Library Information',
            style: TextStyle(fontSize: 20, letterSpacing: 1.5),
          ),
          backgroundColor: Colors.black,
        ),
        body: ListView(
          children: const [
            LibraryListItem(
              title: 'Central Library',
              subtitle:
                  'Largest collection: ~120,000 titles • Open: 8:00 AM - 8:00 PM',
              imageUrl:
                  'https://images.unsplash.com/photo-1507842217343-583bb7270b66?auto=format&fit=crop&w=1200&q=80',
            ),
            LibraryListItem(
              title: 'Digital Resources',
              subtitle:
                  'Access e-books, journals, and databases • Remote login available',
              imageUrl:
                  'https://images.unsplash.com/photo-1503676260728-1c00da094a0b?auto=format&fit=crop&w=1200&q=80',
            ),
            LibraryListItem(
              title: 'Reading Room',
              subtitle:
                  'Quiet study area with 150 seats • Wi-Fi & power outlets available',
              imageUrl:
                  'https://cdn.prod.website-files.com/604a97c70aee09eed25ce991/61897a35583a9b51db018d3e_MartinPublicSeating-97560-Importance-School-Library-blogbanner1.jpg',
            ),
            LibraryListItem(
              title: 'Children\'s Section',
              subtitle:
                  'Picture books, storytelling sessions, and interactive area',
              imageUrl:
                  'https://images.unsplash.com/photo-1516979187457-637abb4f9353?auto=format&fit=crop&w=1200&q=80',
            ),
            LibraryListItem(
              title: 'Research Journals',
              subtitle:
                  'Print & online journals across CS, Engineering, Sciences, Arts',
              imageUrl:
                  'https://images.unsplash.com/photo-1590608897129-79da98d15943?auto=format&fit=crop&w=1200&q=80',
            ),
            LibraryListItem(
              title: 'Book Lending',
              subtitle:
                  'Member lending: up to 6 books for 21 days • Renewals allowed',
              imageUrl:
                  'https://images.unsplash.com/photo-1512820790803-83ca734da794?auto=format&fit=crop&w=1200&q=80',
            ),
          ],
        ),
      ),
    );
  }
}

class LibraryListItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageUrl;

  const LibraryListItem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(color: Colors.grey, width: 0.5),
      ),
      elevation: 1,
      color: Colors.white,
      margin: const EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Container(
                color: Colors.grey[200],
                width: 120,
                height: 120,
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      color: Colors.grey[300],
                      child: const Center(
                        child: Icon(Icons.library_books, size: 40),
                      ),
                    );
                  },
                ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    softWrap: true,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    subtitle,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.info_outline),
                        label: const Text('Details'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 10),
                        ),
                      ),
                      const SizedBox(width: 8),
                      OutlinedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.location_on_outlined),
                        label: const Text('Location'),
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 10),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
