dtmc  // discrete time markov chain
module man_woman

    //states
    s : [0..6] init 0;
    medicine : bool init false;
    man : bool init false;
    woman : bool init false;
    final : bool init false;


   	[] s=0 -> 1 : (s'=1);                        //The / 1
	[] s=1 -> 0.82 : (s'=2) & (man'= true)       //man / 0.82
		+ 0.18 : (s'=3) & (woman' = true);   //woman / 0.18
    	[] s=2 -> 1 : (s'=4);                        //trained / 1
   	[] s=3 -> 1 : (s'=5);                        //trained / 1
    	[] s=4 -> 0.57 : (s'=6) & (medicine'=true)   //man_medicine / 0.57
		+ 0.43 : (s'=6) ;                    //man_engineering / 0.43
    	[] s=5 -> 0.65 : (s'=6) & (medicine'=true)   //woman_medicine / 0.65
         	+ 0.35 : (s'=6) ;                    //woman_business / 0.35
	[] s=6 -> 1 : (s'=6) & (final' = true); 

endmodule