var dg1=0,df1=0,cg1=0;
var dg2=0,df2=0,cg2=0;

if(player1.combat && player2.combat){

if(player1.state == 11){
	if(player1.charge >= 1){
		dg1 = player1.val/30;
		player1.charge -= 1;
	}
	else{
		hp1.hp -= 250;
	}
}
else if(player1.state == 12){
	if(player1.charge >= 2){
		dg1 = player1.val/15;
		player1.charge -=2;
	}
	else{
		hp1.hp -= 500;
	}
}
else if(player1.state == 13){
	if(player1.charge >= 3){
		dg1 = 2*player1.val/15;
		player1.charge -=3;
	}
	else{
		hp1.hp -= 1000;
	}
}
else if(player1.state == 14){
	df1 = player1.val/15;
}
else if(player1.state == 15){
	if(player1.charge >= 1){
		df1 = player1.val/5;
		player1.charge -=1;
	}
	else{
		hp1.hp -= 250;
	}
}
else if(player1.state == 16){
	cg1 = player1.val/14000;
}


if(player2.state == 11){
	if(player2.charge >= 1){
		dg2 = player2.val/30;
		player2.charge -= 1;
	}
	else{
		hp2.hp -= 250;
	}
}
else if(player2.state == 12){
	if(player2.charge >= 2){
		dg2 = player2.val/15;
		player2.charge -=2;
	}
	else{
		hp2.hp -= 500;
	}
}
else if(player2.state == 13){
	if(player2.charge >= 3){
		dg2 = 2*player2.val/15;
		player2.charge -=3;
	}
	else{
		hp2.hp -= 1000;
	}
}
else if(player2.state == 14){
	df2 = player2.val/15;
}
else if(player2.state == 15){
	if(player2.charge >= 1){
		df2 = player2.val/5;
		player2.charge -=1;
	}
	else{
		hp2.hp -= 250;
	}
}
else if(player2.state == 16){
	cg2 = player2.val/14000;
}

if(dg2>df1)hp1.hp -= dg2-df1;
if(dg1>df2)hp2.hp -= dg1-df2;
player1.charge += floor(cg1);
player2.charge += floor(cg2);

player1.combat = false;
player2.combat = false;
player1.state = 0;
player2.state = 0;
player1.val = 0;
player2.val = 0;
}

if(hp1.hp<=0){
	game_restart();
}
if(hp2.hp<=0){
	game_restart();
}
