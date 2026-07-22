MODE 7
PRINTCHR$(141);CHR$(157);CHR$(132);"     Micromasters Computer Games"
PRINTCHR$(141);CHR$(157);CHR$(132);"     Micromasters Computer Games"
PRINT
PRINT" Author: Patricia Grady"
PRINT" Designer: Ben White"
PRINT" Illustrators: Hayward Art"
PRINT" Editorial: Christopher Maynard"
PRINT"            Frances Ferneyhough"
PRINT
PRINT" Published exclusively for Marks and"
PRINT" Spencer p.l.c. by Grisewood & Dempsey"
PRINT" Limited"
PRINT
PRINT" (c) Grisewood & Dempsey Limited 1984"
PRINT
PROCNEXTPAGE
PRINTCHR$(141);CHR$(157);CHR$(132);"     Micromasters Computer Games"
PRINTCHR$(141);CHR$(157);CHR$(132);"     Micromasters Computer Games"
PRINT
PRINT" Select a game from the list below by"
PRINT" pressing the corresponding key"
PRINT
PRINT" A - Meteor Storm"
PRINT" B - Alien Invaders"
PRINT" C - Bananas"
PRINT" D - Spider's Web"
PRINT" E - Target Practice"
PRINT" F - Fortune-Teller"
PRINT" G - Grand Slalom"
PRINT" H - Laser Locksmith"
PRINT" I - Blockbuster"
PRINT" J - Mu Torere"
PRINT" K - Cops and Robbers"
PRINT" L - Sorcerer's Steps"
PRINT" M - Parcel Drop"
PRINT" N - Forgery"
REPEAT
A$=GET$
UNTIL ASC(A$)>=65 AND ASC(A$)<=78
CLS
IF A$="A" PROCMETEOR
IF A$="B" PROCALIEN
IF A$="C" PROCBANANAS
IF A$="D" PROCSPIDER
IF A$="E" PROCTARGET
IF A$="F" PROCFORTUNE
IF A$="G" PROCGRAND
IF A$="H" PROCLASER
IF A$="I" PROCBLOCKB
IF A$="J" PROCMUTORERE
IF A$="K" PROCCOPS
IF A$="L" PROCSORCER
IF A$="M" PROCPARCEL
IF A$="N" PROCFORGERY
END
REM ** METEOR STORM **
DEFPROCMETEOR
PROCHEADER("Meteor Storm")
PRINT"  During a routine cruise through the"
PRINT" Sirius system, the sirens of the"
PRINT" Starship *Pluto* sound 'Red Alert'. The";
PRINT" scanners have picked up an unusual"
PRINT" storm of metallic meteors. The"
PRINT" shipboard computers are not programmed"
PRINT" to deal with anything like this. You"
PRINT" will have to fire the photon blasters"
PRINT" manually."
PRINT"  You have one blaster for each of the"
PRINT" numbered sectors shown on the screen."
PRINT" Use the keys 1 to 8 to fire. The sooner";
PRINT" you hit the meteors, the more points"
PRINT" you score."
PROCNEXTPAGE
PROCHEADER("Meteor Storm")
PRINT"  The ship has a force field which will"
PRINT" vaporise any meteors you miss, but will";
PRINT" reduce in strength each time. The"
PRINT" numbers near the centre of the display"
PRINT" show the strength of this field. If"
PRINT" meteor hits reduce the strength to zero";
PRINT" in any sector the ship is destroyed."
PRINT"  At the start of the game you choose a"
PRINT" level of difficulty from 1 (easy) to 20";
PRINT" (impossible). To win you must survive"
PRINT" 30 meteors."
PROCSTARTGAME
CHAIN"METEOR"
ENDPROC
REM ** ALIEN INVADERS **
DEFPROCALIEN
PROCHEADER("Alien Invaders")
PRINT"  London is in peril! An Interplanetary"
PRINT" Battle Fleet from Mars - whose"
PRINT" inhabitants are infuriated by our"
PRINT" claims that their planet is dead - has"
PRINT" attacked. The Ministry of Defence is"
PRINT" asleep, so you have to defend the city"
PRINT" with just one missile launcher."
PRINT"  You can move the launcher to the left"
PRINT" using capital Z and to the right using"
PRINT" X. Press F when you are ready to fire."
PRINT"  The aliens descend cautiously at"
PRINT" first, but be on your guard. If you let";
PRINT" a single ship through, London will be"
PRINT" devastated."
PRINT"  During the game you score points for"
PRINT" each invader you hit - more points for"
PRINT" a ship high in the sky than for one"
PRINT" close to the ground."
PRINT"  If you want to make the game more"
PRINT" difficult, try replacing (N+2) in line"
PRINT" 200 by (N+1) or reducing the 4 in line"
PRINT" 290 to 3, 2 or 1."
PROCSTARTGAME
CHAIN"ALIEN"
ENDPROC
REM ** BANANAS **
DEFPROCBANANAS
PROCHEADER("Bananas")
PRINT"  In this game the computer tries to"
PRINT" guess your favourite food. It asks"
PRINT" questions to which you can reply by"
PRINT" entering capital Y for yes or capital N";
PRINT" for no."
PRINT"  At first the computer does not do very";
PRINT" well. However, if you play several"
PRINT" games the computer will build up a"
PRINT" question 'tree' by asking players to"
PRINT" enter extra questions that have yes or"
PRINT" no answers."
PRINT"  If the computer cannot answer your"
PRINT" question the message 'SUGGEST ANOTHER"
PRINT" QUESTION' will appear. For instance,"
PRINT" the question 'WHAT COLOUR IS IT?' would";
PRINT" be rejected because the answer is"
PRINT" neither Y nor N. In the same way, if"
PRINT" your favourite food is LEMONS, and the"
PRINT" computer guesses BANANAS, the question"
PRINT" 'IS IT YELLOW?' would be no good"
PRINT" because it has the answer Y for both"
PRINT" fruits."
PROCNEXTPAGE
PROCHEADER("Bananas")
PRINT"  The program allows the computer to"
PRINT" store up to 49 questions and 50 types"
PRINT" of food. If your machine has room for"
PRINT" more questions in its memory, you may"
PRINT" increase the value of J in line 110."
PRINT"  Whenever you play this game remember"
PRINT" that typing RUN clears the computer's"
PRINT" memory. To restart the game without"
PRINT" losing the current stock of questions,"
PRINT" type GOTO 200."
PROCSTARTGAME
CHAIN"BANANAS"
ENDPROC
REM ** SPIDER'S WEB **
DEFPROCSPIDER
PROCHEADER("Spider's Web")
PRINTTAB(0,1);
PRINT"  A spider has trapped a number of juicy";
PRINT" flies in her web. She now wants to tour";
PRINT" her larder, visiting each meal in turn.";
PRINT"  The aim of the game is to move the"
PRINT" spider from fly to fly and then back to";
PRINT" her starting point in as few moves as"
PRINT" possible. You start by choosing a level";
PRINT" of difficulty from 1 (easy) to 6"
PRINT" (difficult)."
PRINT"  On the screen the spider is shown as"
PRINT" an asterisk and her victims are"
PRINT" labelled A, B, C and so on. The spider"
PRINT" can move in eight different directions.";
PRINT" A diagram shows how to make these"
PRINT" moves. She must inspect her prey in"
PRINT" alphabetical order and may not land on"
PRINT" any square twice."
PRINT"  If you want the computer to restart"
PRINT" the game with the spider and flies in"
PRINT" the same positions, enter Y when you"
PRINT" see the message 'SAME WEB AGAIN?' or"
PRINT" type GOTO 280. You or a friend can then";
PRINT" try for a lower score."
PROCSTARTGAME
CHAIN"SPIDER"
ENDPROC
REM ** TARGET PRACTICE **
DEFPROCTARGET
PROCHEADER("Target Practice")
PRINT"  The computer is going to draw a grid"
PRINT" and set up ten hidden targets for you."
PRINT" Fire at the targets by entering a row"
PRINT" number from 0 to 9, then a column"
PRINT" letter from A to O."
PRINT"  After each shot a new symbol will"
PRINT" appear on the grid in the space at"
PRINT" which you fired - a circle for a miss,"
PRINT" a square for a near miss or a star for"
PRINT" a hit. The game ends when you have"
PRINT" found all ten targets."
PRINT"  A score of under 80 shots is good. If"
PRINT" you take less than 50 shots to hit all"
PRINT" ten targets, you must be an electronic"
PRINT" mind reader."
PRINT"  Remember that two targets may be next"
PRINT" to each other!"
PROCSTARTGAME
CHAIN"TARGET"
ENDPROC
REM ** FORTUNE-TELLER **
DEFPROCFORTUNE
PROCHEADER("Fortune-Teller")
PRINT"  Your computer is not a good"
PRINT" fortune-teller. It has no mystic powers";
PRINT" and the only predictions it can make"
PRINT" use the information that you, the"
PRINT" programmer, put into a program."
PRINT" However, if you do this well you may be";
PRINT" able to make at least some of your"
PRINT" friends think your computer is a gypsy!";
PRINT"  You can enter your own data from line"
PRINT" 800 to create custom predictions to"
PRINT" surprise someone."
PROCSTARTGAME
CHAIN"FORTUNE"
ENDPROC
REM ** GRAND SLALOM **
DEFPROCGRAND
PROCHEADER("Grand Slalom")
PRINT"  Imagine a snow-covered mountainside in";
PRINT" the Austrian Alps. Television viewers"
PRINT" are waiting to see world-class skiers"
PRINT" tackle a long, difficult slalom,"
PRINT" speeding downhill through a series of"
PRINT" flag-marked 'gates'."
PRINT"  You are going to control one of the"
PRINT" skiers, using the Z key to move left"
PRINT" and the X key to move right."
PRINT"  Your skier must stay on course and"
PRINT" will be disqualified if he misses a"
PRINT" 'gate' . The longer he survives, the"
PRINT" narrower the gap between the flags"
PRINT" becomes."
PRINT"  You can make the game more difficult"
PRINT" at the start by reducing the value of J";
PRINT" in line 150."
PROCSTARTGAME
CHAIN"GRAND"
ENDPROC
REM ** LASER LOCKSMITH **
DEFPROCLASER
PROCHEADER("Laser Locksmith")
PRINT"  You are a hi-tech locksmith working"
PRINT" for Counter-Intelligence. Your job is"
PRINT" to make a copy of the 'key' to an"
PRINT" ultra-sophisticated laser lock."
PRINT"  The key consists of nine mirror units"
PRINT" that are fixed in various positions."
PRINT" You must find the correct combination"
PRINT" of their positions by testing the lock"
PRINT" with pulses of laser light."
PROCNEXTPAGE
PROCHEADER("Laser Locksmith")
PRINT"  The secret combination uses four"
PRINT" mirror unit positions:"
PRINT"  H - horizontal pair of mirrors"
PRINT"  V - vertical pair of mirrors"
PRINT"  F - forward sloping mirror"
PRINT"  B - backward sloping mirror"
PRINT"  To play the game use capital C to move";
PRINT" the cursor - the laser gun - to the"
PRINT" position you want. Press L to fire a"
PRINT" laser pulse, or M when you are ready to";
PRINT" guess the mirror combination."
PRINT"  Enter your guesses with the letters H,";
PRINT" V, F and B. The computer will display"
PRINT" correct guesses but refuse wrong ones."
PRINT" You also get penalty points for wrong"
PRINT" guesses. As there are only four chances";
PRINT" to get the right combination, you will"
PRINT" find it very helpful to keep notes as"
PRINT" you go along."
PROCSTARTGAME
CHAIN"LASER"
ENDPROC
REM ** BLOCKBUSTER **
DEFPROCBLOCKB
PROCHEADER("Blockbuster")
PRINT"  Your computer can produce all kinds of";
PRINT" exciting graphics simply using keyboard";
PRINT" characters. With this program you can"
PRINT" create many colourful displays."
PRINT"  To plan your design, think of the"
PRINT" screen as a piece of squared paper with";
PRINT" numbered rows and columns. (rows 0 to"
PRINT" 29, columns 0 to 19.)"
PRINT"  To define the screen area in which you";
PRINT" will be working, select top and bottom"
PRINT" row numbers, then left and right column";
PRINT" numbers. The computer will fill the"
PRINT" chosen area by printing a repeating"
PRINT" pattern up to 10 characters long."
PROCNEXTPAGE
PROCHEADER("Blockbuster")
PRINT"  If you decide on a pattern length of 4";
PRINT" then the computer will ask you 4 times"
PRINT" to enter a character. In each case you"
PRINT" also choose the colours in which the"
PRINT" character will be displayed. For"
PRINT" example, an Electron user might begin"
PRINT" by entering *(RETURN) followed by"
PRINT" 3(RETURN) for blue and then 4(RETURN)"
PRINT" for yellow to get a blue background and";
PRINT" a yellow star."
PRINT"  You can use all the colours and"
PRINT" characters on your computer to build an";
PRINT" endless variety of patterns."
PRINT"  If you stop the program by accident"
PRINT" type GOTO 200 to continue."
PRINT"  Remember you can print flashing"
PRINT" colours, graphics symbols and letters"
PRINT" on screen."
PROCSTARTGAME
CHAIN"BLOCKB"
ENDPROC
REM ** MU TORERE **
DEFPROCMUTORERE
PROCHEADER("Mu Torere")
PRINT"  Mu Torere is a traditional Maori game"
PRINT" from New Zealand. The board consists of";
PRINT" an 8-pointed star and a central area"
PRINT" called the 'putahi'. The original"
PRINT" boards were either drawn on the ground"
PRINT" or marked out on the bark of a tree."
PRINT"  Now you can play Mu Torere against the";
PRINT" computer. You have the black pieces"
PRINT" (numbered 1 to 4) and the computer has"
PRINT" the red pieces. This is a blocking"
PRINT" game. The aim is to blockade the"
PRINT" computer's pieces so that they cannot"
PRINT" move."
PROCNEXTPAGE
PROCHEADER("Mu Torere")
PRINT"  There are three types of move:"
PRINT"  (1) from the centre to a point of the"
PRINT" star;"
PRINT"  (2) from one point to an adjacent"
PRINT" point;"
PRINT"  (3) from a point of the star to the"
PRINT" centre (but only if one or both"
PRINT" neighbouring points are occupied by the";
PRINT" enemy)."
PRINT"  The best way to learn the game is by"
PRINT" playing it as the computer will not"
PRINT" allow you to break the rules!"
PROCSTARTGAME
CHAIN"MUTORER"
ENDPROC
REM ** COPS AND ROBBERS **
DEFPROCCOPS
PROCHEADER("Cops and Robbers")
PRINT"  You are a detective hunting down a"
PRINT" bank robber on the run and trying to"
PRINT" recover the money he stole. At the"
PRINT" start of the game the computer displays";
PRINT" a forest surrounded by a hedge. The"
PRINT" robber has just entered the forest from";
PRINT" the West (left-hand side). As he"
PRINT" blunders about among the trees he"
PRINT" leaves a trail of footprints and"
PRINT" scattered banknotes. After a while the"
PRINT" robber may drop the bag of money in the";
PRINT" hope of throwing you off his trail."
PRINT"  You will have to wait a few seconds"
PRINT" while the computer gives the robber a"
PRINT" ten-move start. Then begin tracking him";
PRINT" by keying in the direction (N, E, S, W)";
PRINT" you want to go, followed by a number"
PRINT" for the distance you wish to move."
PROCNEXTPAGE
PROCHEADER("Cops and Robbers")
PRINT" After each move, any clues you find"
PRINT" about the robber's trail will be shown"
PRINT" on the screen:"
PRINT"  N, S etc = footprints going North,"
PRINT" South etc"
PRINT"  ? = confused footprints going in"
PRINT" several directions"
PRINT"  £ = scattered banknotes"
PRINT"  + = shows that the robber no longer"
PRINT" has the money"
PRINT"  * = the stolen money"
PRINT"  R = the robber"
PRINT"  If the robber reaches the East (right)";
PRINT" side of the hedge he may escape from"
PRINT" the woods and get away."
PRINT"  The game continues until both the"
PRINT" robber (R) and the money (*) have been"
PRINT" found. The object is to find both of"
PRINT" them in as few moves as possible."
PROCSTARTGAME
CHAIN"COPS"
ENDPROC
REM ** SORCERER'S STEPS **
DEFPROCSORCER
PROCHEADER("Sorcerer's Steps")
PRINT"  You are a gallant knight trying to"
PRINT" rescue a helpless princess (or you may"
PRINT" be a warrior maiden on a similar"
PRINT" quest). To succeed, and win the game,"
PRINT" you must reach the top of the steps"
PRINT" leading to the sorcerer's tower."
PRINT"  Choose a level of difficulty from 1"
PRINT" (easy) to 20 (impossible), then as you"
PRINT" set out to climb, the sorcerer will"
PRINT" bombard you with magic symbols. To"
PRINT" destroy each of these strange missiles"
PRINT" you must press the matching key as"
PRINT" quickly as possible."
PRINT"  Slowly you fight your way up the"
PRINT" steps. Every time you are hit by a"
PRINT" falling symbol, the strength of your"
PRINT" enchanted sword is reduced and the game";
PRINT" becomes more difficult. The symbols"
PRINT" fall more quickly and drive you down"
PRINT" the steps."
PROCSTARTGAME
CHAIN"SORCER"
ENDPROC
REM ** PARCEL DROP **
DEFPROCPARCEL
PROCHEADER("Parcel Drop")
PRINT"  Ten farms in a remote part of the"
PRINT" country have been cut off by muddy"
PRINT" floodwaters. You are the pilot of a"
PRINT" small aircraft; your assignment is to"
PRINT" drop a food parcel as close to each"
PRINT" farm as possible."
PRINT"  Your aircraft keeps circling each farm";
PRINT" until you press capital D to drop a"
PRINT" parcel. The centre of the target area"
PRINT" is marked by a cross."
PRINT"  You can score up to 400 points for a"
PRINT" parcel dropped on target during the"
PRINT" first flight pass over any farm. Later"
PRINT" drops on target score up to 200 points.";
PRINT" Your score will vary depending on how"
PRINT" close you are to the target. No points"
PRINT" are given for parcels which land"
PRINT" outside the target area."
PROCNEXTPAGE
PROCHEADER("Parcel Drop")
PRINT"  The 'TOO LATE' message indicates that"
PRINT" you pressed D too late and the parcel"
PRINT" has landed off-screen in floodwater."
PRINT"  The object of the game is to gain the"
PRINT" highest score after visiting ten farms"
PRINT" - scores over 1500 are very good"
PRINT" indeed."
PROCSTARTGAME
CHAIN"PARCEL"
ENDPROC
REM ** FORGERY **
DEFPROCFORGERY
PROCHEADER("Forgery")
PRINT"  A clever forger is at work. He is"
PRINT" producing counterfeit copies of"
PRINT" top-grade copper ingots. The forgeries"
PRINT" contain high proportions of cheaper"
PRINT" metals such as lead, iron and zinc."
PRINT"  You have just been shipped a"
PRINT" consignment of copper ingots which"
PRINT" includes one forgery. You can detect it";
PRINT" because it will be either heavier or"
PRINT" lighter than the other ingots. The aim"
PRINT" of the game is to find the forgery with";
PRINT" as few weighings as possible on your"
PRINT" pair of scales."
PRINT"  Choose a level of difficulty from 1"
PRINT" (easy) to 8 (difficult). The computer"
PRINT" will then display up to 50 copper bars.";
PRINT"  You now enter the number of bars you"
PRINT" wish to weigh. If there are 8 bars in"
PROCNEXTPAGE
PROCHEADER("Forgery")
PRINT" all, for instance, when you see the"
PRINT" message 'IN LEFT PAN?', you might place";
PRINT" the first 4 bars in the left-hand pan"
PRINT" of the scales by entering 1, and then"
PRINT" entering 4. The next 4 bars you would"
PRINT" place in the right-hand pan by entering";
PRINT" 5, and then 8. To place just 1 bar into";
PRINT" a pan, enter the number of the bar"
PRINT" (number 8 for example) both times."
PRINT"  The computer weighs the ingots and"
PRINT" shows you the result. Keep weighing the";
PRINT" ingots until you think you know which"
PRINT" ingot is a forgery; then enter N when"
PRINT" the computer asks 'WOULD YOU LIKE"
PRINT" ANOTHER WEIGHING?'."
PRINT"  You should then key in the number of"
PRINT" the forgery and H if you think it is"
PRINT" heavier or L if you think it is"
PRINT" lighter. The computer will reveal how"
PRINT" accurate your detective work has been."
PROCSTARTGAME
CHAIN"FORGERY"
ENDPROC
REM ** HELPERS **
DEFPROCHEADER(H$)
PRINTCHR$(131);CHR$(157);CHR$(132);H$
PRINT
ENDPROC
DEFPROCNEXTPAGE
PRINTTAB(0,24);" Press any key to continue";
A$=GET$
CLS
ENDPROC
DEFPROCSTARTGAME
PRINTTAB(0,24);" Press any key to start the game.";
A$=GET$
ENDPROC