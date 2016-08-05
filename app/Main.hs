module Main where

import GameMonad

main :: IO ()
main = gameLoop initRoom

gameLoop :: GameMonad Room -> IO()
gameLoop currentRoom = do 
    putStrLn $ show $ fmap showRoomDescription currentRoom
    putStrLn "Here are the adjacent rooms"
    putStrLn $ show $ seeAdjacentRooms $ getRoom currentRoom
    putStrLn "Which room do you want to go into?"
    userinput <- getLine
    if (userinput == "bye")
        then putStrLn "bye"
        else gameLoop currentRoom
    --  if user input was exit say "bye"
        -- otherwise call gameloop again
  --  gameLoop $ changeRooms userInput -- gets us a new gamestate


-- init a game monad
-- display to screen & wait for input
-- pass input & display new result


-- first iteration: 1 room, push any key and get a message that says "it worked"
-- second iteration: set up change room, maybe with just 2 rooms


--changeRooms :: Room -> GameMonad
--changeRooms room = 



    -- display seeAdjacentRooms
    -- solict user input and return their preference
    -- switch game monad to that room
