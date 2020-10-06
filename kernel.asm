org 0x7e00
jmp 0x0000:start

data:
	
	;Dados do projeto...
	Serio db 'Serio? Era isso?', 0
	Quase db 'Hmm...',0
	Certo db 'CERTO', 0
	Errado db 'KKKKKKKKKKKKKKKKKKK',0
	Resposta db 'Resposta: ', 0

	QN db 'Qual o seu nome?', 0
	RN db 'Ja vi nomes melhores...', 0

    Q1 db '1 e 1', 0
	R1 db 'TRUE', 0
	I1_0 db '11', 0
	I1_1 db '2', 0
	I1_2 db '1', 0
	Quase1_0 db 'Acorde seu compilador interior', 0
	Quase1_1 db 'toBool()', 0

	Q2 db 'Qual a capital da Assiria?',0
	R2 db 0
	I2 db 'ASSUR', 0
	Quase2_0 db 'A Assiria nem existe mais, maluco', 0
	Quase2_1 db 'Tem resposta nao', 0

	Q3_0 db 'Na noite eu venho, sem ser chamada', 0
	Q3_1 db 'De dia, estou perdida, sem ser roubada', 0
	Q3_2 db 'Sou como um diamante, mas nao sou joia', 0
	Q3_3 db 'O que eu sou?', 0
	R3 db 'ESTRELA', 0
	I3 db 0
	Quase3 db 'Brilha brilha', 0

	Q4_0 db 'Ha 10 velas acesas', 0
	Q4_1 db 'Se o vento apagar 3, quantas restam?', 0
	R4 db '10', 0
	I4 db '7', 0
	Quase4 db 'Ah ah ah, apagado', 0

	Q5_0 db 'Qual a velocidade no ar', 0
	Q5_1 db 'de uma andorinha sem carga? (em km/h)', 0
	R5 db '32', 0

	Q6_0 db 'E carregando um coco?', 0
	R6 db '0', 0
	Quase6 db 'Andorinha maromba, ein?', 0

	Q7_0 db 'Polones', 0
	R7 db 'CALCOGENIOS', 0
	I7_0 db 'POLONESES', 0
	I7_1 db 'SETE', 0
	I7_2 db '7', 0
	Quase7_0 db 'Quantos?', 0
	Quase7_1 db 'Sete o que?', 0
	Quase7_2 db 'Ta quase', 0

	QCOR db 'Ha 1 impostor entre nos', 0
	QVOTO db 'SEU VOTO: ', 0
	Qnot db ' nao era o Impostor', 0
	Qyes db ' era o Impostor', 0
	Qremain db 'impostor restante', 0
	Q1imp db '1 ',0
	Q0imp db '0 ',0
	BoolImp db 0

	VERMELHO db 'VERMELHO', 0
	AZUL db 'AZUL', 0
	VERDE db 'VERDE', 0
	ROSA db 'ROSA', 0
	; LARANJA db 'LARANJA', 0
	AMARELO db 'AMARELO', 0
	CINZA db 'CINZA', 0
	BRANCO db 'BRANCO', 0
	ROXO db 'ROXO', 0
	MARROM db 'MARROM', 0
	CIANO db 'CIANO', 0
	LIMAO db 'VERDE CLARO', 0

	QU db '?emon ues o lauQ', 0
	ErradoU_0 db 'Parabens', 0
	ErradoU_1 db 'Voce errou o proprio nome', 0

	Entrada times 101 db 0
	Nome times 101 db 0

	Epilepsia db 'Se voce NAO possui epilepsia, digite 1', 0

	commonjooj db ' .------------------.                                                           '
			   db ' | CRIADORES: CMSA  |              __________                                   '
			   db ' |            SSSF2 |            /            \                                 '
			   db ' |            VHRM  |           |     NICE     |                                '
			   db ' "------------------"            \____________/                                 '
			   db '                            ( /-.-)/        \(O-O\ )                            '
			   db '                 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                 '
			   db '       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@       '
			   db '@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@', 0
	; jooj0 db '@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&***********(@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@/*******************@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(**********/@@@@@@@@#****&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(***/@@@#***%@@((((((#@@/@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(*****(@@@%***&@#(((((((@@#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&***************@@#(((((((&@#****(@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@/****************&@#(((((((@@/*****#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&******************%@@(((((((@@*******@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&********************@@%(((((@@#*******(@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(********************/@@#(((&@&*********@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#**********************&@@(@@&*********(@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(@@/***********************@@@%**********@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%**/@@#***********************/#**********#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@******#@@%*********************************@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#***********@@@@/****************************%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&******************/@@@@@@@/*********************%@@@@@@@@@@@@@@@@@@@@@@@@@@&*****************************************************@@@@@@@@@@@@@@@@@@@@@@@&********************************************************/@@@@@@@@@@@@@@@@@@@@@/***********************************************************@@@@@@@@@@@@@@@@@@@@%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%&@@@@@@@@@@', 0
	jooj3 db '@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@/..............(@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&...................../@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%.........*@@@@@@@@@&.....#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@...@@@@,../@@(//////&@(&@@@*(@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(....(@@%...(@@///////%@@/@@&..@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*............#@&///////%@@.......#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@/............./@@///////%@&.........&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#..............,@@#//////@@*..........*@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*.............../@@(////&@&.............&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.................(@@#//%@&..............*@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@,.................,@@@@@@...............*@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#...................*@@%................#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&....................,.................&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(......................................%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@((@@#.........................................,%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@,..,@@@/............................................(@@@@@@@@@@@@@@@@@@@@@@@@@@@/.....*@@@@%,...........................................,%@@@@@@@@@@@@@@@@@@@@@@&..........*&@@@%............................................#@@@@@@@@@@@@@@@@@@@%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%@@@@@@@', 0
	jooj1 db '&*..........,&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*...................&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(............,(##(,......%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#....(&*....(@@@#((#@@@(./@/(@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.....@@@@#..,@@(//////(@@%@@@%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.......%@/...,@@(//////(@@/(@(..&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@,.............,@@(//////(@@,......,@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@................&@#//////(@@,........(@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(................%@@//////@@#...........@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@/.................&@%////%@&............*@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@/..................&@@(/%@@,.............@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#...................*@@@@&............../@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#....................(@@...............%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.....................................@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%,@@&...................................(@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#....*@@@,..................................@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&,.........#@@@&*.............................../@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*................,#@@@*............................,@@@@@@@@@@@@@@@@@@@@@@@@@%......................................................*@@@@@@@@@@@@@@@@@@@@@@@.........................................................*@@@@@@@@@@@@@@@@@@@@@,..........................................................&@@@@@@@@@@@@@@@@@@@&%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%@@@@@@@@@@@', 0
	; jooj2 db '@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#,........./@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#,.................*@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&,..........#@@@@@@@#,...%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&,..,@@@%.../@@(/////(@@/&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@/....*@@@@,..#@&///////%@%@@@@&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@,.............#@%///////#@&....,@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@,..............#@&///////%@%....../@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*.............../@@///////@@(........(@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%................,@@&/////&@&..........,@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(..................&@%///#@@,...........,@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(...................#@@(%@@,............,&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&,....................&@@@,.............,@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%.....................,%...............#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#....................................%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%@@@(..................................#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@...,@@@@&,................................,(@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&,......../@@@@@@/................................,@@@@@@@@@@@@@@@@@@@@@@@@@@@@*....................................................../@@@@@@@@@@@@@@@@@@@@@@&,........................................................../@@@@@@@@@@@@@@@@@@@/.............................................................,@@@@@@@@@@@@@@@@@%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%@@@@@', 0
	; jooj4 db '@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@/**************%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&*********************%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@/*************&@@@@@%*****&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%*****%@@/***(@@%////(&@@/#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@******(@@@@***%@%///////&@%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*********/*****&@%///////%@%*****@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@****************&@%///////&@#*******@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#****************#@@///////@@(********(@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*****************/@@#/////&@@**********/@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%******************/@@(///#@@************(@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&********************@@&/#@@/************(@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(********************(@@@@**************@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#*********************%@***************@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@/*************************************/&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*%@@#*****************************************(@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&***/@@@%*******************************************(@@@@@@@@@@@@@@@@@@@@@@@@@@@@*******%@@@@&(*****************************************(@@@@@@@@@@@@@@@@@@@@@@@@(************#@@@@@#**************************************/@@@@@@@@@@@@@@@@@@@@@@%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%&@@@@@@@@@@@@', 0
	; jooj5 db '@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&/*********(@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&******************/@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@************************%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*************@@@@@@@@@@/***(@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#*****%@@@#***@@#//////#@@#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#*******@@@***/@@(//////(@@#@@@/@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#**************/@@///////(@@(*****(@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%****************@@#//////(@@********#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@/****************%@@//////&@%**********@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@******************@@#////#@@/***********@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@/******************@@&//(@@/************&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@/******************#@@&@@/*************&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#*******************&@@/**************%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@/%@@/************************************(@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(***%@@%*************************************(@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%*******@@@@#************************************(@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%***********#@@@@@@@/*******************************@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%@@@@@@@@@@@@@@@@@@@@', 0
	; jooj6 db '@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#,,,,,,,,,,,,(@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#,,,,,,,,,,,,,,,,,,,,(@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&,,,,,,,,,,,,,,,*/(/,,,,,,*@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*,,,,,*#/,,,,*@@@&##%@@@%,*##@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(,,,,,,(@@@@*,,%@%///////@@#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@,,,,,,,,,#@@*,,,%@%///////%@%(@@*#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@,,,,,,,,,,,,,,,,,&@#///////&@#,,,,,*@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*,,,,,,,,,,,,,,,,,%@&///////&@(,,,,,,,%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@/,,,,,,,,,,,,,,,,,,/@@(/////%@@*,,,,,,,,%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%,,,,,,,,,,,,,,,,,,,,#@@(///(@@/,,,,,,,,,*@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(,,,,,,,,,,,,,,,,,,,,,#@@#/(@@#,,,,,,,,,,#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@/,,,,,,,,,,,,,,,,,,,,,,*@@@@@/,,,,,,,,,,/@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&,,,,,,,,,,,,,,,,,,,,,,,,/@@/,,,,,,,,,,,@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&,(@@(,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@/,,,,,*@@@&/,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,*@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*,,,,,,,,,,,*%@@@@@@@@#,,,,,,,,,,,,,,,,,,,,,,*@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%&@@@@@@@@@@@@@@@@@@@@@@@', 0
	; jooj7 db '@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&#/*****(#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%*******************/&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%**************************@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#***************@@@@@@@@@(****/@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(********@@@@/**(@@///////&@#@@@@#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#**********&@@@***#@&///////#@&%@@@*#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&*******************#@&///////#@&******&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@********************(@@///////%@&******/@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#********************/@@(//////@@#*******&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#*********************%@@(////&@&********&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@/(@@/*********************%@@///#@@/*******/@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(***/@@&*********************/@@&%@@*********&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&*********(@@@(********************(@@@*********@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#***************/@@@@@(*****************(*********#@@@@@@@@@@@@@@@@@@@@@@@@@@&************************%@@@@@@@@@@(****************%@@@@@@@@@@@@@@@@@@@@@@@@@&%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%&@@@@@@@@@@@@@@@@@', 0
	jooj8 db '@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%/**************(@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&***********************&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@/************/@@@@@@@@#****/@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@/*****(@@@(***%@&//////%@@(@@@#&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&********#@@@#***@@%///////@@&@@@%/@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(******************@@#///////@@%*****(@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@/*******************@@#///////@@#******%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(********************%@&//////#@@/*******@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(********************/@@(////(@@(********%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&*@@(*********************/@@#///&@&*********(@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%**#@@/**********************@@@(&@%**********&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@/*****(@@#**********************/@@@%**********%@@@@@@@@@@@@@@@@@@@@@@@@@@@@#***********%@@&/*********************##**********#@@@@@@@@@@@@@@@@@@@@@@@@@&*****************/&@@@&*****************************#@@@@@@@@@@@@@@@@@@@@@@@%*************************(&@@@@@@@@@/******************@@@@@@@@@@@@@@@@@@@@@@/*********************************************************&@@@@@@@@@@@@@@@@@@@&%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%&@@@@@@@@@@@@', 0
	; jooj9 db '@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(/////////////#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//////////////////////#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(/////////////@@@@@@@@@(////@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@///////&@@@///(@@#/////(&@%&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%/////////&@@@///#@@///////%@@%@@@/@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#//////////////////%@@///////#@@/////(@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@////////////////////#@@(//////%@@//////#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//////////////////////@@#/////(@@#///////&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&//////////////////////#@&/////%@&////////#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&(@@(//////////////////////%@@(//#@@(////////(@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//(@@(//////////////////////(@@&%@@(/////////%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%/////@@&///////////////////////%@@@///////////@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&/////////@@@///////////////////////&//////////(@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(/////////////#@@@(//////////////////////////////@@@@@@@@@@@@@@@@@@@@@@@@@@@&/////////////////////@@@@@%////////////////////////@@@@@@@@@@@@@@@@@@@@@@@@@(/////////////////////////////(&@@@@%//////////////////@@@@@@@@@@@@@@@@@@@@@@(/////////////////////////////////////////////////////////@@@@@@@@@@@@@@@@@@@@&%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%&@@@@@@@@', 0

