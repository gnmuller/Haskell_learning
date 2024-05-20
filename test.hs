--Load in Terminal this page
-- :l test
-- Could also be :l test.hs


doubleMe x = x + x


doubleUs x y = x*2 + y*2 



doubleSmallNumber x = if x > 100
                        then x
                        else x*2 


conanO'Brien = "It's a-me, Conan O'Brien!" 


list = [1,2,3,4] ++ [9,10,11,12]


index_test = "Steve Buscemi" !! 6


index_more= take 3 [5,4,3,2,1]

ranges = [1..20]

kinda_like_lambda = [x*2 | x <- [1..10], x*2 >= 12]

--xs is the number, we are saying that at the end
--also it has to be x
--the else function matters
-- Give it something like boomBangs [7..13] as a list of numbers
boomBangs xs = [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x] 


--_ turns it into a blank it is still a list
length' xs = sum [1 | _ <- xs] 

lucky :: (Integral a) => a -> String
lucky 7 = "LUCKY NUMBER SEVEN!"
lucky x = "Sorry, you're out of luck, pal!" 


charName :: Char -> String
charName 'a' = "Albert"
charName 'b' = "Broseph"
charName 'c' = "Cecil"

--head' "loser" 
--Not [loser] because "loser" is already a list
head' :: [a] -> a
head' [] = error "Can't call head on an empty list, dummy!"
head' (x:_) = x

---length1' [1,2,2,2]
length1' :: (Num b) => [a] -> b
length1' [] = 0
length1' (_:xs) = 1 + length' xs



--First use of otherwise and declaring a variable where
bmiTell :: (RealFloat a) => a -> a -> String
bmiTell weight height
    | bmi <= skinny = "You're underweight, you emo, you!"
    | bmi <= normal = "You're supposedly normal. Pffft, I bet you're ugly!"
    | bmi <= fat    = "You're fat! Lose some weight, fatty!"
    | otherwise     = "You're a whale, congratulations!"
    where bmi = weight / height ^ 2
          skinny = 18.5
          normal = 25.0
          fat = 30.0

--What I don't like is that f and l aren't really strickly said
initials :: String -> String -> String
initials firstname lastname = [f] ++ ". " ++ [l] ++ "."
    where (f:_) = firstname
          (l:_) = lastname  


myCompare :: (Ord a) => a -> a -> Ordering
a `myCompare` b
    | a > b     = GT
    | a == b    = EQ
    | otherwise = LT


--(let a = 100; b = 200; c = 300 in a*b*c, let foo="Hey "; bar = "there!" in foo ++ bar)


describeList :: [a] -> String
describeList xs = "The list is " ++ what xs
    where what [] = "empty."
          what [x] = "a singleton list."
          what xs = "a longer list."