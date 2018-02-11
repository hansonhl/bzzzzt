var rpy = obj_rightpointer.y;

var right_outer_range1 = (rpy >= 86 && rpy <= 126) || (rpy >= 176 && rpy <= 216);
var right_outer_range2 = (rpy >= 290 && rpy <= 330) || (rpy >= 380 && rpy <= 420);
var right_outer_range3 = (rpy >= 499 && rpy <= 539) || (rpy >= 589 && rpy <= 629);
var right_inner_range1 = (rpy > 126) && (rpy < 176);
var right_inner_range2 = (rpy > 330) && (rpy < 380);
var right_inner_range3 = (rpy > 539) && (rpy < 589);
var y1 = 156;
var y2 = 370;
var y3 = 569;

if(nx != x){
	if(x > nx) x-=1;
	else x+=1;
	}
if(ny != y){
	if(y > ny) y-=1;
	else y+=1;
	}

//state changes
if keyboard_check_pressed(ord("J")){
	if(state == 0){
		state = 1;
		if(power(obj_rightpointer.y - 96 - (obj_diamond.sprite_height/2),2)<1000){
			val += 10000-10*power(obj_rightpointer.y - 96 - (obj_diamond.sprite_height/2),2);
		}
		if(right_outer_range1){
			instance_create_layer(964, y1, "Feedback", obj_border1);
		} else if (right_inner_range1){
			instance_create_layer(964, y1, "Feedback", obj_border2);
		}
	}
	else if(state == 1){
		state = 11;
		if(power(obj_rightpointer.y - 310 - (obj_diamond.sprite_height/2),2)<1000){
			val += 10000-10*power(obj_rightpointer.y - 96 - (obj_diamond.sprite_height/2),2);
		}
		if(right_outer_range2){
			instance_create_layer(964, y2, "Feedback", obj_border1);
		} else if (right_inner_range2){
			instance_create_layer(964, y2, "Feedback", obj_border2);
		}
	}
	else if(state == 2){
		state = 12;
		if(power(obj_rightpointer.y - 310 - (obj_diamond.sprite_height/2),2)<1000){
			val += 10000-10*power(obj_rightpointer.y - 310 - (obj_diamond.sprite_height/2),2);
		}
		if(right_outer_range2){
			instance_create_layer(964, y2, "Feedback", obj_border1);
		} else if (right_inner_range2){
			instance_create_layer(964, y2, "Feedback", obj_border2);
		}
	}
	else if(state == 3){
		state = 13;
		if(power(obj_rightpointer.y - 310 - (obj_diamond.sprite_height/2),2)<1000){
			val += 10000-10*power(obj_rightpointer.y - 310 - (obj_diamond.sprite_height/2),2);
		}
		if(right_outer_range2){
			instance_create_layer(964, y2, "Feedback", obj_border1);
		} else if (right_inner_range2){
			instance_create_layer(964, y2, "Feedback", obj_border2);
		}
	}
}
else if keyboard_check_pressed(ord("K")){
	if(state == 0){
		state = 2;
		if(power(obj_rightpointer.y - 96 - (obj_diamond.sprite_height/2),2)<1000){
			val += 10000-10*power(obj_rightpointer.y - 96 - (obj_diamond.sprite_height/2),2);
		}
		if(right_outer_range1){
			instance_create_layer(964, y1, "Feedback", obj_border1);
		} else if (right_inner_range1){
			instance_create_layer(964, y1, "Feedback", obj_border2);
		}
	}
	else if(state == 2){
		state = 14;
		if(power(obj_rightpointer.y - 310 - (obj_diamond.sprite_height/2),2)<1000){
			val += 10000-10*power(obj_rightpointer.y - 310 - (obj_diamond.sprite_height/2),2);
		}
		if(right_outer_range2){
			instance_create_layer(964, y2, "Feedback", obj_border1);
		} else if (right_inner_range2){
			instance_create_layer(964, y2, "Feedback", obj_border2);
		}
	}
	else if(state == 3){
		state = 15;
		if(power(obj_rightpointer.y - 310 - (obj_diamond.sprite_height/2),2)<1000){
			val += 10000-10*power(obj_rightpointer.y - 310 - (obj_diamond.sprite_height/2),2);
		}
		if(right_outer_range2){
			instance_create_layer(964, y2, "Feedback", obj_border1);
		} else if (right_inner_range2){
			instance_create_layer(964, y2, "Feedback", obj_border2);
		}
	}
}
else if keyboard_check_pressed(ord("L")){
	if(state == 0){
		state = 3;
		if(power(obj_rightpointer.y - 96 - (obj_diamond.sprite_height/2),2)<1000){
			val += 10000-10*power(obj_rightpointer.y - 96 - (obj_diamond.sprite_height/2),2);
		}
		if(right_outer_range1){
			instance_create_layer(964, y1, "Feedback", obj_border1);
		} else if (right_inner_range1){
			instance_create_layer(964, y1, "Feedback", obj_border2);
		}
	}
	else if(state == 3){
		state = 16;
		if(power(obj_rightpointer.y - 310 - (obj_diamond.sprite_height/2),2)<1000){
			val += 10000-10*power(obj_rightpointer.y - 310 - (obj_diamond.sprite_height/2),2);
		}
		if(right_outer_range2){
			instance_create_layer(964, y2, "Feedback", obj_border1);
		} else if (right_inner_range2){
			instance_create_layer(964, y2, "Feedback", obj_border2);
		}
	}
}
else if(keyboard_check_pressed(vk_down)){
	if(state > 10){
		if(state == 11){
			x-=15;
			if(power(obj_rightpointer.y - 509 - (obj_diamond.sprite_height/2),2)<1000){
				val += 10000-10*power(obj_rightpointer.y - 509 - (obj_diamond.sprite_height/2),2);
			}
			if(right_outer_range3){
			instance_create_layer(964, y3, "Feedback", obj_border1);
			} else if (right_inner_range3){
				instance_create_layer(964, y3, "Feedback", obj_border2);
			}
			combat = true;
		}
		else if(state == 12){
			x-=30;
			if(power(obj_rightpointer.y - 509 - (obj_diamond.sprite_height/2),2)<1000){
				val += 10000-10*power(obj_rightpointer.y - 509 - (obj_diamond.sprite_height/2),2);
			}
			if(right_outer_range3){
			instance_create_layer(964, y3, "Feedback", obj_border1);
			} else if (right_inner_range3){
				instance_create_layer(964, y3, "Feedback", obj_border2);
			}
			combat = true;
		}
		else if(state == 13){
			x-=45;
			if(power(obj_rightpointer.y - 509 - (obj_diamond.sprite_height/2),2)<1000){
				val += 10000-10*power(obj_rightpointer.y - 509 - (obj_diamond.sprite_height/2),2);
			}
			if(right_outer_range3){
			instance_create_layer(964, y3, "Feedback", obj_border1);
			} else if (right_inner_range3){
				instance_create_layer(964, y3, "Feedback", obj_border2);
			}
			combat = true;
		}
		else if(state == 14){
			y+=15;
			if(power(obj_rightpointer.y - 509 - (obj_diamond.sprite_height/2),2)<1000){
				val += 10000-10*power(obj_rightpointer.y - 509 - (obj_diamond.sprite_height/2),2);
			}
			if(right_outer_range3){
			instance_create_layer(964, y3, "Feedback", obj_border1);
			} else if (right_inner_range3){
				instance_create_layer(964, y3, "Feedback", obj_border2);
			}
			combat = true;
		}
		else if(state == 15){
			y+=30;
			if(power(obj_rightpointer.y - 509 - (obj_diamond.sprite_height/2),2)<1000){
				val += 10000-10*power(obj_rightpointer.y - 509 - (obj_diamond.sprite_height/2),2);
			}
			if(right_outer_range3){
			instance_create_layer(964, y3, "Feedback", obj_border1);
			} else if (right_inner_range3){
				instance_create_layer(964, y3, "Feedback", obj_border2);
			}
			combat = true;
		}
		else if(state == 16){
			x+=30;
			if(power(obj_rightpointer.y - 509 - (obj_diamond.sprite_height/2),2)<1000){
				val += 10000-10*power(obj_rightpointer.y - 509 - (obj_diamond.sprite_height/2),2);
			}
			if(right_outer_range3){
			instance_create_layer(964, y3, "Feedback", obj_border1);
			} else if (right_inner_range3){
				instance_create_layer(964, y3, "Feedback", obj_border2);
			}
			combat = true;
		}
	}
}