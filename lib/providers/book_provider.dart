import 'package:flutter/material.dart';
import '../models/book_model.dart';

class BookProvider extends ChangeNotifier {
  final List<Book> _books = dummyBooks;

  String _searchQuery = '';
  String _selectedCategory = 'Semua';
  late Book _currentReadingBook;

  BookProvider() {
    // Buku pertama yang tampil di banner atas saat aplikasi dibuka
    _currentReadingBook = _books.first;
  }

  // Daftar kategori untuk filter horizontal
  final List<String> categories = [
    'Semua',
    'Favorit',
    'Pengembangan Diri',
    'Teknologi',
    'Fiksi',
  ];

  String get searchQuery => _searchQuery;
  String get selectedCategory => _selectedCategory;
  Book get currentReadingBook => _currentReadingBook;

  // Mengembalikan daftar buku yang sudah difilter berdasarkan kategori & pencarian
  List<Book> get filteredBooks {
    return _books.where((book) {
      final matchesSearch = book.title.toLowerCase().contains(_searchQuery.toLowerCase()) ||
          book.author.toLowerCase().contains(_searchQuery.toLowerCase());

      if (_selectedCategory == 'Semua') {
        return matchesSearch;
      } else if (_selectedCategory == 'Favorit') {
        return matchesSearch && book.isFavorite;
      } else {
        return matchesSearch && book.category == _selectedCategory;
      }
    }).toList();
  }

  // Mengubah kata kunci pencarian
  void setSearchQuery(String query) {
    _searchQuery = query;
    notifyListeners();
  }

  // Mengubah kategori aktif
  void setCategory(String category) {
    _selectedCategory = category;
    notifyListeners();
  }

  // Menambah atau menghapus status favorit buku
  void toggleFavorite(String bookId) {
    final index = _books.indexWhere((b) => b.id == bookId);
    if (index != -1) {
      _books[index].isFavorite = !_books[index].isFavorite;
      notifyListeners();
    }
  }

  // Mengganti buku yang tampil di banner "Lanjutkan Membaca"
  void setCurrentReadingBook(Book book) {
    _currentReadingBook = book;
    if (_currentReadingBook.readProgress == 0.0) {
      _currentReadingBook.readProgress = 0.10; // Mulai progres 10% saat baru dibaca
    }
    notifyListeners();
  }
}