<footer>
  <div class="container">
    <div class="row">
      <?php if ($informations) { ?>
      <div class="col-sm-3">
        <h5><?php echo $text_information; ?></h5>
        <ul class="list-unstyled">
          <?php foreach ($informations as $information) { ?>
          <li><a href="<?php echo $information['href']; ?>"><i class="fa fa-angle-right" aria-hidden="true"></i><?php echo $information['title']; ?></a></li>
          <?php } ?>
		  <li><a href="<?php echo $contact; ?>"><i class="fa fa-angle-right" aria-hidden="true"></i><?php echo $text_contact; ?></a></li>

          <li><a href="<?php echo $sitemap; ?>"><i class="fa fa-angle-right" aria-hidden="true"></i><?php echo $text_sitemap; ?></a></li>
        </ul>
      </div>
      <?php } ?>
      <div class="col-sm-3">
        <h5><?php echo $text_extra; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
          <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>

          <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
        </ul>
      </div>
      <div class="col-sm-3">
        <h5><?php echo $text_account; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
          <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
          <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
          <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
        </ul>
      </div>
	  <div class="col-sm-3">
			<h5><i class="glyphicon glyphicon-home" aria-hidden="true"></i> Контакты</h5>
			<ul class="list-unstyled">
				<li><i class="fa fa-map" aria-hidden="true"></i>&nbsp;<?php echo $address; ?></li>
				<button type="button" class="btn btn-sm btn-success" data-toggle="modal" data-target="#modal-1"><i class="fa fa-map-marker" aria-hidden="true"></i>&nbsp;Схема проезда</button>
				<li> <?php if ($open=="") {echo "";}
				else {echo "<i class='fa fa-clock-o' aria-hidden='true'></i>&nbsp;"; echo $open;} ?>
				</li>
				<?php if ($telephone=="")
				{echo "";}
				else {echo "<li><i class='fa fa-phone' aria-hidden='true'></i>"; echo $telephone; echo "</li>";}
				?>
				<?php if ($telephone2=="")
				{echo "";}
				else {echo "<li><i class='fa fa-phone' aria-hidden='true'></i>"; echo $telephone2; echo "</li>";}
				?>
				<?php if ($telephone3=="")
				{echo "";}
				else {echo "<li><i class='fa fa-phone' aria-hidden='true'></i>"; echo $telephone3;echo "</li>";}
				?>
				<?php if ($fax)
				{echo "<li><i class='glyphicon glyphicon-phone-alt' aria-hidden='true'></i>&nbsp;"; echo $fax; echo "</li>";}
				?>
			</ul>
	  </div>
    </div>
	<div class="modal" id="modal-1" style="margin-top: 30px;">
		<div class="modal-dialog">
			<button type="button" class="close" data-dismiss="modal" aria-hidden="true" style="color: #0000CD; background-color: #ffffff;">&times;</button>
			<h4 class="modal-title" style="color: #2196F3; background-color: #ffffff;" >Карта проезда</h4>
			<p><iframe width="600" height="400" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2676.9532591921247!2d35.10496581526885!3d47.859868479202305!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40dc66dada9bb90d%3A0xb5ff732560947290!2z0L_RgNC-0YHQv9C10LrRgiDQnNC10YLQsNC70YPRgNCz0ZbQsiwgNSwg0JfQsNC_0L7RgNGW0LbQttGPLCDQl9Cw0L_QvtGA0ZbQt9GM0LrQsCDQvtCx0LvQsNGB0YLRjA!5e0!3m2!1sru!2sua!4v1477987005487" frameborder="0" allowfullscreen="" style="border: 0px currentColor; border-image: none;"></iframe></p>
			<p><button type="button" class="btn btn-primary" data-dismiss="modal" >Закрыть</button><p>
		</div>
	</div>
	<div style="position: fixed; top: 90px; right: 5px; z-index: 120;">
          <button type="button" class="btn btn-sm btn-danger" data-toggle="modal" data-target="#modal-2" style="font-size: 14px;">&nbsp;Подбор <br> запчасти</button>
    </div>
      <div>
          <div class="modal" id="modal-2">
              <div class="modal-dialog">
                  <div class="modal-content">
                      <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="fa fa-times" aria-hidden="true"></i></button>
                          <h4 class="modal-title">Заказать деталь(и) на свой автомобиль</h4>
                      </div>
                      <div class="modal-body">
                          <div align="center" name="loadBar" id='loadBar'></div>
                          <form id="cForm2">
            <div class="row">
                <div class="form-group required">
                    <label class="col-sm-4 control-label " >Ваше Имя</label>
                    <div class="col-sm-8">
                        <input type="text" name="fio" id="fio" class="form-control" placeholder="Укажите как к Вам обращаться"/>
                    </div>
                </div>
                <div class="form-group required">
                    <label class="col-sm-4 control-label" >Мобильный</label>
                    <div class="col-sm-8">
                        <input type="tel" name="tel"  id="tel" class="form-control" placeholder="Введите в формате: 0ХХ ХХХ ХХХХ"/>
                    </div>
                </div>
                <label class="col-sm-12 control-label" >Данные о автомобиле</label>
                <div class="form-group">
                    <label class="col-sm-4" >VIN номер</label>
                    <div class="col-sm-8">
                        <input type="text" name="vinnum" id="vinnum" class="form-control" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-4" >Производитель</label>
                    <div class="col-sm-8">
                        <input type="text" name="proizvoditel" id="proizvoditel" class="form-control" />
                    </div>
                </div>
                <div class="form-group required">
                    <label class="col-sm-4" >Модель</label>
                    <div class="col-sm-8">
                        <input type="text" name="model" id="model" class="form-control" />
                    </div>
                </div>
                <div class="form-group required">
                    <label class="col-sm-4" >Дата производства</label>
                    <div class="col-sm-8">
                        <input type="text" name="dataproiz" id="dataproiz" class="form-control" />
                    </div>
                </div>
                <div class="form-group required">
                    <label class="col-sm-4" >Объем двигателя</label>
                    <div class="col-sm-8">
                         <input type="text" name="dvigatel" id="dvigatel" class="form-control" />
                    </div>
                </div>
                <div class="form-group required">
                    <center><label>Необходимые вам запчасти и их количество</label></center>
                </div>
                <div class="form-group">
                     <label class="col-sm-4" >Название детали</label>
                     <div class="col-sm-8">
                        <input type="text" name="namedetal" id="namedetal" class="form-control" />
                     </div>
                </div>
                <div class="form-group">
                     <label class="col-sm-4" >Количество</label>
                     <div class="col-sm-8">
                        <input type="text" name="kolichestvo" id="kolichestvo" class="form-control" />
                     </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-4" >Предпочтение</label>
                    <div class="col-sm-8">
                            <select class="form-control" name="predpochtenie" id="predpochtenie">
                                <option value="Выбирите время">Выберите нужное</option>
                                <option value="Только оригинал">Только оригинал</option>
                                <option value="Цена качества">Цена качества</option>
                                <option value="Минимальная цена">Минимальная цена</option>
                            </select>
                    </div>
                </div>
                <div class="form-group ">
                     <label class="col-sm-4"  class="required">Примечание</label>
                     <div class="col-sm-8">
                         <textarea name="coment" id="coment" class="form-control" rows="3"></textarea>
                     </div>
                </div>

                <p style="color: #FF0000;">* - поля которые обязательны для заполнения</p>
				<div class="form-group required">
					<div class="col-sm-offset-2 col-sm-10">
						<div class="g-recaptcha" data-sitekey="6LcA71IUAAAAAJsRdIrNkojrEyrqkhIAddu4gmr3"></div>
					</div>
				</div>
                <button type="button" class="btn btn-default" data-dismiss="modal">Закрыть</button>
                <input type="submit" class="btn btn-primary" id="send" value="Отправить" />
            </div>
        </form>
                      </div>
                  </div>
              </div>
          </div>

