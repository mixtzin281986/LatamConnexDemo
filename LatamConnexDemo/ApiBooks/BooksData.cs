using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity.Core.Objects;

namespace LatamConnexDemo.ApiBooks
{
    public class BooksData
    {
        private BooksEntities booksEntities;

        public BooksData()
        {
            booksEntities = new BooksEntities();
        }
        public ObjectResult GetAllBooks()
        {
            return booksEntities.spGetAllBooks();
        }

        public ObjectResult GetBooksByAuthor(decimal dIDAuthor)
        {
            return booksEntities.spGetBooksByAuthor(dIDAuthor);
        }

        public ObjectResult GetBooksByCategory(decimal dIDCategory)
        {
            return booksEntities.spGetBooksByCategory(dIDCategory);
        }
    }
}