;função que seta cursor
set_cursor:
	mov ah, 02h
	mov al, 20h
	mov bh, 00h
	int 10h

	ret

;função pra comparar o nome guardado na pilha
compare_stack_memory:

	pop dx
	cld

	.LOOP:

		pop bx
		lodsb
		
		cmp bl, al
		je .CMP0

		inc cx

	.CLEARSTACK:
		cmp bx, 0
		je .PUSH0
		pop bx
		jmp .CLEARSTACK

	.CMP0:
		 cmp bx, 0
		 je .PUSH0
		 jmp .LOOP

	.PUSH0:
		push bx
		push dx
		ret


; Essa função recebe uma string no reg si e a compara à string em (Resposta), ao mesmo tempo permitindo uma margem de erro entre elas, localizada no reg cx
; O resultado é armazenado em cx, caso suficientemente iguais, cx = 1, no contrário, cx = 0
compare_input_memory:
	; Setar segundo ponteiro de string pra Entrada, posição onde é armazenada os inputs da função get_string
	mov di, Entrada
	cld ; Zera a flag de direção de operações de string (operações de string incrementam di e si)
	.LOOP:

		; Print de debug
		; mov ah, 0eh
		; mov al, '-'
		; mov bl, 7
		; int 10h

		; Compara os dois caracteres apontados por si(Resposta da pergunta) e di(Entrada do usuario), e incrementa ambos ponteiros
		; Se forem iguais, pula pra .CMP0, onde comparamos eles com 0 pra saber se chegamos no final da comparação e as strings são iguais
		cmpsb
		je .CMP0

		; Voltar di e si pra poder checkar os caracteres comparados em cmpsb
		dec si
		dec di

		; Carregar o caractere de si(Resposta) e compara ele com 0, se for, pula pra .END (Strings não são iguais)
		lodsb
		cmp al, 0
		je .END

		; Salva si em bx pra n ser perdido, e move di pra si pra poder comparar o caractere de di com 0, se for, pula pra .END (Strings não são iguais)
		mov bx, si
		mov si, di
		lodsb
		cmp al, 0
		je .END

		; Retorna os endereços de (Resposta) e (Entrada) a seus respectivos registradores
		mov di, si
		mov si, bx

		; Compara se o contador de erros permitidos chegou a 3, se sim, acabou a função e elas não são iguais
		; Senão, decrementa o contador de erros permitidos e volta pro loop de checkagem de igualdade
		inc cx
		cmp cx, 3
		jge return
		jmp .LOOP

	; Função que checka se o caracter de si na última comparação é 0, se for, ambas as strings chegaram em seu fim nas comparações,
	; logo são suficientemente iguais, e a função acaba.
	; Caso não seja, volta ao loop de checkagem de igualdade
	.CMP0:
		dec si
		lodsb
		cmp al, 0
		jne .LOOP

		ret

	; Função que seta cx como 3, o que representa que as strings não são suficientemente iguais e a função acaba
	.END:
		mov cx, 3
		ret

