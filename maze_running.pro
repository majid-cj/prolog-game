database 
	go_yes(symbol)
	go_no(symbol)
	
%--------------------------------------------------------------------------------------------------------	
	
predicates	
	nondeterm start_maze
	nondeterm track (symbol)
	nondeterm track_path(symbol)
	nondeterm movement(symbol , symbol)
	nondeterm movement_1(symbol , symbol)
	nondeterm movement_2(symbol , symbol)
	nondeterm movement_3(symbol , symbol)
	nondeterm movement_4(symbol , symbol)
	nondeterm movement_5(symbol , symbol)
	nondeterm movement_6(symbol , symbol)
	nondeterm movement_7(symbol , symbol)
	nondeterm movement_8(symbol , symbol)
	nondeterm movement_9(symbol , symbol)
	nondeterm movement_01(symbol , symbol)
	nondeterm movement_02(symbol , symbol)
	nondeterm movement_03(symbol , symbol)
	nondeterm movement_04(symbol , symbol)
	nondeterm movement_05(symbol , symbol)
	nondeterm movement_06(symbol , symbol)
	nondeterm movement_07(symbol , symbol)
	nondeterm movement_08(symbol , symbol)
	nondeterm movement_09(symbol , symbol)
	nondeterm movement_10(symbol , symbol)
	nondeterm movement_20(symbol , symbol)
	nondeterm movement_30(symbol , symbol)
	nondeterm movement_40(symbol , symbol)
	nondeterm movement_50(symbol , symbol)
	nondeterm movement_60(symbol , symbol)
	nondeterm movement_70(symbol , symbol)
	nondeterm query(symbol , symbol , symbol)
	nondeterm track_moved(symbol , symbol)
	nondeterm reset
	
%---------------------------------------------------------------------------------------------------------	
	
clauses
	start_maze :-
		write("## MAZE RUNNING ##") , write("\n") ,
		write("## GAME V 1.1.5 ##") , write("\n") ,
		write("enter your name : ") , write("\n") ,
		readln(Name) ,
		track(Path) , ! , 
		write(Name ," you " , Path) , 
		reset .
	
	start_maze:-
		write("you lost in the Maze , probably you will die :( ") , 
		reset .	
%---------------------------------------------------------------------------------------------------------
	track("couldn't go out the Maze"):-
		track_path("path 1") , track_path("keep forward 1") , write("you are locked in the Maze ").
		
	track("couldn't go out the Maze"):-
		 track_path("path 2") , track_path("path 3") , write("you are locked in the Maze") .
		 
	track("couldn't go out the Maze"):-
		track_path("keep forward 2") , track_path("path 4") , track_path("keep forward 3") ,
		write ("you are locked in the Maze") .
	
	track("couldn't go out the Maze"):-
		track_path("path 5") , track_path("path 6") , track_path("keep forward 4") , 
		write("you are locked in the Maze") .
	
	track("couldn't go out the Maze"):-
		track_path("path 7") , track_path("path 9") , write("close road you are killed").
	
	track("couldn't go out the Maze"):-
		track_path("keep forward 5") , 	track_path("path 10") , track_path("keep forward 6") ,
		track_path("path 11") , track_path("keep forward 7") , write("you locked in the Maze") .
	
	track("couldn't go out the Maze"):-
		track_path("keep forward 8") , 	track_path("path 12") , track_path("path 13") ,
		track_path("path 14") , track_path("path 14") , track_path("path 15") , 
		write("you are locked in the Maze") .
	
	track("couldn't go out the Maze"):-
		track_path("path 16") , track_path("keep forward 9") , write("you are locked in the Maze") .
		
	track("congraculation you made you are out the Maze"):-
		track_path("last path") , write("out of the Maze").				
				 	 
	

