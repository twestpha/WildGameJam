INCLUDE rooms.ink
INCLUDE encyclopedia.ink
INCLUDE animals.ink

// https://videlais.com/2018/08/09/learning-ink-part-7-global-temporary-and-constant-variables/

// Global state variables
VAR playerHealth = 3

VAR dolphinFollowingPlayer = false

// Items
VAR hasFlashlight = false

// Room Tracking
VAR currentRoom = "lab"

->Main.GameLoop

=== Main ===
= GameLoop
    // While alive
    + {playerHealth > 0}
        ->Room.ShowCurrentRoom
    -> END

// So, knots don't really "return" from stiches, so these are entry points from other things to link back to the main flow... I don't really love this, and it feels like I'm doing something wrong, but oh well. Hash tag game jam.
= GameLoopContinue0
    ->Room.PromptForNextRoom

// Go around again!
= GameLoopContinue1
    ->GameLoop
    
-> END

// Functions we might need later?
// GenerateAnimalsForScene(currentScene)
// ResolveFollowingAnimals()
// ShowAnimalsInScene()
// PromptForPhotoOps()
// PromptForActivities()
