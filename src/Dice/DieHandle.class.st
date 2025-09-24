Class {
	#name : 'DieHandle',
	#superclass : 'Object',
	#instVars : [
		'dice'
	],
	#category : 'Dice',
	#package : 'Dice'
}

{ #category : 'arithmetic' }
DieHandle >> + aDieHandle [

	| newHandle |
	newHandle := DieHandle new.
	dice do: [ :die | newHandle addDie: die ].
	aDieHandle dice do: [ :die | newHandle addDie: die ].
	^ newHandle
]

{ #category : 'adding' }
DieHandle >> addDie: aDie [
    dice add: aDie.
]

{ #category : 'accessing' }
DieHandle >> dice [
    ^ dice
]

{ #category : 'as yet unclassified' }
DieHandle >> diceNumber [
    ^ dice size
]

{ #category : 'initialization' }
DieHandle >> initialize [
	dice := OrderedCollection new.
]

{ #category : 'accessing' }
DieHandle >> roll [
    ^ dice collect: [:each | each roll ] sum
]
