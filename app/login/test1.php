<?php
if((date('H') == 21  && date('i') > 30) && (date('H') == 21 && date('i') <  46 ))
{
echo '<p style="background-color:steelblue;width:180px;" id="warn">The bonus round is on<br/>You are being redirected to bonus round</p>
<img src="images/treasure.gif" style="width:200px;height:auto;">';
}
else
	echo '';
?>