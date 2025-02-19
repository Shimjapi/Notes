-- https://create.roblox.com/docs/luau/tables
-- Use this source for more help
-- I had to rush this because of work

-- Tables in roblox are just a type of data structure used to hold multiple data types or values
-- There are plenty of uses of tables

-- There are two types of tables in Roblox
-- Arrays and Dictionareis

-- This is an example of an array

local Array = {'Hello', ' Bruh', ' from Array 1'}

-- Lets try to print with the array
-- In different languages to count items in an array, it would start from 0
-- But in Roblox (LUA) it actually starts from 1

print(Array[1]..Array[2]..Array[3]) -- Output: Hello Bruh from Array 1

-- Storing random strings isn't the only thing you can do in an array

local Array3 = {true, false, 5}

print(tostring(Array3[1])) -- Output: true

-- Now what if we want to give the values a name or identifier
-- This is why we have dictionairies
-- Not the only reason but its a good reason why they exist

local Dictionary1 = {
    First = 'Hello',
    Second = ' Bruh',
    Third = ' from Dictionary 1',
}

-- Lets print with the dictionary

print(Dictionary1.First..Dictionary1.Second..Dictionary1.Third) -- Output: Hello Bruh from Dictionary 1

-- You can also store any value in a dictionary

local Dictionary2 = {
    Fourth = true,
    Fifth = false,
    Sixth = 5,
    Seventh = nil,
}

print(tostring(Dictionary2.Fourth)) -- Output: true

-- Whats the purpose of all these?
-- Well the purpose is again to store multiple sets of data into one
