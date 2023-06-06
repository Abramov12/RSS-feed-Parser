namespace Kursov
{
    partial class Form1
    {
        /// <summary>
        /// Обязательная переменная конструктора.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Освободить все используемые ресурсы.
        /// </summary>
        /// <param name="disposing">истинно, если управляемый ресурс должен быть удален; иначе ложно.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Код, автоматически созданный конструктором форм Windows

        /// <summary>
        /// Требуемый метод для поддержки конструктора — не изменяйте 
        /// содержимое этого метода с помощью редактора кода.
        /// </summary>
        private void InitializeComponent()
        {
            this.NextButton = new System.Windows.Forms.Button();
            this.TitleBox = new System.Windows.Forms.RichTextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.DescrBox = new System.Windows.Forms.RichTextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.DateBox = new System.Windows.Forms.RichTextBox();
            this.LinkBox = new System.Windows.Forms.RichTextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.ToDate = new System.Windows.Forms.DateTimePicker();
            this.FromDate = new System.Windows.Forms.DateTimePicker();
            this.label5 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.SearchTextBox = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.label9 = new System.Windows.Forms.Label();
            this.banWords = new System.Windows.Forms.TextBox();
            this.ConfirmButton = new System.Windows.Forms.Button();
            this.button1 = new System.Windows.Forms.Button();
            this.PreviousNews = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // NextButton
            // 
            this.NextButton.BackColor = System.Drawing.SystemColors.InactiveCaption;
            this.NextButton.Location = new System.Drawing.Point(171, 317);
            this.NextButton.Name = "NextButton";
            this.NextButton.Size = new System.Drawing.Size(100, 55);
            this.NextButton.TabIndex = 0;
            this.NextButton.Text = "Next";
            this.NextButton.UseVisualStyleBackColor = false;
            this.NextButton.Click += new System.EventHandler(this.NextButton_Click);
            // 
            // TitleBox
            // 
            this.TitleBox.BackColor = System.Drawing.SystemColors.InactiveCaption;
            this.TitleBox.Location = new System.Drawing.Point(57, 49);
            this.TitleBox.Name = "TitleBox";
            this.TitleBox.Size = new System.Drawing.Size(210, 143);
            this.TitleBox.TabIndex = 1;
            this.TitleBox.Text = "";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Modern No. 20", 13.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(127, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(53, 24);
            this.label1.TabIndex = 2;
            this.label1.Text = "Title";
            // 
            // DescrBox
            // 
            this.DescrBox.BackColor = System.Drawing.SystemColors.InactiveCaption;
            this.DescrBox.Location = new System.Drawing.Point(313, 49);
            this.DescrBox.Name = "DescrBox";
            this.DescrBox.Size = new System.Drawing.Size(210, 143);
            this.DescrBox.TabIndex = 3;
            this.DescrBox.Text = "";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Modern No. 20", 13.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(352, 9);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(115, 24);
            this.label2.TabIndex = 4;
            this.label2.Text = "Description";
            // 
            // DateBox
            // 
            this.DateBox.BackColor = System.Drawing.SystemColors.InactiveCaption;
            this.DateBox.Location = new System.Drawing.Point(57, 239);
            this.DateBox.Name = "DateBox";
            this.DateBox.Size = new System.Drawing.Size(210, 44);
            this.DateBox.TabIndex = 5;
            this.DateBox.Text = "";
            // 
            // LinkBox
            // 
            this.LinkBox.BackColor = System.Drawing.SystemColors.InactiveCaption;
            this.LinkBox.Location = new System.Drawing.Point(313, 239);
            this.LinkBox.Name = "LinkBox";
            this.LinkBox.Size = new System.Drawing.Size(210, 44);
            this.LinkBox.TabIndex = 6;
            this.LinkBox.Text = "";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Modern No. 20", 13.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(128, 212);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(52, 24);
            this.label3.TabIndex = 7;
            this.label3.Text = "Date";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Modern No. 20", 13.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(378, 212);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(56, 24);
            this.label4.TabIndex = 8;
            this.label4.Text = "Link";
            // 
            // ToDate
            // 
            this.ToDate.CalendarMonthBackground = System.Drawing.SystemColors.InactiveCaption;
            this.ToDate.CustomFormat = "yyyy-MM-dd";
            this.ToDate.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.ToDate.Location = new System.Drawing.Point(942, 84);
            this.ToDate.Name = "ToDate";
            this.ToDate.Size = new System.Drawing.Size(200, 22);
            this.ToDate.TabIndex = 9;
            this.ToDate.Value = new System.DateTime(2023, 6, 9, 0, 0, 0, 0);
            // 
            // FromDate
            // 
            this.FromDate.CalendarMonthBackground = System.Drawing.SystemColors.InactiveCaption;
            this.FromDate.CustomFormat = "yyyy-MM-dd";
            this.FromDate.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.FromDate.Location = new System.Drawing.Point(633, 84);
            this.FromDate.Name = "FromDate";
            this.FromDate.Size = new System.Drawing.Size(200, 22);
            this.FromDate.TabIndex = 10;
            this.FromDate.Value = new System.DateTime(2023, 6, 5, 0, 0, 0, 0);
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Modern No. 20", 15.2F);
            this.label5.Location = new System.Drawing.Point(864, 21);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(81, 27);
            this.label5.TabIndex = 11;
            this.label5.Text = "Filters";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Modern No. 20", 13.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.Location = new System.Drawing.Point(702, 49);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(60, 24);
            this.label6.TabIndex = 12;
            this.label6.Text = "From";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("Modern No. 20", 13.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label7.Location = new System.Drawing.Point(1027, 49);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(33, 24);
            this.label7.TabIndex = 13;
            this.label7.Text = "To";
            // 
            // SearchTextBox
            // 
            this.SearchTextBox.BackColor = System.Drawing.SystemColors.InactiveCaption;
            this.SearchTextBox.Location = new System.Drawing.Point(633, 170);
            this.SearchTextBox.Name = "SearchTextBox";
            this.SearchTextBox.Size = new System.Drawing.Size(509, 22);
            this.SearchTextBox.TabIndex = 14;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Font = new System.Drawing.Font("Modern No. 20", 13.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label8.Location = new System.Drawing.Point(865, 132);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(71, 24);
            this.label8.TabIndex = 15;
            this.label8.Text = "Search";
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Font = new System.Drawing.Font("Modern No. 20", 13.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label9.Location = new System.Drawing.Point(851, 226);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(105, 24);
            this.label9.TabIndex = 16;
            this.label9.Text = "Ban words";
            // 
            // banWords
            // 
            this.banWords.BackColor = System.Drawing.SystemColors.InactiveCaption;
            this.banWords.Location = new System.Drawing.Point(633, 272);
            this.banWords.Name = "banWords";
            this.banWords.Size = new System.Drawing.Size(509, 22);
            this.banWords.TabIndex = 17;
            // 
            // ConfirmButton
            // 
            this.ConfirmButton.BackColor = System.Drawing.SystemColors.InactiveCaption;
            this.ConfirmButton.Location = new System.Drawing.Point(633, 317);
            this.ConfirmButton.Name = "ConfirmButton";
            this.ConfirmButton.Size = new System.Drawing.Size(217, 55);
            this.ConfirmButton.TabIndex = 18;
            this.ConfirmButton.Text = "Confirm Filters";
            this.ConfirmButton.UseVisualStyleBackColor = false;
            this.ConfirmButton.Click += new System.EventHandler(this.ConfirmButton_Click);
            // 
            // button1
            // 
            this.button1.BackColor = System.Drawing.SystemColors.InactiveCaption;
            this.button1.Location = new System.Drawing.Point(313, 317);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(210, 55);
            this.button1.TabIndex = 19;
            this.button1.Text = "GetAllNews";
            this.button1.UseVisualStyleBackColor = false;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // PreviousNews
            // 
            this.PreviousNews.BackColor = System.Drawing.SystemColors.InactiveCaption;
            this.PreviousNews.Location = new System.Drawing.Point(57, 317);
            this.PreviousNews.Name = "PreviousNews";
            this.PreviousNews.Size = new System.Drawing.Size(100, 55);
            this.PreviousNews.TabIndex = 20;
            this.PreviousNews.Text = "Previous";
            this.PreviousNews.UseVisualStyleBackColor = false;
            this.PreviousNews.Click += new System.EventHandler(this.PreviousNews_Click);
            // 
            // button2
            // 
            this.button2.BackColor = System.Drawing.SystemColors.InactiveCaption;
            this.button2.Location = new System.Drawing.Point(955, 317);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(187, 55);
            this.button2.TabIndex = 21;
            this.button2.Text = "Reset Filters";
            this.button2.UseVisualStyleBackColor = false;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.GradientActiveCaption;
            this.ClientSize = new System.Drawing.Size(1267, 467);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.PreviousNews);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.ConfirmButton);
            this.Controls.Add(this.banWords);
            this.Controls.Add(this.label9);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.SearchTextBox);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.FromDate);
            this.Controls.Add(this.ToDate);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.LinkBox);
            this.Controls.Add(this.DateBox);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.DescrBox);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.TitleBox);
            this.Controls.Add(this.NextButton);
            this.Name = "Form1";
            this.Text = "Form1";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button NextButton;
        private System.Windows.Forms.RichTextBox TitleBox;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.RichTextBox DescrBox;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.RichTextBox DateBox;
        private System.Windows.Forms.RichTextBox LinkBox;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.DateTimePicker ToDate;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.TextBox SearchTextBox;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.TextBox banWords;
        private System.Windows.Forms.Button ConfirmButton;
        private System.Windows.Forms.Button button1;
        public System.Windows.Forms.DateTimePicker FromDate;
        private System.Windows.Forms.Button PreviousNews;
        private System.Windows.Forms.Button button2;
    }
}

