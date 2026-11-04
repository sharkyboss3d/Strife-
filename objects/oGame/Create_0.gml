rollback_define_player(oPlayer) //eventually have global variable decide who p1 and p2 are
var _joined = rollback_join_game()

if !_joined
{
	rollback_create_game(2,false)
}
