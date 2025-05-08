INCLUDE rooms.ink
INCLUDE encyclopedia.ink
INCLUDE animals.ink

// https://videlais.com/2018/08/09/learning-ink-part-7-global-temporary-and-constant-variables/

// Items
VAR hasFlashlight = false

// Other global variables

Once upon a time, we went to a cool place.
-> ThisIsAKnot

=== ThisIsAKnot ===
Here's where we talk about the knot we just got to
+ Here's a choice A -> DescribeTheChoice
+ Here's a choice B -> DoneWithChoices

=== DescribeTheChoice ===
You think about your choices. -> DoneWithChoices

=== DoneWithChoices ===

Let's talk about a room.
->Room.Conservatory

-> END


// Hacky pseudocode

// while(alive){
//     ShowScene(currentScene)
//     GenerateAnimalsForScene(currentScene)
//     ResolveFollowingAnimals()
//     ShowAnimalsInScene()
//     PromptForPhotoOps()
//     PromptForActivities()
//     PromptForNextScene()
// }