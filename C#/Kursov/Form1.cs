using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Common;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Windows.Input;
using Google.Protobuf.Reflection;
using Google.Protobuf.WellKnownTypes;
using MySql.Data.MySqlClient;
using Org.BouncyCastle.Utilities.Collections;

namespace Kursov
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();

        }
        string TitleQuery = ("select Title,Description,Date,Link from news");
        static string Connect = "Database=kursovaya;Data Source=localhost;User Id=root;Password=''";
        static string[] NewsArr = new string[2500];
        static MySqlConnection myConnection = new MySqlConnection(Connect);


        public void Form1_Load(object sender, EventArgs e)
        {

            string q1 = "ALTER IGNORE TABLE `news` ADD UNIQUE INDEX(Title);";
            MySqlCommand DeleteDuplicates = new MySqlCommand(q1, myConnection);
            myConnection.Open();
            MySqlCommand News = new MySqlCommand(TitleQuery, myConnection);
            MySqlDataReader MyDataReaderMain;
            MyDataReaderMain = News.ExecuteReader();
            int k = 0;

            while (MyDataReaderMain.Read())
            {
                NewsArr[k] = MyDataReaderMain.GetString(0);
                k++;
                NewsArr[k] = MyDataReaderMain.GetString(1);
                k++;
                NewsArr[k] = MyDataReaderMain.GetString(2);
                k++;
                NewsArr[k] = MyDataReaderMain.GetString(3);
                k++;
            }
            myConnection.Close();

        }

        private void ConfirmButton_Click(object sender, EventArgs e)
        {
            string query = ("select Title,Description,Date,Link from news where Date between '" + FromDate.Text + "' and '" + ToDate.Text + "'");
            int k = 0;
            myConnection.Open();
            MySqlCommand News = new MySqlCommand(query, myConnection);
            MySqlDataReader MyDataReader;
            MyDataReader = News.ExecuteReader();
            Array.Clear(NewsArr, 0, NewsArr.Length);
            string[] banWordsArr = banWords.Text.Split(',');
            bool Contains(string i, string[] Array)
            {
                if (Array.Length == 1 && Array[0]=="") return false;
                foreach (string a in Array)
                {
                    if (i.Contains(a)) return true;
                }
                return false;
            }
            while (MyDataReader.Read())
            {
                if ((MyDataReader.GetString(0).Contains(SearchTextBox.Text) || MyDataReader.GetString(1).Contains(SearchTextBox.Text)) &&
                    (Contains(MyDataReader.GetString(0), banWordsArr) == false && Contains(MyDataReader.GetString(1), banWordsArr) == false))
                {
                    NewsArr[k] = MyDataReader.GetString(0);
                    k++;
                    NewsArr[k] = MyDataReader.GetString(1);
                    k++;
                    NewsArr[k] = MyDataReader.GetString(2);
                    k++;
                    NewsArr[k] = MyDataReader.GetString(3);
                    k++;
                }


            }
            myConnection.Close();
        }

        private void NextButton_Click(object sender, EventArgs e)
        {
            if (NewsArr[Step] != null)
            {
                TitleBox.Text = NewsArr[Step];
                Step++;
                DescrBox.Text = NewsArr[Step];
                Step++;
                DateBox.Text = NewsArr[Step].Substring(0, 10);
                Step++;
                LinkBox.Text = NewsArr[Step];
                Step++;
            }
            else
            {   if (Step < 4 ) 
                {
                    TitleBox.Text = "Нет новостей по указанным фильтрам";
                }
                else if (NewsArr[Step-4]!=null)
                {
                    Step -= 4;
                    TitleBox.Text = "Это последняя новость! \n ------------------------------------------------" + NewsArr[Step];
                    Step++;
                    DescrBox.Text = NewsArr[Step];
                    Step++;
                    DateBox.Text = NewsArr[Step].Substring(0, 10);
                    Step++;
                    LinkBox.Text = NewsArr[Step];
                    Step++;
                }
               
            }


        }

        static int Step = 0;
        private void button1_Click(object sender, EventArgs e)
        {
            myConnection.Open();
            MySqlCommand News = new MySqlCommand(TitleQuery, myConnection);
            MySqlDataReader MyDataReader2;
            MyDataReader2 = News.ExecuteReader();
            TitleBox.Text = "";
            DescrBox.Text = "";
            DateBox.Text = "";
            LinkBox.Text = "";
            while (MyDataReader2.Read())
            {
                TitleBox.Text += MyDataReader2.GetString(0) + '\n' + "--------------------------------------------";
                DescrBox.Text += MyDataReader2.GetString(1) + '\n' + "--------------------------------------------";
                DateBox.Text += MyDataReader2.GetString(2).Substring(0, 10) + '\n' + "--------------------------------------------";
                LinkBox.Text += MyDataReader2.GetString(3) + '\n' + " -------------------------------------------- ";
            }
            myConnection.Close();


        }

        private void PreviousNews_Click(object sender, EventArgs e)
        {
            if (Step > 7)
            {
                Step -= 8;
                if (NewsArr[Step] != null)
                {
                    TitleBox.Text = NewsArr[Step];
                    Step++;
                    DescrBox.Text = NewsArr[Step];
                    Step++;
                    DateBox.Text = NewsArr[Step].Substring(0, 10);
                    Step++;
                    LinkBox.Text = NewsArr[Step];
                    Step++;
                }
                
            }
            else if(Step>=4)
            {
                Step -= 4;
                TitleBox.Text = "Это последняя новость! \n ------------------------------------------------"+ NewsArr[Step];
                Step++;
                DescrBox.Text = NewsArr[Step];
                Step++;
                DateBox.Text = NewsArr[Step].Substring(0, 10);
                Step++;
                LinkBox.Text = NewsArr[Step];
                Step++;
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            SearchTextBox.Text = "";
            banWords.Text = "";
            FromDate.Value= DateTime.Now;
            ToDate.Value= DateTime.Now;
            Array.Clear(NewsArr, 0, NewsArr.Length);
            myConnection.Open();
            MySqlCommand News = new MySqlCommand(TitleQuery, myConnection);
            MySqlDataReader MyDataReaderMain;
            MyDataReaderMain = News.ExecuteReader();
            int k = 0;

            while (MyDataReaderMain.Read())
            {
                NewsArr[k] = MyDataReaderMain.GetString(0);
                k++;
                NewsArr[k] = MyDataReaderMain.GetString(1);
                k++;
                NewsArr[k] = MyDataReaderMain.GetString(2);
                k++;
                NewsArr[k] = MyDataReaderMain.GetString(3);
                k++;
            }
            myConnection.Close();
        }
    }
}
