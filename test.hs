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
