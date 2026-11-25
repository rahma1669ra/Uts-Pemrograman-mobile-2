class Book {
  final String id;
  final String title;
  final String author;
  final String category;
  final double rating;
  final String coverUrl;
  final String synopsis;
  final int pages;
  double readProgress;
  bool isFavorite;

  Book({
    required this.id,
    required this.title,
    required this.author,
    required this.category,
    required this.rating,
    required this.coverUrl,
    required this.synopsis,
    required this.pages,
    this.readProgress = 0.0,
    this.isFavorite = false,
  });
}

final List<Book> dummyBooks = [
  Book(
    id: '1',
    title: 'Atomic Habits',
    author: 'James Clear',
    category: 'Pengembangan Diri',
    rating: 4.9,
    coverUrl: 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1655988385i/40121378.jpg',
    synopsis: 'Perubahan kecil yang memberikan hasil luar biasa. Buku ini membahas bagaimana kebiasaan kecil yang dilakukan secara konsisten setiap hari dapat mengubah hidup secara signifikan.',
    pages: 320,
    readProgress: 0.65,
    isFavorite: true,
  ),
  Book(
    id: '2',
    title: 'Clean Code',
    author: 'Robert C. Martin',
    category: 'Teknologi',
    rating: 4.8,
    coverUrl: 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1436202607i/3735293.jpg',
    synopsis: 'Panduan praktis bagi programmer untuk menulis kode yang bersih, mudah dibaca, terstruktur, dan mudah dipelihara oleh tim pengembang perangkat lunak.',
    pages: 464,
    readProgress: 0.30,
    isFavorite: false,
  ),
  Book(
    id: '3',
    title: 'Filosofi Teras',
    author: 'Henry Manampiring',
    category: 'Pengembangan Diri',
    rating: 4.8,
    coverUrl: 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1548033656i/42861019.jpg',
    synopsis: 'Pengantar filsafat Stoa kuno yang dikemas secara ringan dan relevan untuk membantu generasi masa kini mengatasi emosi negatif serta kecemasan berlebihan.',
    pages: 346,
    readProgress: 0.85,
    isFavorite: true,
  ),
  Book(
    id: '4',
    title: 'Laskar Pelangi',
    author: 'Andrea Hirata',
    category: 'Fiksi',
    rating: 4.9,
    coverUrl: 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1489732961i/1362193.jpg',
    synopsis: 'Kisah inspiratif sepuluh anak dari keluarga kurang mampu di Pulau Belitung yang berjuang meraih mimpi melalui pendidikan di tengah keterbatasan.',
    pages: 529,
    readProgress: 0.15,
    isFavorite: false,
  ),
  Book(
    id: '5',
    title: 'The Pragmatic Programmer',
    author: 'Andrew Hunt & David Thomas',
    category: 'Teknologi',
    rating: 4.7,
    coverUrl: 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1401432508i/4099.jpg',
    synopsis: 'Kumpulan prinsip dan praktik terbaik dalam pengembangan perangkat lunak modern, mulai dari tanggung jawab pribadi hingga arsitektur kode yang fleksibel.',
    pages: 352,
    readProgress: 0.0,
    isFavorite: false,
  ),
  Book(
    id: '6',
    title: 'Bumi Manusia',
    author: 'Pramoedya Ananta Toer',
    category: 'Fiksi',
    rating: 4.9,
    coverUrl: 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1565658920i/1398034.jpg',
    synopsis: 'Roman sejarah yang mengisahkan perjalanan Minke, seorang pribumi terpelajar di masa kolonial Hindia Belanda yang memperjuangkan martabat dan keadilan.',
    pages: 535,
    readProgress: 0.45,
    isFavorite: true,
  ),
];