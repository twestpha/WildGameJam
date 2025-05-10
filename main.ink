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

// Animals
VAR dolphinInRoom = false

->Main.GameLoop

// Some allie notes
// -> Stitch ->
// is the syntax for saying "hey go to stitch and then return like a function
// using the ->-> syntax. Super helpful for organization.
// https://videlais.com/2018/08/11/learning-ink-part-9-tunnels-and-threads/

=== Main ===
= GameLoop
    // Maybe this check should happen more often/elsewhere
    {playerHealth <= 0: -> PlayerDied}
    
    -> Room.ShowCurrentRoom ->
    
    // Generate animals based on room and following status
    // Show animal hints
    // Prompt for encyclopedia here?
    
    // Resolve animal-combination logic to display photo ops, prompt for those
    
    // Set out options for player action:
    // Taking photos
    // Managing inventory
    // Interacting with animals
    // Changing room
    
    -> Room.PromptForNextRoom ->
    
    // Test health management
    ~ playerHealth--
    
    // Restart loop!
    -> GameLoop
    
= PlayerDied
    Oh no, too bad!
    
    // Reset everything using #restart? Or just some things and then point back? Iunno yet
    ~playerHealth = 3

    + [Restart?] -> Main.GameLoop
    
-> END