print_jooj:

	push bx ;guardar valor de bl

	mov dh, 0 ;seta cursor pro início
	mov dl, 0
	call set_cursor

	push si ;salva o endereço da última string jooj(frame atual) a ser printada
	mov si, commonjooj
	mov bl, 7
	call print_string_nobreak
	pop si ;joga de volta pra si o endereço do frame jooj a ser printado

	.LOOP:

		lodsb	;enquanto a string não acabar
		cmp al, 0
		je .END

		pop bx ;pega de volta a cor atual guardada na inínio dessa função
		push bx ;salva de novo para ter salvo a cor atual caso precise mudar quando encontrar @

		cmp al, '@' ;se encontrar arroba, muda a cor pra cinza claro
		jne .PRINT
		mov bl, 7 ;cinza 

	.PRINT:
		mov ah, 0xe ;imprime o caractere do frame atual com a cor setada
		int 10h

		jmp .LOOP

	.END:
		pop bx ;tira a cor salva do topo da pilha e bota em bl
		ret ;retorna pra

	

print_string:
	;printa a string e pula linha
	call print_string_nobreak
	
	mov ah, 0eh

	mov al, 0xd	; \r
	int 10h
	mov al, 0xa ; \n
	int 10h

	ret

print_string_nobreak:
	; printa a string sem pular linha
	lodsb
	cmp al,0
	je .end

	mov ah, 0eh
	; mov bl, 15 Pode escolher a cor antes de chamar a função
	int 10h

	jmp print_string_nobreak

	.end:
		ret

;função que conta em cx e dx pra dar delay. (tem setar o tempo em DX antes de chamar)
delay:
	dec dx
	mov cx, 0
		.time:
			inc cx
			cmp cx, 10000
			jne .time

	cmp dx, 0
	jne delay
ret

;
print_string_lento:

	push dx ;salva o valor de dx(tempo do delay) pra não perder quando usar o lodsb

	.LOOP:

	lodsb
	cmp al,0
	je end

	mov ah, 0eh
	; mov bl, 0ah
	int 10h

	pop dx ;pega o valor de dx
	push dx ;bota de volta pra usar enqaunto não acabar o loop
    call delay

	jmp .LOOP

    end:
	pop dx ;tira o valor de dx da pilha pra poder retornar certinho
ret

