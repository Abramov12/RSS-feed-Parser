<?php

function rssSource($search)
{
    $rssSource = [
        'Garant' => 'http://rss.garant.ru/categories/news/',
    ];

    $temp = [];
    foreach ($rssSource as $key => $value) {
        $xml = simplexml_load_file($value);
        $row = 1;
        $limit = 20;
        if (is_array($xml->channel->item) || is_object($xml->channel->item)) {
            foreach ($xml->channel->item as $data) {
                if ($row <= $limit) {
                    if (!empty($search)) {
                        if (stristr($data->title, $search) || stristr($data->description, $search)) {
                            $temp[] = array(
                                'title' => $data->title,
                                'description' => preg_replace("/<img[^>]+\>/i", "", $data->description),
                                'date' => $data->pubDate,
                                'link' => $data->link
                            );
                        }
                    } else {
                        $temp[] = array(
                            'source' => $key,
                            'title' => $data->title,
                            'description' => preg_replace("/<img[^>]+\>/i", "", $data->description),
                            'date' => $data->pubDate,
                            'link' => $data->link
                        );
                    }
                }
                $row++;
            }
        }
    }
    return $temp;
}


$search_param = isset($_GET['Найти']) ? $_GET['Найти']:'';

$raw_rss = rssSource($search_param);

// print_r($raw_rss);
// exit();
echo "<!DOCTYPE html>
<html lang='ru'>
<head>
    <meta charset='UTF-8'>
    <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css' integrity='sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2' crossorigin='anonymous'>
</head>
<body>
    <div class='w-100 row justify-content-center'>
        <div class='col-8 mb-5'>
            <h2 class='my-4 text-info text-center'></h2>
            <div class='mb-3'>
                <form method='GET'>
                    <div class='input-group mb-3'>
                        <input type='text' class='form-control' placeholder='Поиск' name='Найти' aria-describedby='search-button' value='".$search_param."'>
                        <div class='input-group-append'>
                            <button class='btn btn-outline-secondary' type='submit' id='search-button'>Найти</button>
                        </div>
                    </div>
                </form>
            </div>";
			$conn = new mysqli("localhost", "root", "", "kursovaya");
			if($conn->connect_error){
			die("Ошибка: " . $conn->connect_error);
}
            foreach ($raw_rss as $item) {
                // print_r($item);
				$title=$item['title'];
				$description=$item['description'];
				$date=date('Y-m-d', strtotime(substr($item['date'],4,-14)));
				$link=$item['link'];
				$sql="INSERT INTO news(Title,Description,Date,Link) VALUES
				('$title','$description','$date','$link')";
				if($conn->query($sql)){
				
				} else{
					echo "Ошибка: " . $conn->error;
				}
				
                echo "<div class='card'>
                    <div class='card-body'>
                        <h5 >".substr($item['date'],4,-14)."</h5>
                        <h5 ><a href='".$item['link']."' target='_blank'>".$item['title']."</a></h5>
                        ".$item['description']."
                    </div>
                </div>";
            }
			$conn->close();
        echo "</div>
        </div>
    </body>
</html>";