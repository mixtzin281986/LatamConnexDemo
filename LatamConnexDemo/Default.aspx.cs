using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Configuration;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using Telerik.Web.UI;
using LatamConnexDemo.ApiBooks;

public partial class Default : System.Web.UI.Page 
{
    private BooksData booksData; 
    protected void Page_Load(object sender, EventArgs e)
    {
        booksData = new BooksData();
        if (!Page.IsPostBack)
        {
            LoadGrid();
        }
    }

    private void LoadGrid()
    {

        gridBooks.DataSource = booksData.GetAllBooks();
        gridBooks.DataBind();
    }

    protected void gridBooks_NeedDataSource(object sender, GridNeedDataSourceEventArgs e)
    {
        gridBooks.DataSource = booksData.GetAllBooks();
    }

}
