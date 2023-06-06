# RSS-feed Parser
 This is an RSS parser application that uses technologies such as PHP, MySQL, and C#. A PHP script creates a truncated version of the feed on the local site, parses news from the XML page, and inserts it into the database. The client-side written in C# accesses the database, allowing users to view news in a convenient format and use filters. The client form is written using WinForms.
 
localhost-Page:

![изображение](https://github.com/Abramov12/RSS-feed-Parser/assets/90068023/a4c37d3e-b6cf-43f4-9a04-a9f573af654d)

Client form screen:

![изображение](https://github.com/Abramov12/RSS-feed-Parser/assets/90068023/9270864f-0e82-44c5-aa36-9c2c5dfc6af7)

User guide:

The form consists of several information blocks (Title, Description, Date, Link). The client program allows viewing them in two ways. 
The first way is to view one piece of news at a time. To do this, use the “Next” button. The “Previous” button is also provided for viewing the previous news in this mode. 
The second way is to view all news at once. To do this, click the “GetAllNews” button. All news will then be displayed at once, without taking into account any filters.
The program also has filters, such as selecting a date range, searching for news by a query, and filtering prohibited words. After selecting the filters, click the “Confirm Filters” button and view the news. There is also a “Reset Filters” button to reset the filters.
