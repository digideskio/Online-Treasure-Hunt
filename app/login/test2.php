<?php
if((date('H') == 21  && date('i') > 30) && (date('H') == 21 && date('i') <  46 ))
	echo '';
else
{
echo '<p style="background-color:steelblue;width:180px;" id="warn">The bonus round has ended.Keep youself alive for the main hunt</p>
<img src="images/treasure.gif" style="width:200px;height:auto;">';
}	
?>