%---------------------------------------------------------------------------------------------------------

	track_path("path 1"):-
		movement("turn to the left or move forward ? [L/F]" , "forward").
		
	track_path("forward 1"):-
		movement_1("keep moving forward ? [Y/N]" , "forward 1").	

	track_path("path 2"):-
		movement_2("move down left or down right ? [L/R]" , "left_right").
		
	track_path("path 3"):-
		movement_3("go up ? [Y/N]" , "go up") .

	track_path("keep forward 2"):-
		movement_4("keep moveing a head ? [Y/N]" , "forward 2").
		
	track_path("path 4"):-
		movement_5("go down or up ? [D/U]" , "go down 1").
	
	track_path("keep forward 3"):-
		movement_6("keep moveing a head ? [Y/N]" , "forward 3").
	
	track_path("path 5"):-
		movement_7("move forward or right ? [F/R]" , "forward or right").
	
	track_path("path 6"):-
		movement_8("go down ? [Y/N]" , "go down 2").
	
	track_path("keep forward 4"):-
		movement_9("keep moveing a head ? [Y/N]" , "forward 4").
	
	track_path("path 7"):-
		movement_01("keep forward ? [Y/N]" , "forward").
	
	track_path("path 8"):-
		movement_02("keep forward for go down ? [F/D]" , "forward or down").
	
	track_path("path 9"):-
		movement_03("go left to the up ? [L/U]" , "left up").
	
	track_path("keep forward 5"):-
		movement_04("keep moveing a head ? [Y/N]" , "forward 5").
	
	track_path("path 10"):-
		movement_05("go forward or go down ? [F/D]" , "down left or rig").
	
	track_path("keep forward 6"):-
		movement_06("keep moveing a head ? [Y/N]" , "forward 6").
	
	track_path("path 11") :-
		movement_07("go the right ? [Y/N]" , "go right") .
		
	track_path("keep forward 7"):-
		movement_08("keep moveing a head ? [Y/N]" , "forward 7").		
	
	track_path("keep forward 8"):-
		movement_9("keep moveing a head ? [Y/N]" , "forward 8").
		
	track_path("path 12"):-
		movement_10("keep going down ? [Y/N]" , "keep down").
	
	track_path("path 13"):-
		movement_20("turn left to down ? [Y/N]" , "left to down") .
	
	track_path("path 14"):-
		movement_30("go right or left ? [R/F]" , "left or right down" ).
	
	track_path("path 15"):-
		movement_40("go up ? [Y/N]" , "go up down").
	
	track_path("path 16"):-
		movement_50("go down left or right ? [L/R]" , "down left or right").
	
	track_path("keep forward 9"):-
		movement_60("keep moveing forward ? [Y/N]" , "forward 9").
	
	track_path("last path"):-
		movement_70("go the right down ? [Y/N]" , "finished").			

