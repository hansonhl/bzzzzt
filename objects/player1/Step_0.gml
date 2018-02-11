///////// added ////////////////////
var lpy = obj_leftpointer.y;

var left_outer_range1 = (lpy >= 86 && lpy <= 126) || (lpy >= 176 && lpy <= 216);
var left_outer_range2 = (lpy >= 290 && lpy <= 330) || (lpy >= 380 && lpy <= 420);
var left_outer_range3 = (lpy >= 499 && lpy <= 539) || (lpy >= 589 && lpy <= 629);
var left_inner_range1 = (lpy > 126) && (lpy < 176);
var left_inner_range2 = (lpy > 330) && (lpy < 380);
var left_inner_range3 = (lpy > 539) && (lpy < 589);
var y1 = 156;
var y2 = 370;
var y3 = 569;
///////////////////////////////////////////

if(nx != x){
	if(x > nx) x-=1;
	else x+=1;
	}
if(ny != y){
	if(y > ny) y-=1;
	else y+=1;
	}

//state changes
if keyboard_check_pressed(ord("A")){
	if(state == 0){
		state = 1;
		if(power(obj_leftpointer.y - 96 - (obj_diamond.sprite_height/2),2)<1000){
			val += 10000-10*power(obj_leftpointer.y - 96 - (obj_diamond.sprite_height/2),2);
		}
		if(left_outer_range1){
			instance_create_layer(60, y1, "Feedback", obj_border1);
		} else if (left_inner_range1){
			instance_create_layer(60, y1, "Feedback", obj_border2);
		}
	}
	else if(state == 1){
		state = 11;
		if(power(obj_leftpointer.y - 310 - (obj_diamond.sprite_height/2),2)<1000){
			val += 10000-10*power(obj_leftpointer.y - 310 - (obj_diamond.sprite_height/2),2);
		}
		if(left_outer_range2){
			instance_create_layer(60, y2, "Feedback", obj_border1);
		} else if (left_inner_range2){
			instance_create_layer(60, y2, "Feedback", obj_border2);
		}
	}
	else if(state == 2){
		state = 12;
		if(power(obj_leftpointer.y - 310 - (obj_diamond.sprite_height/2),2)<1000){
			val += 10000-10*power(obj_leftpointer.y - 310 - (obj_diamond.sprite_height/2),2);
		}
		if(left_outer_range2){
			instance_create_layer(60, y2, "Feedback", obj_border1);
		} else if (left_inner_range2){
			instance_create_layer(60, y2, "Feedback", obj_border2);
		}
	}
	else if(state == 3){
		state = 13;
		if(power(obj_leftpointer.y - 310 - (obj_diamond.sprite_height/2),2)<1000){
			val += 10000-10*power(obj_leftpointer.y - 310 - (obj_diamond.sprite_height/2),2);
		}
		if(left_outer_range2){
			instance_create_layer(60, y2, "Feedback", obj_border1);
		} else if (left_inner_range2){
			instance_create_layer(60, y2, "Feedback", obj_border2);
		}
	}
}
else if keyboard_check_pressed(ord("S")){
	if(state == 0){
		state = 2;
		if(power(obj_leftpointer.y - 96 - (obj_diamond.sprite_height/2),2)<1000){
			val += 10000-10*power(obj_leftpointer.y - 96 - (obj_diamond.sprite_height/2),2);
		}
		if(left_outer_range1){
			instance_create_layer(60, y1, "Feedback", obj_border1);
		} else if (left_inner_range1){
			instance_create_layer(60, y1, "Feedback", obj_border2);
		}

	}
	else if(state == 2){
		state = 14;
		if(power(obj_leftpointer.y - 310 - (obj_diamond.sprite_height/2),2)<1000){
			val += 10000-10*power(obj_leftpointer.y - 310 - (obj_diamond.sprite_height/2),2);
		}
		if(left_outer_range2){
			instance_create_layer(60, y2, "Feedback", obj_border1);
		} else if (left_inner_range2){
			instance_create_layer(60, y2, "Feedback", obj_border2);
		}
	}
	else if(state == 3){
		state = 15;
		if(power(obj_leftpointer.y - 310 - (obj_diamond.sprite_height/2),2)<1000){
			val += 10000-10*power(obj_leftpointer.y - 310 - (obj_diamond.sprite_height/2),2);
		}
		if(left_outer_range2){
			instance_create_layer(60, y2, "Feedback", obj_border1);
		} else if (left_inner_range2){
			instance_create_layer(60, y2, "Feedback", obj_border2);
		}
	}
}
else if keyboard_check_pressed(ord("D")){
	if(state == 0){
		state = 3;
		if(power(obj_leftpointer.y - 96 - (obj_diamond.sprite_height/2),2)<1000){
			val += 10000-10*power(obj_leftpointer.y - 96 - (obj_diamond.sprite_height/2),2);
		}
		if(left_outer_range1){
			instance_create_layer(60, y1, "Feedback", obj_border1);
		} else if (left_inner_range1){
			instance_create_layer(60, y1, "Feedback", obj_border2);
		}
	}
	else if(state == 3){
		state = 16;
		if(power(obj_leftpointer.y - 310 - (obj_diamond.sprite_height/2),2)<1000){
			val += 10000-10*power(obj_leftpointer.y - 310 - (obj_diamond.sprite_height/2),2);
		}
		if(left_outer_range2){
			instance_create_layer(60, y2, "Feedback", obj_border1);
		} else if (left_inner_range2){
			instance_create_layer(60, y2, "Feedback", obj_border2);
		}
	}
}
else if(keyboard_check_pressed(ord("B"))){
	if(state > 10){
		if(state == 11){
			x+=15;
			if(power(obj_leftpointer.y - 509 - (obj_diamond.sprite_height/2),2)<1000){
				val += 10000-10*power(obj_leftpointer.y - 509 - (obj_diamond.sprite_height/2),2);
			}
			if(left_outer_range3){
			instance_create_layer(60, y3, "Feedback", obj_border1);
			} else if (left_inner_range3){
				instance_create_layer(60, y3, "Feedback", obj_border2);
			}
			combat = true;
		}
		else if(state == 12){
			x+=30;
			if(power(obj_leftpointer.y - 509 - (obj_diamond.sprite_height/2),2)<1000){
				val += 10000-10*power(obj_leftpointer.y - 509 - (obj_diamond.sprite_height/2),2);
			}
			if(left_outer_range3){
			instance_create_layer(60, y3, "Feedback", obj_border1);
			} else if (left_inner_range3){
				instance_create_layer(60, y3, "Feedback", obj_border2);
			}
			combat = true;
		}
		else if(state == 13){
			x+=45;
			if(power(obj_leftpointer.y - 509 - (obj_diamond.sprite_height/2),2)<1000){
				val += 10000-10*power(obj_leftpointer.y - 509 - (obj_diamond.sprite_height/2),2);
			}
			if(left_outer_range3){
			instance_create_layer(60, y3, "Feedback", obj_border1);
			} else if (left_inner_range3){
				instance_create_layer(60, y3, "Feedback", obj_border2);
			}
			combat = true;
		}
		else if(state == 14){
			y+=15;
			if(power(obj_leftpointer.y - 509 - (obj_diamond.sprite_height/2),2)<1000){
				val += 10000-10*power(obj_leftpointer.y - 509 - (obj_diamond.sprite_height/2),2);
			}
			if(left_outer_range3){
			instance_create_layer(60, y3, "Feedback", obj_border1);
			} else if (left_inner_range3){
				instance_create_layer(60, y3, "Feedback", obj_border2);
			}
			combat = true;
		}
		else if(state == 15){
			y+=30;
			if(power(obj_leftpointer.y - 509 - (obj_diamond.sprite_height/2),2)<1000){
				val += 10000-10*power(obj_leftpointer.y - 509 - (obj_diamond.sprite_height/2),2);
			}
			if(left_outer_range3){
			instance_create_layer(60, y3, "Feedback", obj_border1);
			} else if (left_inner_range3){
				instance_create_layer(60, y3, "Feedback", obj_border2);
			}
			combat = true;
		}
		else if(state == 16){
			x-=30;
			if(power(obj_leftpointer.y - 509 - (obj_diamond.sprite_height/2),2)<1000){
				val += 10000-10*power(obj_leftpointer.y - 509 - (obj_diamond.sprite_height/2),2);
			}
			if(left_outer_range3){
			instance_create_layer(60, y3, "Feedback", obj_border1);
			} else if (left_inner_range3){
				instance_create_layer(60, y3, "Feedback", obj_border2);
			}
			combat = true;
		}
	}
}