<script src="https://www.google.com/recaptcha/api.js" type="text/javascript"></script>
      <script type="text/javascript">
          $(document).ready(function() {
              var regVr22 = "<div><i class='fa fa-spinner fa-pulse fa-2x fa-fw'></i><span style='font: 11px Verdana; color:#333; margin-left:6px;'>Сообщение обрабатывается...</span></div><br />";
              $("#send").click(function(){
                $("#loadBar").html(regVr22).show();
					var posName = $("#fio").val();
					$("#cForm2").submit(function() {
						var form_data = $(this).serialize();
						$.ajax({
							type: "POST",
							url: "../send.php",
							data: form_data,
							cache: false,
							beforeSend: function() {
							  console.log('отослано');
							},
							success: function(response){
								var messageResp = "<p style='font-family:Verdana; font-size:11px; color:green; border:1px solid #00CC00; padding:10px; margin:20px; border-radius:5px; -moz-border-radius:5px; -webkit-border-radius:5px; background-color:#fff;'>Спасибо, <strong>";
								var resultStat = "</strong> за обращение!</br>Мы свяжемся с Вами в ближайшее время!";
								var oll = (messageResp + posName + resultStat);
										if(response == 1){
										$("#loadBar").html(oll).fadeIn(3000);
											$("#fio").val("");
											$("#tel").val("");
											$("#vinnum").val("");
											$("#proizvoditel").val("");
											$("#model").val("");
											$("#dataproiz").val("");
											$("#dvigatel").val("");
											$("#kolichestvo").val("");
											$("#namedetal").val("");
											$("#coment").val("");
										} else {
								            $("#loadBar").html(response).fadeIn(3000);
		                      }
							}
						});
						return false;
					});
				});
			});
      </script>
    <hr>
	<p><center>&copy;&nbsp;	<?php if (date('Y')>2016)
		{
      echo "2016-";
      echo date('Y');
    }
		else {
      echo "2016";
    } ?>
	   Интернет-магазин &reg;OilPlus. Все права защищены.</br>Любое копирование материалов только с разрешения владельца сайта.
	</center></p>
  </div>

  <script type="text/javascript">
  /*
    $(document).snowfall({
      flakeCount: 200,
      flakeColor: "#DCDCDC",
      image :"catalog/view/theme/oilplus/stylesheet/flake.png",
      minSize: 5,
      maxSize: 15,
      round: true,
      shadow: false,
    });
	*/
  </script>
</footer>

</body>

</html>
