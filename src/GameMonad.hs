module GameMonad
    ( GameMonad
    ) where


-- TODO : Add name
              -- current room
data GameMonad = Room deriving(Show, Eq)

       -- name description adjacent-rooms   *need options
--data Room = String String [Room]
data Room = Kitchen | McCarthy

instance Monad



changeRooms :: Int -> GameMonad
changeRooms =

showRoomDescription :: Room -> String
showRoomDescription Kitchen = ...

seeAdjacentRooms ::





initGame :: GameMonad kitchen

kitchen :: Room
kitchen = "kitchen" "we eat things here" [mcCarthy]

mcCarthy :: Room
mcCarthy = "mcCarthy" "there are couches here" [kitchen]

