Class {
	#name : 'Die',
	#superclass : 'Object',
	#instVars : [
		'faces'
	],
	#category : 'Dice',
	#package : 'Dice'
}

{ #category : 'instance creation' }
Die class >> withFaces: aNumber [
	"Create and initialize a new die with aNumber faces."
	| instance |
	instance := self new.
	instance faces: aNumber.
	^ instance
]

{ #category : 'accessing' }
Die >> faces [
	^ faces
]

{ #category : 'accessing' }
Die >> faces: anInteger [ 
	faces := anInteger
]

{ #category : 'initialization' }
Die >> initialize [
	faces := 6. 
]

{ #category : 'accessing' }
Die >> roll [
	^ faces atRandom.
]
