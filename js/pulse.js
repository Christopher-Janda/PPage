var pulseLightCount = 0;

$(document).ready(function(){
	pulse();
	
});

function pulse(){
	var pulseNumber = randomIntFromInterval(1, 4);
	if($('.pulse'+ pulseNumber).hasClass('selected')){
		pulse();
	}
	else{
		$('.pulse'+pulseNumber).addClass('pulse');
		setTimeout(function(){
			$('.pulse'+pulseNumber).removeClass('pulse');
			pulse();
		},2000);
	}
}

function randomIntFromInterval(min,max)
{
    return Math.floor(Math.random()*(max-min+1)+min);
}


