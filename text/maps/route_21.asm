_Route21BattleText1::
	text "You want to know"
	line "if the fish are"
	cont "biting?"
	done

_Route21EndBattleText1::
	text "Dang!"
	prompt

_Route21AfterBattleText1::
	text "I can't catch"
	line "anything good!"
	done

_Route21BattleText2::
	text "I got a big haul!"
	line "Wanna go for it?"
	done

_Route21EndBattleText2::
IF DEF(_BLUE)
	text "Darn Gyarados!"
ELSE
	text "Darn Magikarp!"
ENDC
	prompt

_Route21AfterBattleText2::
IF DEF(_BLUE)
	text "Gyarados isn't as"
	line "tough as you"
	cont "might think."
ELSE
	text "I seem to only"
	line "catch Magikarp!"
ENDC
	done

_Route21BattleText3::
	text "The sea cleanses"
	line "my body and soul!"
	done

_Route21EndBattleText3::
	text "Ayah!"
	prompt

_Route21AfterBattleText3::
	text "I like the"
	line "mountains too!"
	done

_Route21BattleText4::
	text "What's wrong with"
	line "me swimming?"
	done

_Route21EndBattleText4::
	text "Cheap shot!"
	prompt

_Route21AfterBattleText4::
	text "I look like what?"
	line "A studded inner"
	cont "tube? Get lost!"
	done

_Route21BattleText5::
	text "I caught all my"
	line "#mon at sea!"
	done

_Route21EndBattleText5::
	text "Diver!!"
	line "Down!!"
	prompt

_Route21AfterBattleText5::
	text "Where'd you catch"
	line "your #mon?"
	done

_Route21BattleText6::
	text "Right now, I'm in"
	line "a triathlon meet!"
	done

_Route21EndBattleText6::
	text "Pant...pant..."
	line "pant..."
	prompt

_Route21AfterBattleText6::
	text "I'm beat!"
	line "But, I still have"
	cont "the bike race and"
	cont "marathon left!"
	done

_Route21BattleText7::
	text "Ahh! Feel the sun"
	line "and the wind!"
	done

_Route21EndBattleText7::
	text "Yow!"
	line "I lost!"
	prompt

_Route21AfterBattleText7::
	text "I'm sunburnt to a"
	line "crisp!"
	done

_Route21BattleText8::
	text "Hey, don't scare"
	line "away the fish!"
	done

_Route21EndBattleText8::
	text "Sorry!"
	line "I didn't mean it!"
	prompt

_Route21AfterBattleText8::
	text "I was just angry"
	line "that I couldn't"
	cont "catch anything."
	done

_Route21BattleText9::
	text "Keep me company"
	line "'til I get a hit!"
	done

_Route21EndBattleText9::
	text "That burned some"
	line "time."
	prompt

_Route21AfterBattleText9::
	text "Oh wait! I got a"
	line "bite! Yeah!"
	done

