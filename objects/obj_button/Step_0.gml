/// @description change sprite
// 이 에디터에 코드를 작성할 수 있습니다
// 현재 상태에 따라 스프라이트 변경
switch(state)
{
	case STATE.RED:
		sprite_index=spr_button_red;
		break;
	case STATE.GREEN:
		sprite_index=spr_button_green;
		break;
}
// 빨간색일 때 3초가 지나면 초록색으로(실패)
if(state==STATE.RED&&current_time-cur_time>=3000)
{
	cur_time=current_time;
	changing=false;
	global.life--;
	state=STATE.GREEN;
}

// 초록색일 때 색 변경
if(state==STATE.GREEN&&changing==false)
{
	changing=true;
	alarm[0]=irandom_range(300,600);
}