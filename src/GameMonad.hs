module GameMonad
    ( GameMonad
    ) where


-- TODO : Add name
              -- current room
data GameMonad = Room deriving(Monad, Show, Eq)

       -- name description adjacent-rooms
data Room = String String [Room]



changeRooms :: Int -> GameMonad
changeRooms =

showRoomDescription ::

seeAdjacentRooms ::




initGame :: GameMonad kitchen

kitchen :: Room
kitchen = "kitchen" "we eat things here" [mcCarthy]

mcCarthy :: Room
mcCarthy = "mcCarthy" "there are couches here" [kitchen]