;ir guardadno caracteres digitados na pilha (usado na última pergunta)
get_string_stack:
	; Salvando o endereço de retorno da pilha no reg c
	pop cx

	.LOOP:
		; Lendo caractere
		mov ah, 0
		int 16h

		; Comparando com backspace para tratá-lo
		cmp al, 0x8
		je .BCKSPC

		; Printando caractere
		mov ah, 0xe
		mov bl, 7
		int 10h

		cmp al, 'a' ;vê se é minusculo
		jl .PUSHAX
		cmp al, 'z'
		jg .PUSHAX
		sub al, 32

		; Salvando caractere na pilha
	.PUSHAX:
		push ax

		; Comparando com enter para terminar a leitura
		cmp al, 13
		jne .LOOP

		; Removendo caractere do enter da pilha
		pop ax

		; Retornando o endereço de retorno à pilha a partir do reg c
		push cx

		mov ah, 0xe
		mov al, 10 ;\n
		mov bl, 7
		int 10h
		
		ret

	; Tratando o backspace
	.BCKSPC:
		; Removendo o caractere da pilha mais recente
		pop ax

		; Caso o valor da pilha seja zero representa que pilha está vazia, logo pushamos o zero de volta e nada é feito
		cmp al, 0
		je .PUSH0

		; Printando o backspace, que por si só apenas retorna o ponteiro de escrita em uma unidade, sem apagar nada
		mov ah, 0xe
		mov al, 0x8
		mov bl, 7
		int 10h

		; Printando espaço, de modo que sobreescreva o caractere que o ponteiro de escrita aponta
		mov ah, 0xe
		mov al, ' '
		mov bl, 7
		int 10h

		; Printando backspace novamente, para deixar o ponteiro de escrita apontando para o espaço que será ocupado pela próxima letra lida
		mov ah, 0xe
		mov al, 8
		mov bl, 7
		int 10h

		; Retorno ao loop de leitura
		jmp .LOOP

	.PUSH0:
		push 0
		jmp .LOOP

; Função que lê caracteres da entrada e os salvam no espaço de memória (Entrada)
get_string_mem:
	cld ;limpa flag de leitura
	mov di, Entrada

get_nome:

	.LOOP:
		; Lendo caractere
		mov ah, 0
		int 16h

		; Comparando com backspace para tratá-lo
		cmp al, 0x8
		je .BCKSPC

		; Printando caractere
		mov ah, 0xe
		mov bl, 7
		int 10h

		; Comparando com enter para terminar a leitura 
		cmp al, 13
		je .END
		
		; Checkando se é minusculo para salvar como maiusculo
		cmp al, 'a'
		jl .STOSB
		cmp al, 'z'
		jg .STOSB
		sub al, 32

		; Salvando caractere na memória apontada por di (Entrada) e volta ao loop
		.STOSB:
			stosb
			jmp .LOOP

	.END:
		; Quebra de linha pra deixar bonitinho, acho que não vai ser necessário
		mov ah, 0xe
		mov al, 10
		mov bl, 7
		int 10h

		; Armazendando 0 no próximo espaço de memória de di(Entrada) para representar o final da string, e então retornar ao endereço da pilha
		mov al, 0
		stosb
		ret

	.BCKSPC: ; R _

		; Jogando o endereço de di para si e decrementando-o pra checkar se depois do backspace di ainda apontaria pra uma posição dentro de (Entrada)
		; Caso não, voltamos ao loop
		mov si, di
		dec si
		lodsb ; R _
		cmp al, 0
		je .LOOP

		; Printando o backspace, que por si só apenas retorna o ponteiro de escrita em uma unidade, sem apagar nada
		mov ah, 0xe
		mov al, 0x8
		mov bl, 7
		int 10h

		; Printando espaço, de modo que sobreescreva o caractere que o ponteiro de escrita aponta
		mov ah, 0xe
		mov al, ' '
		mov bl, 7
		int 10h

		; Printando backspace novamente, para deixar o ponteiro de escrita apontando para o espaço que será ocupado pela próxima letra lida
		mov ah, 0xe
		mov al, 8
		mov bl, 7
		int 10h

		; Decrementando di, para que a próxima escrita em (Entrada) sobreescreva o caractere mais recente
		dec di

		jmp .LOOP

return:
	ret

TELA_QUASE:

	mov ah, 0 ;limpa tela
	mov al, 13
    int 10h

	; Muda cor do background
	mov ah, 0xb  
	mov bh, 0    
	mov bl, 0x1  ;azul
	int 10h	

	mov dh, 10
	mov dl, 17
	call set_cursor

	mov si, Quase ;imprime string de quase
	mov bl, 0eh
	mov cx, 6000
	call print_string_lento

	mov ah, 0 ;espera o enter
	int 16h

	ret

TELA_ERRADO:

	mov ah, 0 ;limpa tela
	mov al, 13
    int 10h

	; Muda cor do background
	; mov ah, 0xb  
	; mov bh, 0    
	; mov bl, 04h  
	; int 10h	

	mov dh, 9
	mov dl, 11
	call set_cursor

	mov si, Errado ;imprime string Errado
	mov bl, 04h
	mov cx, 2000
	call print_string_lento
	
	mov ah, 0
	int 16h

	mov dh, 11
	mov dl, 11
	call set_cursor

	mov si, Entrada
	mov bl, 04h ;vermelho
	mov cx, 3000
	call print_string_lento

	mov dx, 10000
	call delay

	mov dh, 13
	mov dl, 13
	call set_cursor

	mov si, Serio
	mov cx, 3000
	call print_string_lento

	mov ah, 0
	int 16h

	ret

TELA_NOT_IMPOSTOR:

	mov ah, 0
	mov al, 13
    int 10h

	; Muda cor do background
	; mov ah, 0xb  
	; mov bh, 0    
	; mov bl, 04h  
	; int 10h	

	mov dh, 10
	mov dl, 7   ;lembrar de ajustar o dl para cada cor depois
	call set_cursor

	mov si, Entrada ;pegar o nome da cor digitada pela pessoa
	mov bl, 15 		;branco
	mov dx, 3000
	call print_string_lento ;imprime só o nome da cor

	mov cl, byte[BoolImp] ;checa de BoolImp é      0-> não impostor    1-> impostor
	cmp cl, 0
	jne .EH_ELE ;se for 0 segue
		mov si, Qnot ;string de não
		mov bl, 15
		mov dx, 3000
		call print_string_lento

		mov dx, 16000 ;dar um tempinho pra imprimir  string de restantes
		call delay

		mov dh, 12
		mov dl, 10
		call set_cursor

		mov si, Q1imp ;"1 " .... restante
		mov bl, 15
		call print_string_nobreak
		jmp .end
	.EH_ELE: ;se for 1
		mov si, Qyes
		mov bl, 15
		mov dx, 3000
		call print_string_lento

		mov dx, 16000 ;dar um tempinho pra imprimir  string de restantes
		call delay

		mov dh, 12
		mov dl, 10
		call set_cursor

		mov si, Q0imp ;"0 " .... restante
		mov bl, 15
		call print_string_nobreak		
	.end:
	mov si, Qremain ;string "impostor restante"
	mov bl, 15
	call print_string

	mov ah, 0 ;espera apertar quaqluer tecla
	int 16h

	; mov dx, 80000
    ; call delay

	ret

