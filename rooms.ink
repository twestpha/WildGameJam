=== Room ===

= ShowCurrentRoom
{currentRoom == "lab": -> ShowLaboratory -> }
{currentRoom == "conservatory": -> ShowConservatory ->}
// TODO other rooms' if-then sequences
->->

= PromptForNextRoom
+ {currentRoom == "lab"}
    [Head to the Conservatory]
        Travelling to the Conservatory...
        ~ currentRoom = "conservatory"
        ->->
+ {currentRoom == "conservatory"}
    [Head back to the lab]
        Whee to the lab baby...
        ~ currentRoom = "lab"
        ->->
// TODO other rooms' if-then sequences
-> END

= ShowLaboratory
{~The laboratory is very cramped, crowded with reflective silver appliances and workbenches.|The space is small and cramped, and you shuffle around the reflective equipment.} {~Inside the refrigerator, there sits several fruit and vegetables, your erstwhile snacks.|Sitting in the fridge, your snacks sit in the brightly lit interior.} {~In the corner, the heavy computing equipment hums. It's old and clunky, but all your research grant could afford.|On the far wall, the ancient computers whir and clack, rolling their tapes back and forth. Too bad your research grant couldn't cover more equipment.} On the other wall, the airlock's window winks in the light.

+ {not hasFruit} Pick up fruit
+ [Do Nothing]
->->

= ShowConservatory
It's got a dead body there because of the game clue. Can you believe they call it cluedo in the UK? They're zany there.
->->