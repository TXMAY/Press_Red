/// @description checking
// 이 에디터에 코드를 작성할 수 있습니다
switch(state)
{
	case STATE.RED:
		global.score++;
		break;
	case STATE.GREEN:
		alarm[0]=-1;
		global.life--;
		break;
}
changing=false;
state=STATE.GREEN;