;animaçãozinha do @ voando
TELA_EJECTED:
	mov cx, 0 	;cx vai indicar a posição do cursor. Começando em 0
	push cx 	;guardar valor de cx pq ele vai ser modificado em call delay
	
	.LOOP:	
	;limpa tela
	mov ah, 0
	mov al, 13
    int 10h

	mov dh, 12
	mov dl, cl ;seta a posição do cursor pra que cl guarda
	call set_cursor

	mov ah, 0eh ;imprime o tripulante :v     a cor já foi definida antes de chamar TELA_EJECTED
	mov al, '@'
	int 10h

	mov dx, 2000 ;dá um temppjnho
    call delay

	pop cx ;resgata cl
	inc cx ;incrementa a posição do cursor
	cmp cx, 41 ;última posição da tela (fora dela)
	je .end
	push cx ;guardar cl
	jmp .LOOP

	.end:
	; mov ah, 0
	; int 16h

ret 

; int main()
start:
    xor ax, ax ;limpa registradores
    mov ds, ax
    mov es, ax
    
    ;Código do projeto...

    int 10h

    mov al, 13
    int 10h

	; Muda cor do background
	; mov ah, 0xb  
	; mov bh, 0     
	; mov bl, 1   
	; int 10h	

	; jmp ULTIMA_PERGUNTA ; development hacks

;primeira tela
PEGANOME:

	mov ah, 0 ;limpa tela
	mov al, 13
    int 10h

	mov dx, 10000
	call delay

	; Colocando o cursor de escrita da tela na posição certa
	mov dh, 05h
	mov dl, 12
	call set_cursor

	; Printando primeira pergunta
    mov si, QN
	mov bl, 10
	mov dx, 4000
    call print_string_lento

	mov dx, 10000
	call delay

	mov dh, 17h
	mov dl, 0
	call set_cursor

	; Printando "Resposta: "
	mov si, Resposta
	mov bl, 15
	call print_string_nobreak

	cld
	mov di, Nome
	call get_nome

;já vi nomes melhores
PRE1:

	mov ah, 0
	mov al, 13
    int 10h

	; Colocando o cursor de escrita da tela na posição certa
	mov dh, 09h
	mov dl, 9
	call set_cursor

	; Printando primeira pergunta
    mov si, RN
	mov bl, 14
	mov dx, 2000
    call print_string_lento

	mov ah, 0
	int 16h

	; mov dx, 3000
	; call delay

PERGUNTA1:

	mov ah, 0
	mov al, 13
    int 10h

	mov dx, 10000
	call delay

	; Colocando o cursor de escrita da tela na posição certa
	mov dh, 05h
	mov dl, 18
	call set_cursor

	; Printando primeira pergunta
    mov si, Q1
	mov bl, 15
	mov dx, 8000
    call print_string_lento
	
	mov dx, 10000
	call delay

	mov dh, 17h
	mov dl, 0
	call set_cursor

	; Printando "Resposta: "
	mov si, Resposta
	mov bl, 15
	call print_string_nobreak

	; Salvando a leitura da entrada na pilha até apertarem enter
	call get_string_mem

	mov ax, PERGUNTA1 ;salva o endereço do inínico pra pode voltar caso a pessoa erre a resposta
	push ax

	;compara respostas esperadas que são erradas, e dá uma dica
	mov si, I1_0
	mov cx, 0
	call compare_input_memory
	
	cmp cx, 0
	je TELA_QUASE1_0

	mov si, I1_1
	mov cx, 0
	call compare_input_memory
	
	cmp cx, 0
	je TELA_QUASE1_0

	mov si, I1_2
	mov cx, 0
	call compare_input_memory
	
	cmp cx, 0
	je TELA_QUASE1_1

	; Movemos ao ponteiro de primeira string da comparação pra a primeira resposta (R1), e setamos o contador de erros para 0 (cx)
	; e então chamamos a função de comparação entre a string de si e a string em (Entrada)
	mov si, R1
	mov cx, 0
	call compare_input_memory
	
	cmp cx, 3; Se cx = 3, não são suficientemente iguais
	je TELA_ERRADO
	cmp cx, 0
	je PERGUNTA2
	jmp TELA_QUASE

TELA_QUASE1_0:
	mov ah, 0
	mov al, 13
    int 10h

	mov dh, 10
	mov dl, 5
	call set_cursor

	mov si, Quase1_0
	mov bl, 0eh
	mov cx, 2000
	call print_string_lento

	mov ah, 0
	int 16h

	ret

TELA_QUASE1_1:
	mov ah, 0
	mov al, 13
    int 10h

	mov dh, 10
	mov dl, 16
	call set_cursor

	mov si, Quase1_1
	mov bl, 0eh
	mov cx, 6000
	call print_string_lento

	mov ah, 0
	int 16h

	ret

PERGUNTA2:
	pop ax

	mov ah, 0
	mov al, 13
    int 10h

	mov dx, 10000
	call delay

	; Colocando o cursor de escrita da tela na posição certa
	mov dh, 05h
	mov dl, 7
	call set_cursor

	; Printando pergunta
    mov si, Q2
	mov bl, 15
	mov dx, 3000
    call print_string_lento

	mov dx, 10000
	call delay

	mov dh, 17h
	mov dl, 0
	call set_cursor

	; Printando "Resposta: "
	mov si, Resposta
	mov bl, 15
	call print_string_nobreak

	; Salvando a leitura da entrada na pilha até apertarem enter
	call get_string_mem

	mov ax, PERGUNTA2 ;salva o endereço do inínico pra pode voltar caso a pessoa erre a resposta
	push ax

	mov si, I2
	mov cx, 0
	call compare_input_memory
	
	cmp cx, 3
	jl TELA_QUASE2
	; Movemos ao ponteiro de primeira string da comparação pra a primeira resposta (R1), e setamos o contador de erros para 0 (cx)
	; e então chamamos a função de comparação entre a string de si e a string em (Entrada)
	mov si, R2
	mov cx, 0
	call compare_input_memory
	
	cmp cx, 3; Se cx = 3, não são suficientemente iguais
	je TELA_ERRADO
	cmp cx, 0
	je PERGUNTA3
	jmp TELA_QUASE

