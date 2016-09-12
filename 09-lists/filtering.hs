-- 1)
multiplesOf3 = filter (\x -> (rem x 3) == 0) [1..30]
-- 2)
numberMultsOf3 = length multiplesOf3
-- 3)
noArticles = filter (not . isArticle) . words
    where isArticle x = elem x ["the", "an", "a"]
