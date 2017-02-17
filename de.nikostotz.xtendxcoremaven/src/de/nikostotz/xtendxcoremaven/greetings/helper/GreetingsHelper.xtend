package de.nikostotz.xtendxcoremaven.greetings.helper

import de.nikostotz.xtendxcoremaven.greetings.AllGreetings

class GreetingsHelper {
	def static String compileAllGreetings(AllGreetings it) {
		'''
		Greetings:
			«it.greetings.map[message].join(", ")»
		'''
	}
	
//	def static String compileAllPersons(AllGreetings it) {
//		'''
//		Hello Humans:
//			«it.persons.map[/*describeMyself()*/"tach"].join(", ")»
//		'''
//	}
}