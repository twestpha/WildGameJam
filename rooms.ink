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
Description of the Laboratory hooray
->->

= ShowConservatory
It's got a dead body there because of the game clue. Can you believe they call it cluedo in the UK? They're zany there.
->->