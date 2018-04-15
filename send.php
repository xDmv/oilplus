<?php
// ваш ключ
$siteKey = "";
// ваш секретный ключ
$secret = "";

// пустой ответ
$response = null;

require_once "recaptchalib.php";
// проверка секретного ключа
$reCaptcha = new ReCaptcha($secret);

$log =="";
$error="no"; //флаг наличия ошибки
if ($_POST["g-recaptcha-response"]) {
//	print_r("send in++ ".$_POST["g-recaptcha-response"]);
	if(!$_POST['fio']|| strlen($_POST['fio'])>25 || strlen($_POST['fio'])<3) {
	$log="<li>Неправильно заполнено поле \"Ваше имя\" (3-25 символов)!</li>"; $error="yes"; }

	//Проверка правильность мобильного
	if(!$_POST['tel']|| strlen($_POST['tel'])<=9 ) {
	$log=$log."<li>Неправильно заполнено поле \"Мобильный\" (10 символов формат: 0ХХ-ХХХ-ХХ-ХХ)</li>"; $error="yes"; }

	if($error=="no"){

			$fio = addslashes($_POST['fio']);
			$fio = htmlspecialchars($fio);
			$fio = stripslashes($fio);
			$fio = trim($fio);

			$posTel = $_POST['tel'];
			$posTel = addslashes($posTel);
			$posTel = htmlspecialchars($posTel);
			$posTel = stripslashes($posTel);
			$posTel = trim($posTel);

			$vinnum = addslashes($_POST['vinnum']);
			$vinnum = htmlspecialchars($vinnum);
			$vinnum = stripslashes($vinnum);
			$vinnum = trim($vinnum);

			$proizvoditel = addslashes($_POST['proizvoditel']);
			$proizvoditel = htmlspecialchars($proizvoditel);
			$proizvoditel = stripslashes($proizvoditel);
			$proizvoditel = trim($proizvoditel);

			$model = addslashes($_POST['model']);
			$model = htmlspecialchars($model);
			$model = stripslashes($model);
			$model = trim($model);

			$dataproiz = addslashes($_POST['dataproiz']);
			$dataproiz = htmlspecialchars($dataproiz);
			$dataproiz = stripslashes($dataproiz);
			$dataproiz = trim($dataproiz);

			$dvigatel = addslashes($_POST['dvigatel']);
			$dvigatel = htmlspecialchars($dvigatel);
			$dvigatel = stripslashes($dvigatel);
			$dvigatel = trim($dvigatel);

			$namedetal = addslashes($_POST['namedetal']);
			$namedetal = htmlspecialchars($namedetal);
			$namedetal = stripslashes($namedetal);
			$namedetal = trim($namedetal);

			$kolichestvo = addslashes($_POST['kolichestvo']);
			$kolichestvo = htmlspecialchars($kolichestvo);
			$kolichestvo = stripslashes($kolichestvo);
			$kolichestvo = trim($kolichestvo);

			$posPred = addslashes($_POST['predpochtenie']);
			$posPred = htmlspecialchars($posPred);
			$posPred = stripslashes($posPred);
			$posPred = trim($posPred);

			$coment = addslashes($_POST['coment']);
			$coment = htmlspecialchars($coment);
			$coment = stripslashes($coment);
			$coment = trim($coment);

	    $to = ''; //Почта получателя, через запятую можно указать сколько угодно адресов
	    $subject = 'Заказ деталей'; //Загаловок сообщения
	    $message = '
	                <html>
	                    <head>
	                        <title>'.$subject.'</title>
	                    </head>
	                    <body>
	                        <p>Имя: '.$fio.'</p>
	                        <p>Телефон: '.$posTel.'</p>
	                        <p>VIN номер: '.$vinnum.'</p>
	                        <p>Производитель: '.$proizvoditel.'</p>
	                        <p>Модель: '.$model.'</p>
	                        <p>Дата производства: '.$dataproiz.'</p>
	                        <p>Объем двигателя: '.$dvigatel.'</p>
	                        <p>Название детали: '.$namedetal.'</p>
	                        <p>Количество: '.$kolichestvo.'</p>
	                        <p>Предпочтение: '.$posPred.'</p>
	                        <p>Примечание: '.$coment.'</p>
	                    </body>
	                </html>'; //Текст нащего сообщения можно использовать HTML теги
	    $headers  = "Content-type: text/html; charset=utf-8 \r\n"; //Кодировка письма
	    $headers .= "From: Отправитель <from@example.com>\r\n"; //Наименование и почта отправителя
	    mail($to, $subject, $message, $headers); //Отправка письма с помощью функции mail
	    echo "1"; //Всё Ok!
	}
	else//если ошибки есть
	{
	    echo "<p style='font: 13px Verdana;'><font color=#FF3333><strong>Ошибка !</strong></font></p><ul style='list-style: none; font: 11px Verdana; color:#000; border:1px solid #c00; border-radius:5px; -moz-border-radius:5px; -webkit-border-radius:5px; background-color:#fff; padding:5px; margin:5px 10px;'>".$log."<br>Сообщение не отправлено!</ul><br />"; //Нельзя отправлять пустые сообщения

	}
}
else {
	echo "<p style='font: 13px Verdana;'><font color=#FF3333><strong>Ошибка ! Вы забыли пройти CAPTCHA </strong></font></p>";
}
?>
