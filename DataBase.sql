-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июн 06 2023 г., 23:23
-- Версия сервера: 10.4.27-MariaDB
-- Версия PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `kursovaya`
--

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `News_numb` int(255) NOT NULL,
  `Title` text NOT NULL,
  `Description` text NOT NULL,
  `Date` date NOT NULL,
  `Link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`News_numb`, `Title`, `Description`, `Date`, `Link`) VALUES
(1, 'В системе ГАРАНТ размещены клинические рекомендации по гемофилии, болезням бартолиновой железы', 'Все КР собраны в тематической справке и для удобства систематизированы по классам МКБ-10.', '2023-06-01', 'https://www.garant.ru/news/1627650/'),
(2, 'С 1 марта 2024 года дезинфекция станет лицензируемым видом деятельности', 'Выдавать лицензии будет Роспотребнадзор.', '2023-06-01', 'https://www.garant.ru/news/1627647/'),
(3, 'Новые лимиты соцвычетов по НДФЛ применяются к доходам, полученным с 2024 года', 'Сообщается, что они будут применяться при подаче декларации по форме 3-НДФЛ за 2024 год в 2025 году, а также при получении вычетов у работодателя – в течение 2024 года.', '2023-06-01', 'https://www.garant.ru/news/1627645/'),
(4, 'С 1 июня в некоторых регионах льготники смогут оформить виртуальную социальную карту для оплаты проезда в общественном транспорте', 'Эксперимент продлится до 1 июля 2024 года.', '2023-06-01', 'https://www.garant.ru/news/1627639/'),
(5, 'Доказать связь между неправильной формулировкой основания увольнения и невозможностью трудоустройства должен работник', 'На это указал Восьмой КСОЮ.', '2023-06-01', 'https://www.garant.ru/news/1627638/'),
(6, 'Правительство РФ предложило установить одинаковый размер НДФЛ для резидентов и нерезидентов РФ, работающих дистанционно', 'В настоящее время размер налоговой ставки нерезидентов составляет 30%.', '2023-06-01', 'https://www.garant.ru/news/1627631/'),
(7, 'Срок действия Положения о госконтроле за соблюдением трудового законодательства продлен до конца 2025 года', 'Напомним, Положение о госконтроле за соблюдением трудового законодательства вступило в силу 23 июля 2021 года.', '2023-06-01', 'https://www.garant.ru/news/1627636/'),
(8, 'Как внутренний контроль может помочь взыскать ущерб', 'Эксперты компании &quot;Гарант&quot; рассмотрели еще два полезных дела.', '2023-06-01', 'https://www.garant.ru/news/1627627/'),
(9, 'За использование Viber, WhatsApp и Telegram для передачи финансовой информации будут штрафовать', 'Госдума в первом чтении одобрила законопроект о дополнении КоАП РФ новыми нормами.', '2023-06-01', 'https://www.garant.ru/news/1627619/'),
(10, '1 июня – последний день, когда ИП могут подать заявление на отсрочку уплаты взносов за 2021 год', 'Об этом напомнила ФНС России.', '2023-06-01', 'https://www.garant.ru/news/1627534/'),
(21, 'С 10 июня 2023 года регламент ФАС России по рассмотрению жалоб при проведении закупок по Закону № 44-ФЗ признан утратившим силу', 'Речь идет о регламенте, утвержденном приказом ФАС России от 19 ноября 2014 г. № 727/14.', '2023-06-02', 'https://www.garant.ru/news/1627844/'),
(22, 'Роспотребнадзор представил памятку о гепатитах для пациентов', 'В ней указано, кто входит в группу риска заражения, какими способами они передаются, а также как можно защититься от инфицирования.', '2023-06-02', 'https://www.garant.ru/news/1627843/'),
(23, 'В ВС РФ не удалось оспорить запрет на проведение УЗИ без направления врача', 'Пациентка пыталась признать недействительными ряд положений Правил проведения ультразвуковых исследований, утвержденных приказом Минздрава России от 8 июня 2020 г. № 557н, однако ВС РФ отказал в удовлетворении административного иска.', '2023-06-02', 'https://www.garant.ru/news/1627839/'),
(24, 'Установлены особенности проведения дистанционных медосмотров водителей', 'Они будут применяться с 1 сентября в течение 6 лет.', '2023-06-02', 'https://www.garant.ru/news/1627834/'),
(25, 'Утверждены параметры программы льготного кредитования МСП в новых регионах', 'Общий объем выдачи таких кредитов составит около 10 мдрд руб.', '2023-06-02', 'https://www.garant.ru/news/1627833/'),
(26, 'Включается ли время вынужденного прогула при признании увольнения незаконным, изменении даты и основания увольнения в стаж работы, дающий право на отпуск?', 'В судебной практике сложилось две противоположных позиции.', '2023-06-02', 'https://www.garant.ru/news/1627832/'),
(27, 'Вчера стартовал эксперимент по маркировке безалкогольных напитков и соков', 'Он будет проводиться до конца лета 2023 года.', '2023-06-02', 'https://www.garant.ru/news/1627787/'),
(28, 'Неприменение штрафных санкций к контрагенту – ущерб', 'По итогам проверки Казначейство России направило в адрес казенного учреждения предписание принять меры по направлению требований к контрагенту об уплате штрафов и пени.', '2023-06-02', 'https://www.garant.ru/news/1627799/'),
(29, 'Жители новых регионов смогут воспользоваться услугами центров занятости не по месту регистрации', 'Такие услуги доступны не только безработным, но и другим категориям граждан.', '2023-06-02', 'https://www.garant.ru/news/1627793/'),
(30, '9 шагов по уточнению входящих остатков на 1 января 2023 года и неожиданная корректировка резервов', 'Проведенная в апреле регистрация изменений в Инструкции № 157н не позволила скорректировать входящие остатки ранее II квартала 2023 года.', '2023-06-02', 'https://www.garant.ru/news/1627788/'),
(31, 'Минобороны России представило проект постановления Правительства РФ, устанавливающий порядок постановки на воинский учет без личной явки в военкомат', 'Проект подготовлен в рамках реализации положений Закона об электронных повестках.', '2023-06-05', 'https://www.garant.ru/news/1627997/'),
(32, 'Новый законопроект о реализации основных направлений налоговой политики: поправки по налогу на прибыль', 'Ранее мы уже рассмотрели основные планируемые поправки по НДФЛ и НДС.', '2023-06-05', 'https://www.garant.ru/news/1627983/'),
(33, 'Сооружение тамбура в межквартирном коридоре не может рассматриваться как уменьшение размера общего имущества МКД', 'Суд отказал в иске о демонтаже тамбурной перегородки и двери в межквартирном коридоре МКД, хотя решение о сооружении тамбура не было поддержано 100% собственников.', '2023-06-05', 'https://www.garant.ru/news/1627981/'),
(34, 'Гарант ЧекДок – ваш новый помощник в проверке актуальности норм, упоминаемых в документах', 'Для проверки необходимо загрузить в сервис документ и указать дату, с которой вы хотите проверить его актуальность.', '2023-06-05', 'https://www.garant.ru/news/1627975/'),
(35, 'С 1 сентября 2023 года – новые правила исчисления и взимания платы за негативное воздействие на окружающую среду', 'В частности, предусмотрена плата за размещение побочных продуктов животноводства и производства, а также вскрышных и вмещающих горных пород, признанных отходами.', '2023-06-05', 'https://www.garant.ru/news/1627974/'),
(36, 'Скорректированы требования при обращении с группами однородных отходов I–V классов опасности', 'Поправками, в частности, установлены обязанности для юрлиц и ИП, которые занимаются утилизацией отходов.', '2023-06-05', 'https://www.garant.ru/news/1627880/'),
(37, 'Подготовлен новый перечень должностных лиц Роструда, уполномоченных составлять протоколы об административных правонарушениях', 'Общественное обсуждение проекта приказа продлится до 6 июня 2023 года.', '2023-06-05', 'https://www.garant.ru/news/1627879/'),
(38, 'Сервис по приему заявлений о поступлении в колледж запущен на Едином портале госуслуг', 'Количество колледжей, куда можно подать заявление, не ограничено.', '2023-06-04', 'https://www.garant.ru/news/1627885/'),
(39, 'С 1 сентября начнут действовать нормы рабочего времени для водителей такси', 'Максимальное рабочее время составит не более 12 часов в день.', '2023-06-04', 'https://www.garant.ru/news/1627884/'),
(40, 'Опубликован обзор практики по делам об усыновлении детей иностранцами за 2022 год', 'Все дела об усыновлении были разрешены областными судами в пользу заявителей.', '2023-06-04', 'https://www.garant.ru/news/1627881/'),
(86, 'С 1 сентября 2023 года вводятся новые правила проведения некоторых видов медосмотров работников', 'Правительство РФ установило особенности медосмотров водителей, а также требования к медизделиям и медработникам.', '2023-06-05', 'https://www.garant.ru/news/1628120/'),
(87, 'Поставщикам больше не требуется предоставлять заключение Минпромторга России при передаче товара, включенного в приложение к Постановлению № 616', 'Соответствующие поправки вступили в силу 1 июня текущего года.', '2023-06-05', 'https://www.garant.ru/news/1628119/'),
(88, 'КС РФ разъяснил норму о сроке добровольного исполнения по исполнительному документу', 'Постановление КС РФ основано на ранее вынесенных правовых позициях суда.', '2023-06-05', 'https://www.garant.ru/news/1628117/'),
(89, 'Изменятся требования для комплектации укладок и наборов для скорой медицинской помощи', 'В список медизделий включили кровоостанавливающий жгут типа &quot;турникет-закрутка&quot; для остановки артериального кровотечения с фиксацией времени наложения.', '2023-06-05', 'https://www.garant.ru/news/1628112/'),
(90, 'Утверждены правила определения финансовой обеспеченности юрлица или ИП для участия в сделке по отчуждению отдельного производственного объекта', 'Они начнут действовать с 1 сентября 2023 года.', '2023-06-05', 'https://www.garant.ru/news/1628108/'),
(91, 'Определены особенности СОУТ на рабочих местах работников учреждений УИС', 'Установлено, что при проведении СОУТ обязательному исследованию подлежит напряженность трудового процесса по времени занятости на рабочих местах, где выполняются работы непосредственно с осужденными.', '2023-06-05', 'https://www.garant.ru/news/1628107/'),
(92, 'С 1 сентября 2023 года вводится новая номенклатура должностей медицинских и фармацевтических работников', 'В частности, в номенклатуре предусмотрены наименования должностей для случаев, когда ее занимает лицо другого пола.', '2023-06-05', 'https://www.garant.ru/news/1628106/'),
(93, 'Предлагается ввести сертификат на покупку товаров первой необходимости для новорожденных', 'Право на его получение может быть предоставлено малообеспеченным гражданам РФ.', '2023-06-05', 'https://www.garant.ru/news/1628105/'),
(94, 'Досрочное переизбрание совета директоров АО: разъяснения Банка России', 'Разъяснения даны в связи с выявленными Банком России в рамках осуществления контроля и надзора за соблюдением требований законодательства об акционерных обществах нарушениями порядка формирования совета директоров (наблюдательного совета) обществ.', '2023-06-05', 'https://www.garant.ru/news/1628103/'),
(95, 'Во втором и третьем чтениях принят законопроект, разрешающий подросткам устраиваться на работу без согласия опеки', 'Речь идет о леком труде, не причиняющем вреда здоровью, в свободное от получения образования время.', '2023-06-05', 'https://www.garant.ru/news/1628097/'),
(96, 'С 1 сентября 2023 года вводятся новые правила проведения некоторых видов медосмотров работников', 'Правительство РФ установило особенности медосмотров водителей, а также требования к медизделиям и медработникам.', '2023-06-05', 'https://www.garant.ru/news/1628120/'),
(97, 'Поставщикам больше не требуется предоставлять заключение Минпромторга России при передаче товара, включенного в приложение к Постановлению № 616', 'Соответствующие поправки вступили в силу 1 июня текущего года.', '2023-06-05', 'https://www.garant.ru/news/1628119/'),
(98, 'КС РФ разъяснил норму о сроке добровольного исполнения по исполнительному документу', 'Постановление КС РФ основано на ранее вынесенных правовых позициях суда.', '2023-06-05', 'https://www.garant.ru/news/1628117/'),
(99, 'Изменятся требования для комплектации укладок и наборов для скорой медицинской помощи', 'В список медизделий включили кровоостанавливающий жгут типа &quot;турникет-закрутка&quot; для остановки артериального кровотечения с фиксацией времени наложения.', '2023-06-05', 'https://www.garant.ru/news/1628112/'),
(100, 'Утверждены правила определения финансовой обеспеченности юрлица или ИП для участия в сделке по отчуждению отдельного производственного объекта', 'Они начнут действовать с 1 сентября 2023 года.', '2023-06-05', 'https://www.garant.ru/news/1628108/'),
(101, 'Определены особенности СОУТ на рабочих местах работников учреждений УИС', 'Установлено, что при проведении СОУТ обязательному исследованию подлежит напряженность трудового процесса по времени занятости на рабочих местах, где выполняются работы непосредственно с осужденными.', '2023-06-05', 'https://www.garant.ru/news/1628107/'),
(102, 'С 1 сентября 2023 года вводится новая номенклатура должностей медицинских и фармацевтических работников', 'В частности, в номенклатуре предусмотрены наименования должностей для случаев, когда ее занимает лицо другого пола.', '2023-06-05', 'https://www.garant.ru/news/1628106/'),
(103, 'Предлагается ввести сертификат на покупку товаров первой необходимости для новорожденных', 'Право на его получение может быть предоставлено малообеспеченным гражданам РФ.', '2023-06-05', 'https://www.garant.ru/news/1628105/'),
(104, 'Досрочное переизбрание совета директоров АО: разъяснения Банка России', 'Разъяснения даны в связи с выявленными Банком России в рамках осуществления контроля и надзора за соблюдением требований законодательства об акционерных обществах нарушениями порядка формирования совета директоров (наблюдательного совета) обществ.', '2023-06-05', 'https://www.garant.ru/news/1628103/'),
(105, 'Во втором и третьем чтениях принят законопроект, разрешающий подросткам устраиваться на работу без согласия опеки', 'Речь идет о леком труде, не причиняющем вреда здоровью, в свободное от получения образования время.', '2023-06-05', 'https://www.garant.ru/news/1628097/'),
(106, 'КС РФ разъяснил норму о сроке добровольного исполнения по исполнительному документу', 'Постановление КС РФ основано на ранее вынесенных правовых позициях суда.', '2023-06-05', 'https://www.garant.ru/news/1628117/'),
(107, 'КС РФ разъяснил норму о сроке добровольного исполнения по исполнительному документу', 'Постановление КС РФ основано на ранее вынесенных правовых позициях суда.', '2023-06-05', 'https://www.garant.ru/news/1628117/'),
(108, 'С 1 сентября 2023 года вводятся новые правила проведения некоторых видов медосмотров работников', 'Правительство РФ установило особенности медосмотров водителей, а также требования к медизделиям и медработникам.', '2023-06-05', 'https://www.garant.ru/news/1628120/'),
(109, 'Поставщикам больше не требуется предоставлять заключение Минпромторга России при передаче товара, включенного в приложение к Постановлению № 616', 'Соответствующие поправки вступили в силу 1 июня текущего года.', '2023-06-05', 'https://www.garant.ru/news/1628119/'),
(110, 'КС РФ разъяснил норму о сроке добровольного исполнения по исполнительному документу', 'Постановление КС РФ основано на ранее вынесенных правовых позициях суда.', '2023-06-05', 'https://www.garant.ru/news/1628117/'),
(111, 'Изменятся требования для комплектации укладок и наборов для скорой медицинской помощи', 'В список медизделий включили кровоостанавливающий жгут типа &quot;турникет-закрутка&quot; для остановки артериального кровотечения с фиксацией времени наложения.', '2023-06-05', 'https://www.garant.ru/news/1628112/'),
(112, 'Утверждены правила определения финансовой обеспеченности юрлица или ИП для участия в сделке по отчуждению отдельного производственного объекта', 'Они начнут действовать с 1 сентября 2023 года.', '2023-06-05', 'https://www.garant.ru/news/1628108/'),
(113, 'Определены особенности СОУТ на рабочих местах работников учреждений УИС', 'Установлено, что при проведении СОУТ обязательному исследованию подлежит напряженность трудового процесса по времени занятости на рабочих местах, где выполняются работы непосредственно с осужденными.', '2023-06-05', 'https://www.garant.ru/news/1628107/'),
(114, 'С 1 сентября 2023 года вводится новая номенклатура должностей медицинских и фармацевтических работников', 'В частности, в номенклатуре предусмотрены наименования должностей для случаев, когда ее занимает лицо другого пола.', '2023-06-05', 'https://www.garant.ru/news/1628106/'),
(115, 'Предлагается ввести сертификат на покупку товаров первой необходимости для новорожденных', 'Право на его получение может быть предоставлено малообеспеченным гражданам РФ.', '2023-06-05', 'https://www.garant.ru/news/1628105/'),
(116, 'Досрочное переизбрание совета директоров АО: разъяснения Банка России', 'Разъяснения даны в связи с выявленными Банком России в рамках осуществления контроля и надзора за соблюдением требований законодательства об акционерных обществах нарушениями порядка формирования совета директоров (наблюдательного совета) обществ.', '2023-06-05', 'https://www.garant.ru/news/1628103/'),
(117, 'Во втором и третьем чтениях принят законопроект, разрешающий подросткам устраиваться на работу без согласия опеки', 'Речь идет о леком труде, не причиняющем вреда здоровью, в свободное от получения образования время.', '2023-06-05', 'https://www.garant.ru/news/1628097/'),
(118, 'Минздрав России указал на недопустимость выпуска лекарств без вторичной упаковки', 'Производителям лекарств, которые ранее получили разрешение на их реализацию без индивидуальной пачки, необходимо предусмотреть внесение соответствующих изменений в регистрационные досье на данные препараты с целью включения вторичной упаковки.', '2023-06-06', 'https://www.garant.ru/news/1628125/'),
(119, 'Определены особенности применения на новых территориях законодательства о промбезопасности ОПО и безопасности гидротехнических сооружений', 'До 1 марта 2024 года можно проводить аттестацию по вопросам безопасности гидротехнических сооружений без применения Единого портала тестирования.', '2023-06-06', 'https://www.garant.ru/news/1628124/'),
(120, 'С 1 сентября 2023 года вводятся новые правила проведения некоторых видов медосмотров работников', 'Правительство РФ установило особенности медосмотров водителей, а также требования к медизделиям и медработникам.', '2023-06-05', 'https://www.garant.ru/news/1628120/'),
(121, 'Поставщикам больше не требуется предоставлять заключение Минпромторга России при передаче товара, включенного в приложение к Постановлению № 616', 'Соответствующие поправки вступили в силу 1 июня текущего года.', '2023-06-05', 'https://www.garant.ru/news/1628119/'),
(122, 'КС РФ разъяснил норму о сроке добровольного исполнения по исполнительному документу', 'Постановление КС РФ основано на ранее вынесенных правовых позициях суда.', '2023-06-05', 'https://www.garant.ru/news/1628117/'),
(123, 'Изменятся требования для комплектации укладок и наборов для скорой медицинской помощи', 'В список медизделий включили кровоостанавливающий жгут типа &quot;турникет-закрутка&quot; для остановки артериального кровотечения с фиксацией времени наложения.', '2023-06-05', 'https://www.garant.ru/news/1628112/'),
(124, 'Утверждены правила определения финансовой обеспеченности юрлица или ИП для участия в сделке по отчуждению отдельного производственного объекта', 'Они начнут действовать с 1 сентября 2023 года.', '2023-06-05', 'https://www.garant.ru/news/1628108/'),
(125, 'Определены особенности СОУТ на рабочих местах работников учреждений УИС', 'Установлено, что при проведении СОУТ обязательному исследованию подлежит напряженность трудового процесса по времени занятости на рабочих местах, где выполняются работы непосредственно с осужденными.', '2023-06-05', 'https://www.garant.ru/news/1628107/'),
(126, 'С 1 сентября 2023 года вводится новая номенклатура должностей медицинских и фармацевтических работников', 'В частности, в номенклатуре предусмотрены наименования должностей для случаев, когда ее занимает лицо другого пола.', '2023-06-05', 'https://www.garant.ru/news/1628106/'),
(127, 'Предлагается ввести сертификат на покупку товаров первой необходимости для новорожденных', 'Право на его получение может быть предоставлено малообеспеченным гражданам РФ.', '2023-06-05', 'https://www.garant.ru/news/1628105/');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`News_numb`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `News_numb` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
