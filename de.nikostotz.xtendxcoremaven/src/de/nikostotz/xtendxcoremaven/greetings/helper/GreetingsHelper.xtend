package de.nikostotz.xtendxcoremaven.greetings.helper

import de.nikostotz.xtendxcoremaven.greetings.AllGreetings

class GreetingsHelper {
	// This method is called from greetings.xcore and has AllGreetings as parameter type,
	// thus creating a dependency circle 
	def static String compileAllGreetings(AllGreetings it) {
		var totalSize = 0
		// We access the AllGreetings.getGreetings() method in two different ways
		// (for-each-loop and map) to demonstrate different error messages if we omit 
		// 'complianceLevel="8.0"' in greetings.xcore
		for (greeting : it.getGreetings()) {
			totalSize = totalSize + greeting.getMessage().length
		}
		
		'''
		Greetings:
			«it.getGreetings().map[greeting | greeting.getMessage()].join(", ")»
		'''
	}
	
	def static String compileAllPersons(AllGreetings it) {
		// AllGreetings.getPersons() refers to type IPerson, which is defined in Ecore.
		// This only works if we disable the validator in the MWE2 workflow.
		'''
		Hello Humans:
			«it.getPersons().map[person | person.describeMyself()].join(", ")»
		'''
	}
}