package com.kvatronix.service;


import com.kvatronix.model.Book;

import java.util.List;

public interface BookService {
    void createBook(Book book);

    void deleteBook(int bookId);

    void updateBook(Book book);

    List<Book> getAllBooks();

    Book getBook(int bookId);

    List<Book> searhBooks(String title);

}
