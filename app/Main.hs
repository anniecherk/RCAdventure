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
    userInput <- getLine
    if (userInput == "bye")
        then putStrLn "bye"
        else gameLoop $ changeRooms userInput
    --  if user input was exit say "bye"
        -- otherwise call gameloop again
  --  gameLoop $ changeRooms userInput -- gets us a new gamestate


-- init a game monad
-- display to screen & wait for input
-- pass input & display new result


-- first iteration: 1 room, push any key and get a message that says "it worked"
-- second iteration: set up change room, maybe with just 2 rooms


changeRooms :: String -> GameMonad Room
changeRooms roomStr = return $ makeRoom roomStr

    -- switch game monad to that room




