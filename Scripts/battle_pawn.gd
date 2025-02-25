## Class representing a character in the battle scene. This is different from the
## normal player in the game world, and different from enemies and npcs in the game world
## Combat scene necessitates a generic character object that fits into a combat scene.
class BattlePawn : extends Node2D

## Class will determine pawn's stats, character image, etc.
@export var BASE_CLASS: String

## Character's life. If this reaches zero, pawn is KO until revived.
var MAX_HEALTH
var health
## Character's MAX damage. This is how much damage a 100% successful attack will deal.
var MAX_DAMAGE
var damage
## Character's MAX defense. This is how much damage a 100% successful block will deal.
var MAX_DEFENSE
var defense

## Character makes a basic attack against target. This attack is called by the combat handler.
## Returns damage dealt for debug purposes
func basic_attack(target: BattlePawn) -> int:
	damage = MAX_DAMAGE # -TODO- Soon to implement modifier for attack minigame =)
	target.health -= damage
	return damage

## Called to find out how much damage is mitigated when an attack is called, if said attack
## can be resisted. Called by the combat handler.
## Returns the final defense value for later calls.
func defend() -> int:
	defense = MAX_DEFENSE # -TODO- Soon to implement modifier for defend minigame =)
	return defense
