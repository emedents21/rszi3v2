using System;
using System.Collections.Generic;
using System.Web.UI.WebControls;

namespace rszi3v2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        private List<User> userList;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                userList = new List<User>();
                UserGridView.DataSource = userList;
                UserGridView.DataBind();
            }
            else
            {
                userList = (List<User>)ViewState["UserList"];
            }
        }

        protected void AddUserButton_Click(object sender, EventArgs e)
        {
            string name = NameInput.Text;
            string surname = SurnameInput.Text;

            if (userList == null)
            {
                userList = new List<User>();
            }

            userList.Add(new User { Name = name, Surname = surname });

            UserGridView.DataSource = userList;
            UserGridView.DataBind();

            ViewState["UserList"] = userList;

            NameInput.Text = "";
            SurnameInput.Text = "";
        }

        protected void SearchButton_Click(object sender, EventArgs e)
        {
            string searchTerm = SearchInput.Text.ToLower(); 

            // Перевіряємо кожен рядок у GridView на відповідність терміну пошуку та відображаємо/приховуємо рядки відповідно
            foreach (GridViewRow row in UserGridView.Rows)
            {
                string name = row.Cells[0].Text.ToLower(); 

                // Порівнюємо ім'я користувача з терміном пошуку
                if (name.Contains(searchTerm))
                {
                    row.Visible = true;
                }
                else
                {
                    row.Visible = false;
                }
            }
        }

    }
    [Serializable]
    public class User
    {
        public string Name { get; set; }
        public string Surname { get; set; }
    }
}