TELA_QUASE2:
	mov ah, 0
	mov al, 13
    int 10h

	mov dh, 9
	mov dl, 4
	call set_cursor

	mov si, Quase2_0
	mov bl, 0eh
	mov dx, 2000
	call print_string_lento

	mov ah, 0
	int 16h

	mov dh, 11
	mov dl, 12
	call set_cursor

	mov si, Quase2_1
	mov bl, 0eh
	mov dx, 2000
	call print_string_lento

	mov ah, 0
	int 16h

	ret

PERGUNTA3:
	pop ax

	mov ah, 0
	mov al, 13
    int 10h

	mov dx, 10000
    call delay

	; Colocando o cursor de escrita da tela na posição certa
	mov dh, 05h
	mov dl, 3
	call set_cursor

	; Printando pergunta
    mov si, Q3_0
	mov bl, 15
	mov dx, 1000
    call print_string_lento

	mov dx, 10000
    call delay

	mov dh, 07h
	mov dl, 1
	call set_cursor

	; Printando pergunta
    mov si, Q3_1
	mov bl, 15
    mov dx, 2700
    call print_string_lento

	mov dx, 10000
    call delay

	mov dh, 09h
	mov dl, 1
	call set_cursor

	; Printando pergunta
    mov si, Q3_2
	mov bl, 15
    mov cx, 2700
    call print_string_lento

	mov dx, 10000
    call delay

	mov dh, 11
	mov dl, 14
	call set_cursor

	; Printando pergunta
    mov si, Q3_3
	mov bl, 15
    mov dx, 3500
    call print_string_lento

	mov dx, 20000
    call delay

	mov dh, 17h
	mov dl, 0
	call set_cursor

	; Printando "Resposta: "
	mov si, Resposta
	mov bl, 15
	call print_string_nobreak

	; Salvando a leitura da entrada na pilha até apertarem enter
	call get_string_mem

	mov ax, PERGUNTA3
	push ax

	mov si, I3
	mov cx, 0
	call compare_input_memory
	
	cmp cx, 0
	je TELA_QUASE3

	; Movemos ao ponteiro de primeira string da comparação pra a primeira resposta (R1), e setamos o contador de erros para 0 (cx)
	; e então chamamos a função de comparação entre a string de si e a string em (Entrada)
	mov si, R3
	mov cx, 0
	call compare_input_memory
	
	cmp cx, 3; Se cx = 3, não são suficientemente iguais
	je TELA_ERRADO
	cmp cx, 0
	je PERGUNTA4
	jmp TELA_QUASE

TELA_QUASE3:
	mov ah, 0
	mov al, 13
    int 10h

	mov dh, 10
	mov dl, 14
	call set_cursor

	mov si, Quase3
	mov bl, 0eh
	mov dx, 2000
	call print_string_lento

	mov ah, 0
	int 16h

	ret

PERGUNTA4:
	pop ax

	mov ah, 0
	mov al, 13
    int 10h

	mov dx, 10000
    call delay

	; Colocando o cursor de escrita da tela na posição certa
	mov dh, 05h
	mov dl, 11
	call set_cursor

	; Printando pergunta
    mov si, Q4_0
	mov bl, 15
	mov dx, 2500
    call print_string_lento

	mov dx, 20000
    call delay

	; Colocando o cursor de escrita da tela na posição certa
	mov dh, 07h
	mov dl, 2
	call set_cursor

	; Printando pergunta
    mov si, Q4_1
	mov bl, 15
	mov dx, 2300
    call print_string_lento

	mov dx, 10000
    call delay

	mov dh, 17h
	mov dl, 0
	call set_cursor

	; Printando "Resposta: "
	mov si, Resposta
	mov bl, 15
	call print_string_nobreak

	; Salvando a leitura da entrada na pilha até apertarem enter
	call get_string_mem

	mov ax, PERGUNTA4
	push ax

	mov si, I4
	mov cx, 0
	call compare_input_memory
	
	cmp cx, 0
	je TELA_QUASE4
	; Movemos ao ponteiro de primeira string da comparação pra a primeira resposta (R1), e setamos o contador de erros para 0 (cx)
	; e então chamamos a função de comparação entre a string de si e a string em (Entrada)
	mov si, R4
	mov cx, 0
	call compare_input_memory
	
	cmp cx, 1; Se cx = 3, não são suficientemente iguais
	jg TELA_ERRADO
	cmp cx, 0
	je PERGUNTA5
	jmp TELA_QUASE

TELA_QUASE4:
	mov ah, 0
	mov al, 13
    int 10h

	mov dh, 10
	mov dl, 12
	call set_cursor

	mov si, Quase4
	mov bl, 0eh
	mov dx, 2000
	call print_string_lento

	mov ah, 0
	int 16h

	ret

PERGUNTA5:
	pop ax

	mov ah, 0
	mov al, 13
    int 10h

	mov dx, 10000
    call delay

	; Colocando o cursor de escrita da tela na posição certa
	mov dh, 05h
	mov dl, 8
	call set_cursor

	; Printando pergunta
    mov si, Q5_0
	mov bl, 15
	mov dx, 2000
    call print_string_lento

	; Colocando o cursor de escrita da tela na posição certa
	mov dh, 07h
	mov dl, 2
	call set_cursor

	; Printando pergunta
    mov si, Q5_1
	mov bl, 15
	mov dx, 2000
    call print_string_lento

	mov dx, 10000
    call delay

	mov dh, 17h
	mov dl, 0
	call set_cursor

	; Printando "Resposta: "
	mov si, Resposta
	mov bl, 15
	call print_string_nobreak

	; Salvando a leitura da entrada na pilha até apertarem enter
	call get_string_mem

	mov ax, PERGUNTA5
	push ax

	; Movemos ao ponteiro de primeira string da comparação pra a primeira resposta (R1), e setamos o contador de erros para 0 (cx)
	; e então chamamos a função de comparação entre a string de si e a string em (Entrada)
	mov si, R5
	mov cx, 0
	call compare_input_memory
	
	cmp cx, 1; Se cx = 3, não são suficientemente iguais
	jg TELA_ERRADO
	cmp cx, 0
	je PERGUNTA6
	jmp TELA_QUASE

