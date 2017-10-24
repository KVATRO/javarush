package com.kvatronix.dao;

import com.kvatronix.model.Book;

import java.util.List;

public interface BookDAO {

    void createBook(Book book);

    void deleteBook(int bookId);

    void updateBook(Book book);

    Book getBook(int bookId);

    List<Book> getAllBooks();
}
