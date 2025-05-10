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

// How the fuck do I seed this from time lol
// ~SEED_RANDOM(122)

->Main.GameLoop

// Some allie notes
// -> Stitch ->
// is the syntax for saying "hey go to stitch and then return like a function
// using the ->-> syntax. Super helpful for organization.
// https://videlais.com/2018/08/11/learning-ink-part-9-tunnels-and-threads/

=== Main ===
= GameLoop
    -> Room.ShowCurrentRoom ->
    
    -> Animals.GenerateAnimalsForRoom ->
    -> Animals.ShowAnimals ->
    
    // Resolve animal-combination logic to display photo ops, prompt for those
    
    // Set out options for player action:
    // Taking photos
    // Encyclopedia
    // Managing inventory
    // Interacting with animals
    // Changing room
    
    // Maybe this check should happen more often/elsewhere
    {playerHealth <= 0: -> PlayerDied}
    
    -> Room.PromptForNextRoom ->
    
    // Test health management
    ~ playerHealth--
    
    // Restart loop!
    -> GameLoop
    
= PlayerDied
    You died! Oh no, too bad!
    
    // Reset everything using #restart? Or just some things and then point back? Iunno yet
    ~playerHealth = 3

    + [Restart?] -> Main.GameLoop
    
-> END
