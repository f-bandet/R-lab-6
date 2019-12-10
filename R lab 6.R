# Name: Faye Bandet
# Date: 10/3/19
# ISTA 116 Section B || Section Leader : Jacob Heller
# Lab Assignment 6
# Collaborator(s): Nick Ackerman

#1
suits = c("Spade", "Heart", "Diamond", "Club")
numbers = c(2, 3, 4, 5, 6, 7, 8, 9, 10, "Ace", "Queen", "King", "Jack")
suits
numbers
# created vectors

#2
deck = expand.grid(suits=suits, numbers=numbers)
deck
# Created deck

#3
table = prop.table(table(deck))
psuits = prop.table(table(deck$suits))
pnumbers = prop.table(table(deck$numbers))
table
psuits
pnumbers
# The probability of getting any card, like an Ace is the same probability as any bard because it is still a full deck. It is 25% likely to draw a spade.

#4
sample = sample(1:52, 10, replace = FALSE)
sample
# Created sample

#5
deck2 = deck[-sample,]
deck2
table2 = prop.table(table(deck2))
p2suits = prop.table(table(deck2$suits))
p2numbers = prop.table(table(deck2$numbers))
table2
p2suits
p2numbers
# It is differant than #3, getting an ace spades is now 2.3%, and a general spade would be 26%.They are different because there is less cards so the probability changes.

#6
die1 = c(1, 2, 3, 4, 5, 6)
die2 = c(1, 2, 3, 4, 5, 6)
die3 = c(1, 2, 3, 4, 5, 6)
dicerolls = expand.grid(die1=die1, die2=die2, die3=die3)
dicerolls
# Expand grid worked

#7
dicerolls$sum = c(rowSums(dicerolls))
dicerolls
# Printed docerolls 

#8
plot1 = prop.table(table(dicerolls$sum))
plot1
barplot(plot1)
# The highest probability is .125 an 11 or a 10.

#9
plot2 = replicate(1000, {sample(dicerolls$sum, 1, replace = FALSE)})
barplot(table(plot2))
# They still are similar because 10 and 11 both have the highest frequency or percentage.

#10
plot2 = replicate(1000, {sum(sort(sample(1:6, 5, replace = TRUE), decreasing = TRUE)[1:3])})
barplot(table(plot2))
# results show that it is similar to 8 and 9 because the curve of the graphs are similar. They are not exactly the same, because it is random.