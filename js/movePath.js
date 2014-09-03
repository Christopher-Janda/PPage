/*----------------------------------------------------------
	Page Configuration
-----------------------------------------------------------*/
function movePath(path, pageFunction, fromHome){
	
	var pathAnimator = new PathAnimator( path );	// initiate a new pathAnimator object
	var neuron = document.getElementById('neuron');	// The object that will move along the path
	var speed = 1.5;	 		// seconds that will take going through the whole path
	var reverse = false;	// go back of forward along the path
	var startOffset = 0;		// between 0% to 100%
	if(fromHome || pageFunction == 'home'){
		//$('.contentPanel').hide('clip');
		setTimeout(function(){pathAnimator.start( speed, step, reverse, startOffset, finish);}, 100);
	}
	else{
		//$('.contentPanel').hide('clip');
		setTimeout(function(){pathAnimator.start( speed, step, reverse, startOffset, finish);}, 100);
	}
function step( point, angle ){
	// do something every "frame" with: point.x, point.y & angle
	neuron.style.cssText = "visibility: visible; top:" + point.y + "px;" +
								"left:" + point.x + "px;" +
								"transform:rotate("+ angle +"deg);" +
								"-webkit-transform:rotate("+ angle +"deg);";
}

function finish(){
	// do something when animation is done
	neuron.style.cssText = 'display: none';
	
 	var projector = document.getElementById('projector');
 	projector.style.cssText = "visibility: visible;";
	$('.projector').addClass('flicker');
	
	if(pageFunction == 'home'){
			loadHome();
			
		}
		else{
			loadContent(pageFunction);
			
		}
}

};

function moveFromEye(pageFunction){
	
	var eyePath = "M 427.00,199.00 C 427.00,199.00 461.00,199.00 461.00,199.00";
	var pathAnimator = new PathAnimator( eyePath );	// initiate a new pathAnimator object
	var neuron = document.getElementById('projector');	// The object that will move along the path
	var speed = .5;	 		// seconds that will take going through the whole path
	var reverse = false;	// go back of forward along the path
	var startOffset = 0;		// between 0% to 100%
	
	if(pageFunction == 'home'){
		reverse = true;
	}
	
	pathAnimator.start( speed, step, reverse, startOffset, finish);
	
	function step( point, angle ){
		// do something every "frame" with: point.x, point.y & angle
		neuron.style.cssText = "visibility: visible;" +
									"left:" + point.x + "px;";
	}
	
	function finish(){
			// do something when animation is done
		//neuron.style.cssText = 'display: none';
		
		if(pageFunction == 'home'){
			loadHome();
			
		}
		else{
			loadContent(pageFunction);
			
		}
	}

};
function moveContentToHome(toHome){
	var path = "M 258.00,84.00 C 258.00,84.00 213.00,50.00 213.00,50.00 201.14,24.38 157.13,52.80 160.00,59.00 98.59,57.98 79.26,91.61 103.00,92.00 119.21,111.54 85.86,142.47 78.00,133.00";
	var pathAnimator = new PathAnimator( path );	// initiate a new pathAnimator object
	var neuron = document.getElementById('contentPanel');	// The object that will move along the path
	var speed = 1.5;	 		// seconds that will take going through the whole path
	var reverse = false;	// go back of forward along the path
	var startOffset = 0;		// between 0% to 100%
	
	if(toHome){
		reverse = true;
	}
pathAnimator.start( speed, step, reverse, startOffset, finish);

function step( point, angle ){
	// do something every "frame" with: point.x, point.y & angle
	neuron.style.cssText = 		"visibility: visible;" +
								"top:" + point.y + "px;" +
								"left:" + point.x + "px;";
}

function finish(){
	
}


};