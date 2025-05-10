=== Animals ===

= GenerateAnimalsForRoom
// to do, put a clear-all animals here

{currentRoom == "lab":
    // A 50% chance
    ~dolphinInRoom = RANDOM(0, 99) < 50
}
{currentRoom == "conservatory":
    // A 0% chance
    ~dolphinInRoom = false
}

// Resolve animals following the player here too

->->

= ShowAnimals
{dolphinInRoom: -> ShowDolphin ->}
->->

= ShowDolphin
Oooh a pretty dolphin description goes here
->->