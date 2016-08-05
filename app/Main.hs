module Main where

import GameMonad

main :: IO ()
main = do
    let initRoom = initGame
    putStrLn $ show $ fmap showRoomDescription initRoom

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
