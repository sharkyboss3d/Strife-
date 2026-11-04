rollback_define_player(oPlayer) //eventually have global variable decide who p1 and p2 are


if !rollback_join_game()
{
	rollback_create_game(2,false)
}