PERGUNTA6:
	
	pop ax

	mov ah, 0
	mov al, 13
    int 10h

	mov dx, 10000
    call delay

	; Colocando o cursor de escrita da tela na posição certa
	mov dh, 05h
	mov dl, 10
	call set_cursor

	; Printando pergunta
    mov si, Q6_0
	mov bl, 15
	mov dx, 3300
    call print_string_lento
	
	; Setando cursor para Resposta
	mov dh, 17h
	mov dl, 0
	call set_cursor

	mov dx, 10000
    call delay

	; Printando "Resposta: "
	mov si, Resposta
	mov bl, 15
	call print_string_nobreak

	; Salvando a leitura da entrada na pilha até apertarem enter
	call get_string_mem

	mov ax, PERGUNTA6
	push ax

	; Movemos ao ponteiro de primeira string da comparação pra a sexta resposta (R6), e setamos o contador de erros para 0 (cx)
	; e então chamamos a função de comparação entre a string de si e a string em (Entrada)
	mov si, R6
	mov cx, 0
	call compare_input_memory
	
	; cmp cx, 1; Se cx = 3, não são suficientemente iguais
	; jg TELA_ERRADO
	cmp cx, 0
	je PERGUNTA7
	jg TELA_QUASE6

TELA_QUASE6:
	mov ah, 0
	mov al, 13
    int 10h

	mov dh, 10
	mov dl, 8
	call set_cursor

	mov si, Quase6
	mov bl, 0eh
	mov dx, 2000
	call print_string_lento

	mov ah, 0
	int 16h

	ret

PERGUNTA7:
	
	pop ax

	mov ah, 0
	mov al, 13
    int 10h

	mov dx, 10000
    call delay

	;xor cx, cx
	mov cx, 7
	
	mov dh, 03h

	.LOOP7:
		; Colocando o cursor de escrita da tela na posição certa
		mov dl, 17
		call set_cursor

		; Printando pergunta
		mov si, Q7_0
		mov bl, 15

		push cx
		push dx

		mov dx, 1500
		call print_string_lento

		pop dx
		pop cx

		; Interrupção de teclado para aguardar uma tecla -> tirei pq é um saco apertar enter 8x
		;mov ah, 0
		;int 16h

		add dh, 2
		dec cx
		cmp cx, 0
		jne .LOOP7

	
	mov dx, 10000
    call delay

	; Setando cursor para Resposta
	mov dh, 17h
	mov dl, 0
	call set_cursor

	; Printando "Resposta: "
	mov si, Resposta
	mov bl, 15
	call print_string_nobreak

	; Salvando a leitura da entrada na pilha até apertarem enter
	call get_string_mem

	mov ax, PERGUNTA7
	push ax

	mov si, I7_0
	mov cx, 0
	call compare_input_memory
	
	cmp cx, 0
	je TELA_QUASE7_0

	mov si, I7_1
	mov cx, 0
	call compare_input_memory
	
	cmp cx, 0
	je TELA_QUASE7_1

	mov si, I7_2
	mov cx, 0
	call compare_input_memory
	
	cmp cx, 0
	je TELA_QUASE7_1

	; Movemos ao ponteiro de primeira string da comparação pra a sexta resposta (R6), e setamos o contador de erros para 0 (cx)
	; e então chamamos a função de comparação entre a string de si e a string em (Entrada)
	mov si, R7
	mov cx, 0
	call compare_input_memory
	
	cmp cx, 1; Se cx = 3, não são suficientemente iguais
	jg TELA_ERRADO
	cmp cx, 0
	je PERGUNTACOR
	jmp TELA_QUASE7_2
	
TELA_QUASE7_0:
	mov ah, 0
	mov al, 13
    int 10h

	mov dh, 10
	mov dl, 16
	call set_cursor

	mov si, Quase7_0
	mov bl, 0eh
	mov dx, 2000
	call print_string_lento

	mov ah, 0
	int 16h

	ret
TELA_QUASE7_1:
	mov ah, 0
	mov al, 13
    int 10h

	mov dh, 10
	mov dl, 15
	call set_cursor

	mov si, Quase7_1
	mov bl, 0eh
	mov dx, 2000
	call print_string_lento

	mov ah, 0
	int 16h

	ret
TELA_QUASE7_2:
	mov ah, 0
	mov al, 13
    int 10h

	mov dh, 10
	mov dl, 16
	call set_cursor

	mov si, Quase7_2
	mov bl, 0eh
	mov dx, 2000
	call print_string_lento

	mov ah, 0
	int 16h

	ret




