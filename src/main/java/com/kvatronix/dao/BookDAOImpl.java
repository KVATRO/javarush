package com.kvatronix.dao;

import com.kvatronix.model.Book;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class BookDAOImpl implements BookDAO {


    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void createBook(Book book) {
        sessionFactory.getCurrentSession().persist(book);
    }

    @Override
    public void deleteBook(int bookId) {
        Book book = (Book) sessionFactory.getCurrentSession().load(Book.class, bookId);
        if (null != book) {
            this.sessionFactory.getCurrentSession().delete(book);
        }
    }

    @Override
    public Book getBook(int bookId) {
        return (Book) sessionFactory.getCurrentSession().get(Book.class, bookId);
    }

    @Override
    public void updateBook(Book book) {
        sessionFactory.getCurrentSession().update(book);
    }

    @Override
    public List<Book> getAllBooks() {
        return sessionFactory.getCurrentSession().createQuery("from Book").list();
    }

}