%---------------------------------------------------------------------------------------------------------		
	
	movement(_ , X):- 
		go_yes(X) , ! .
	movement(Q , X):-
		not(go_no(X)) , 
		query(Q , X , R) , R = "l" .
	
	movement_1(_ , X):- 
		go_yes(X) , ! .
	movement_1(Q , X):-
		not(go_no(X)) , 
		query(Q , X , R) , R = "y" .
		
	movement_2(_ , X):- 
		go_yes(X) , ! .	
	movement_2(Q , X):-
		not(go_no(X)) , 
		query(Q , X , R) , R = "l" .
		
	movement_3(_ , X):- 
		go_yes(X) , ! .
	movement_3(Q , X):-
		not(go_no(X)) , 
		query(Q , X , R) , R = "y" .
	
	movement_4(_ , X):- 
		go_yes(X) , ! .
	movement_4(Q , X):-
		not(go_no(X)) , 
		query(Q , X , R) , R = "y" .
	
	movement_5(_ , X):- 
		go_yes(X) , ! .
	movement_5(Q , X):-
		not(go_no(X)) , 
		query(Q , X , R) , R = "d" .
		
	movement_6(_ , X):- 
		go_yes(X) , ! .
	movement_6(Q , X):-
		not(go_no(X)) , 
		query(Q , X , R) , R = "y" .
	
	movement_7(_ , X):- 
		go_yes(X) , ! .
	movement_7(Q , X):-
		not(go_no(X)) , 
		query(Q , X , R) , R = "f" .
	
	movement_8(_ , X):- 
		go_yes(X) , ! .
	movement_8(Q , X):-
		not(go_no(X)) , 
		query(Q , X , R) , R = "y" .
		
	movement_9(_ , X):- 
		go_yes(X) , ! .
	movement_9(Q , X):-
		not(go_no(X)) , 
		query(Q , X , R) , R = "y" .
	
	movement_01(_ , X):- 
		go_yes(X) , ! .
	movement_01(Q , X):-
		not(go_no(X)) , 
		query(Q , X , R) , R = "y" .
	
	movement_02(_ , X):- 
		go_yes(X) , ! .
	movement_02(Q , X):-
		not(go_no(X)) , 
		query(Q , X , R) , R = "f" .
	
	movement_03(_ , X):- 
		go_yes(X) , ! .
	movement_03(Q , X):-
		not(go_no(X)) , 
		query(Q , X , R) , R = "l" .
		
	movement_04(_ , X):- 
		go_yes(X) , ! .
	movement_04(Q , X):-
		not(go_no(X)) , 
		query(Q , X , R) , R = "y" .
	
	movement_05(_ , X):- 
		go_yes(X) , ! .
	movement_05(Q , X):-
		not(go_no(X)) , 
		query(Q , X , R) , R = "f" .
	
	movement_06(_ , X):- 
		go_yes(X) , ! .
	movement_06(Q , X):-
		not(go_no(X)) , 
		query(Q , X , R) , R = "y" .
		
	movement_07(_ , X):- 
		go_yes(X) , ! .
	movement_07(Q , X):-
		not(go_no(X)) , 
		query(Q , X , R) , R = "y" .
	
	movement_08(_ , X):- 
		go_yes(X) , ! .
	movement_08(Q , X):-
		not(go_no(X)) , 
		query(Q , X , R) , R = "y" .
	
	movement_09(_ , X):- 
		go_yes(X) , ! .
	movement_09(Q , X):-
		not(go_no(X)) , 
		query(Q , X , R) , R = "y" .
	
	movement_10(_ , X):- 
		go_yes(X) , ! .
	movement_10(Q , X):-
		not(go_no(X)) , 
		query(Q , X , R) , R = "y" .
	
	movement_20(_ , X):- 
		go_yes(X) , ! .
	movement_20(Q , X):-
		not(go_no(X)) , 
		query(Q , X , R) , R = "y" .
	
	movement_30(_ , X):- 
		go_yes(X) , ! .
	movement_30(Q , X):-
		not(go_no(X)) , 
		query(Q , X , R) , R = "r" .
		
	movement_40(_ , X):- 
		go_yes(X) , ! .
	movement_40(Q , X):-
		not(go_no(X)) , 
		query(Q , X , R) , R = "r" .
	
	movement_50(_ , X):- 
		go_yes(X) , ! .
	movement_50(Q , X):-
		not(go_no(X)) , 
		query(Q , X , R) , R = "y" .
	
	movement_60(_ , X):- 
		go_yes(X) , ! .
	movement_60(Q , X):-
		not(go_no(X)) , 
		query(Q , X , R) , R = "y" .
	
	movement_70(_ , X):- 
		go_yes(X) , ! .
	movement_70(Q , X):-
		not(go_no(X)) , 
		query(Q , X , R) , R = "y" .
%---------------------------------------------------------------------------------------------------------
	
	query(Q , X , R):-
		write(Q) , readln(R) , track_moved(X , R) .

%---------------------------------------------------------------------------------------------------------	
	
	track_moved(X , "l") :-
		assert(go_yes(X)) .
	
	track_moved(X, "y") :-
		assert(go_no(X)) .
	
	track_moved(X , "d") :-
		assert(go_yes(X)) .
	
	track_moved(X, "f") :-
		assert(go_no(X)) .
		
	track_moved(X , "r") :-
		assert(go_yes(X)) .
		
%---------------------------------------------------------------------------------------------------------		
	
	reset:-
		retractall(go_yes(_)) .
	
	reset:-
		retractall(go_no(_)) .
		
%---------------------------------------------------------------------------------------------------------		
	
goal
	start_maze .										