PERGUNTACOR:
	pop ax

	mov ah, 0
	mov al, 13
    int 10h

	mov dx, 10000
    call delay

	; Colocando o cursor de escrita da tela na posição certa
	mov dh, 07h
	mov dl, 9h
	call set_cursor

	; Printando pergunta
    mov si, QCOR
	mov bl, 15
	mov dx, 3500
    call print_string_lento

	mov dx, 20000
    call delay

	mov dh, 17h
	mov dl, 0
	call set_cursor

	; Printando "Resposta: "
	mov si, QVOTO
	mov bl, 15
	call print_string_nobreak

	; Salvando a leitura da entrada na pilha até apertarem enter
	call get_string_mem

	mov ax, PERGUNTACOR ;salva o endereço do inínico pra pode voltar caso a pessoa erre a resposta
	push ax

	;testes pra ver qual a string de cor digitada
	.VERMELHO:
	mov si, VERMELHO ;carrega a stringa a ser comparada
	mov cx, 0
	call compare_input_memory ;compara
	cmp cx, 0 ;ve se tem 0 diferenças
	jne .AZUL ;se não for VERMELHO então pula pro AZUL
	mov bl, 4 ; vermelho ;se for, então seta a cor pra vermelho
	jmp .NOT_IMPOSTOR ; e pula pra .NOT_IMPOSTOR

	;mesmo processo com outras cores
	.AZUL:
	mov si, AZUL
	mov cx, 0
	call compare_input_memory
	cmp cx, 0
	jne .VERDE
	mov bl, 1 ; AZUL
	jmp .NOT_IMPOSTOR
	
	.VERDE:
	mov si, VERDE
	mov cx, 0
	call compare_input_memory
	cmp cx, 0
	jne .ROSA
	mov bl, 2 ; VERDE
	jmp .NOT_IMPOSTOR

	.ROSA:
	mov si, ROSA
	mov cx, 0
	call compare_input_memory
	cmp cx, 0
	jne .AMARELO
	mov bl, 13 ; ROSA
	jmp .NOT_IMPOSTOR

	.AMARELO:
	mov si, AMARELO
	mov cx, 0
	call compare_input_memory
	cmp cx, 0
	jne .CINZA
	mov bl, 14 ; AMARELO
	jmp .NOT_IMPOSTOR

	.CINZA:
	mov si, CINZA
	mov cx, 0
	call compare_input_memory
	cmp cx, 0
	jne .BRANCO
	mov bl, 7 ; CINZA
	jmp .NOT_IMPOSTOR

	.BRANCO:
	mov si, BRANCO
	mov cx, 0
	call compare_input_memory
	cmp cx, 0
	jne .ROXO
	mov bl, 15 ; BRANCO
	jmp .NOT_IMPOSTOR

	.ROXO:
	mov si, ROXO
	mov cx, 0
	call compare_input_memory
	cmp cx, 0
	jne .MARROM
	mov bl, 5 ; ROXO
	jmp .NOT_IMPOSTOR

	.MARROM:
	mov si, MARROM
	mov cx, 0
	call compare_input_memory
	cmp cx, 0
	jne .CIANO ;se não foi nenhuma das cores até agora, pula pro ciano q é o impsotor
	mov bl, 6 ; MARROM
	; jmp .NOT_IMPOSTOR

	.NOT_IMPOSTOR:
	call TELA_EJECTED ;chama a tela do @ voando
	je TELA_NOT_IMPOSTOR ;tela de imprimir se era ou não impostor

	.CIANO:    ;mesma coisa dos testes das outras cores
	mov si, CIANO
	mov cx, 0
	call compare_input_memory
	cmp cx, 0
	je .THE_IMPOSTOR 

	.ERRADO: ;se não pegou nenhuma das coes até agora, então a string n é válida
	jmp TELA_ERRADO ;o tela errado tem um ret no final

	.THE_IMPOSTOR:
	mov bl, 11 ; CIANO   ;muda a cor
	call TELA_EJECTED
	pop ax ;tirar o PERGUNTACOR: da pilha
	mov byte[BoolImp], 1 ;seta o booleano de impostor pra 1
	call TELA_NOT_IMPOSTOR  ;por chamar com um call, ele vai seguir o fluxo aki pra baixo e ir para ULTIMA_PERGUNTA:

ULTIMA_PERGUNTA:

	mov ah, 0 ;limpa tela
	mov al, 13
    int 10h

	mov dx, 10000
    call delay

	; Colocando o cursor de escrita da tela na posição certa
	mov dh, 05h
	mov dl, 12
	call set_cursor

	; Printando primeira pergunta
    mov si, QU
	mov bl, 11
	mov dx, 6000
    call print_string_lento

	mov dx, 20000
    call delay

	mov dh, 17h
	mov dl, 0
	call set_cursor

	; Printando "Resposta: "
	mov si, Resposta
	mov bl, 15
	call print_string_nobreak

	; Salvando a leitura da entrada na pilha até apertarem enter
	call get_string_stack

	; Movemos ao ponteiro de primeira string da comparação pra a primeira resposta (R1), e setamos o contador de erros para 0 (cx)
	; e então chamamos a função de comparação entre a string de si e a string em (Entrada)
	mov si, Nome
	mov cx, 0
	call compare_stack_memory

	cmp cx, 0; Se cx = 3, não são suficientemente iguais
	je EPILEPSY_WARNING

ULTIMA_TELA_ERRADA:
	mov ah, 0
	mov al, 13
    int 10h

	; Muda cor do background
	; mov ah, 0xb  
	; mov bh, 0    
	; mov bl, 04h  
	; int 10h	

	mov dh, 10
	mov dl, 16
	call set_cursor

	mov si, ErradoU_0
	mov bl, 10
	mov dx, 2000
	call print_string_lento
	
	mov ah, 0
	int 16h

	mov ah, 0
	mov al, 13
	int 10h

	mov dx, 10000
    call delay

	mov dh, 12
	mov dl, 8
	call set_cursor

	mov si, ErradoU_1
	mov bl, 4
	mov dx, 3000
	call print_string_lento

	mov ah, 0
	int 16h

	jmp ULTIMA_PERGUNTA

;tela de aviso de imagens perigosas aos seus lindos olhos
EPILEPSY_WARNING:
	mov ah, 0
	mov al, 12h
	int 10h

	mov dh, 10
	mov dl, 20
	call set_cursor

	mov si, Epilepsia
	mov bl, 15
	call print_string

	mov ah, 0
	int 16h

	cmp al, '1'
	je VICTORY ;animação do jooj

	mov ah, 0
	mov al, 12h
	int 10h

	mov si, commonjooj ;printa só a string commonjooj
	mov bl, 15
	call print_string

	jmp $

;animação do jooj
VICTORY:
	mov ah, 0 ;limpa tela
	mov al, 12h ;modo de vídeo maior
	int 10h

	mov si, jooj3 ;carrega o primeiro frame da animação

	.B1:
	mov bl, 9 ;começa com a cor 9 e vai até a 14. 15 é o fim, e reseta
	jmp .LOOP

	.JOOJ_LOOP:
	mov si, jooj3

	.LOOP:
	
	call print_jooj ;printa o frame

	mov dx, 2000 ;espera um poquinho
	call delay

	inc bl ;muda a cor
	cmp bl, 15
	je .B1 ;se for 15 então volta pta .B1 pra resetar a cor

	cmp si, jooj8 	;quando print_jooj acaba, o si está apontnado para o próximo frame.
					;Então caso ele tenha passado do 3º frame (jooj8) ele volta pra JOOJ_LOOP pra resetar;
	jg .JOOJ_LOOP

	jmp .LOOP

jmp $ ;cabosse