/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Basic Choices
 - Knot structure
 - Recurring choices
 - Conditionals in descriptions
 - Conditionals in choices
 
 In the assignment:
 - Add four more knots (and feel free to change any of the example text, this is YOUR story)
 - Add at least one more conditional
*/

-> cavemouth

== cavemouth ==
You are at the entrance to a cave. {torchpickup: | There is a torch on the floor. } The cave extends to the east and west.
+ {not liteasttunnel} [Take the East Tunnel] -> easttunnel
+ {liteasttunnel} [Take the East Tunnel] -> liteasttunnel
+ [Take the West Tunnel] -> westtunnel
* [Aquire the Majestic Torch] -> torchpickup
* [Go Home] -> exit

== easttunnel ==
You are in the east tunnel, it is very dark and you can't see anything.
* {torchpickup} [Light Torch] -> liteasttunnel
+ [Go Back] -> cavemouth
-> END

== westtunnel ==
You are in the west, {not rope && not gold: there is a minecart in the corner which contains both a bar of gold and a rope but you can only take one, they definetly weigh the exact same.| {rope && not tresherroom: you begin to rethink your choice | {rope && tresherroom: you made the right coice with the rope. | {gold: Gold was the obvious pick. | } } } }
* {not rope && not gold} [Take Gold] -> gold
* {not rope && not gold} [Take Rope] -> rope
+ [Go Back] -> cavemouth
-> END

== rope ==
You now have a rope, not as majestic as the torch but its close.
* [Yipeeeeeee] -> westtunnel


== gold ==
You now have to carry around a bar of Gold
* [yay? ] -> westtunnel
-> END

=== torchpickup ===
You now have a majestic torch, it is incredibly majestic.
+ [Go Back] -> cavemouth
-> END

== liteasttunnel ==
You can see there is a cliff in front of you and a ledge another 20ft away
* [You can defintely jump it] -> cliffdeath
* { not tresherroom && rope} [Swing over with rope] -> tresherroom
+ [Return to entrance] -> cavemouth
-> END

== cliffdeath ==
You could not jump it, you fall for an enitre minute before you splat on the ground.
-> END

== bouldertrap ==
<b> A completely unexpected boulder comes rolling at you !!!!</b>
* [RRRUUUUUUNNNNNNN] -> exit
* [walk] -> boulderdeath
-> END


== boulderdeath ==
The boulder crushes you in an incredibly grusome scene, you survive just long enough to suffer in agony for a few more minutes.
-> END


== tresherroom ==
You do the sickest indiana jones on a stalagtite to the ledge and find a room full of jewels with a diamond statue in the center of the room on a pedestal.
* [Take the diamond statue, its so worth it] -> bouldertrap
* [Take the jewels, the statue is an obvious trap] -> jewels
-> END


== jewels ==
You pocket as many jewels as you can and swiftley make your escape.
* [I could buy a house with this many jewels] -> exit
-> END


== exit ==
{jewels: With all the money you have managed to obtain from the jewels, you buy yourself a nice modest house out on the countryside and live happily ever after. | { bouldertrap: You start carrying the diamond statue back to civilization but its too heavy, over the course of the next week you continue trying to get it back so you can make money but you have exhausted yourself, you die starving in the woods before you could cash it in | {gold: The gold bar was a nice haul but it didn't get you as much as you though it would, it got you about a month of rent before you were back on the streets, homeless again. | {rope && not tresherroom: When you get back you try and make of this excurshion what you can, you sell the rope for five buckaroonies. Thats 2 whole boxes of tic tacs. | } } } } {torchpickup && not bouldertrap: You find out that your majestic torch was so majestic that a collector is willing to buy it for a BILLION TRILLION DOLLARS, but you know that some thing are with more than any amount of money so you keep it.| } 
{not torchpickup && not jewels && not bouldertrap && not gold && not rope: You return to the bridge you have been living under for the past five years with the emptiest of hands, maybe its for the best, you would have just gambled it all away again anyway. | }
-> END




















