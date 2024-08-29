/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 * Basic Choices
 * Knot structure
 * Recurring choices
 - Conditionals in descriptions
 - Conditionals in choices
 
 In the assignment:
 - Add four more knots (and feel free to change any of the example text, this is YOUR story)
 - Add at least one more conditional
*/

-> cave_mouth

== cave_mouth ==
{not west_tunnel_lit:You are at the entrance to a cave.} {west_tunnel_lit: You are back at the entrance of the cave.} {not torch_pickup:There is a torch on the floor.} The cave extends to the east {not west_tunnel_lit:and the west.}
+ [Take the east tunnel] -> east_tunnel
+ [Take the west tunnel] -> west_tunnel
* [Pick up the torch] -> torch_pickup

== east_tunnel ==
You are in the east tunnel. It is very dark, you can't see anything.

* {torch_pickup} [Light Torch] -> east_tunnel_lit
+ [Go Back] -> cave_mouth
-> END

== west_tunnel==
You are in the west tunnel. you hear a strange sound but can't see what is making it
* {torch_pickup} [Light Torch] -> west_tunnel_lit
+ [Run in fear] -> cave_mouth
->END

== west_tunnel_lit ==
You light up the tunnel to see a lare snake starfing right back at you.
* [Try to fight it] -> snake_bite
* [Turn tail and run] -> cave_mouth

=== torch_pickup ===
You now have a torch. May it light the way.
* [Go Back] -> cave_mouth
-> END

== snake_bite ==
What were you thinking? You are bitten by the snake before you even have the chance to attack and die a slow, agonizing death.
->END

=== east_tunnel_lit ===
The light of your torch glints off of the thousands of coins in the room.
* [Stuff as many coins as you can hold into your pockets] -> gold_pickup
+ [Return to cave mouth] -> cave_mouth_poor
-> END

=== gold_pickup ===
The room begins to shake and boulders start crashing down around you
* [Stand awestruck] -> boulder_death
* [Run for your life] -> cave_mouth_rich
-> END

== boulder_death ==
You were crushed by the falling boulders and died young and poor.
-> END

=== cave_mouth_rich ===
Congratulations, you survived the tunnel collapse and are now richer than when you entered.
-> END

== cave_mouth_poor ==
You were to scared to risk taking any gold from the cave and walk home sad and poor.
-> END
