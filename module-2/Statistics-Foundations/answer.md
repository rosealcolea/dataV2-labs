![Ironhack logo](https://i.imgur.com/1QgrNNw.png)

# Lab | Statistics Foundations
In this lab we are going to put into practice what we learned about the foundations of statistics.


## Challenges
### Challenge 1
One player rolls two dices. Describe the measurable space and the random variable for:
* A. The values that the player obtains.
* B. The sum of the values obtained.
* C. The maximum value obtained after rolling both dices.

Describe the following events:
* Case A: Both values are greater than 5.
* Case B: The sum of values is even.
* Case C: The maximum is the value of both rolls.

#### Answer

Measurable space: Ω = {(1,1), (1,2), (1,3), (1,4), (1,5), (1,6), (2,1), (2,2), (2,3), (2,4), (2,5), (2,6), (3,1), (3,2), (3,3), (3,4), (3,5), (3,6), (4,1), (4,2), (4,3), (4,4), (4,5), (4,6), (5,1), (5,2), (5,3), (5,4), (5,5), (5,6), (6,1), (6,2), (6,3), (6,4), (6,5), (6,6)};

Total possible outcomes = 6^2 = 36

* A {(1,1), (1,2), (1,3), (1,4), (1,5), (1,6), (2,1), (2,2), (2,3), (2,4), (2,5), (2,6), (3,1), (3,2), (3,3), (3,4), (3,5), (3,6), (4,1), (4,2), (4,3), (4,4), (4,5), (4,6), (5,1), (5,2), (5,3), (5,4), (5,5), (5,6), (6,1), (6,2), (6,3), (6,4), (6,5), (6,6)}
* B. {2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12}
* C. {12}

* Case A: A = {(5,5), (5,6), (6,5), (6,6)}; 
    * P(A) = 4/36 = 1/9
* Case B: B = {(1,1), (1,3), (1,5), (2,2), (2,4), (2,6), (3,1), (3,3), (3,5), (4,2), (4,4), (4,6), (5,1), (5,3), (5,5), (6,2), (6,4), (6,6)}; 
    * P(B) = 18/36 = 1/6
* Case C: C = {(6,6)}; 
    * P(C) = 1/36


### Challenge 2
One player picks two cards from a poker deck. Describe the measurable space and the random variable for:
* A. The number of figures he picks.
* B. The sum of card values. Consider that the value of figures is 10 and the value of aces is 15.
* C. The number of hearts or spades he picks.

Describe the following events:
* Case A: The number of figures in the cards the player picked is two.
* Case B: The sum of card values is 17.
* Case C: The value of both cards is less than 8.

#### Answer

Measurable space: Ω = {(AH,AD), (AH,AC), (AH,AS), (AD,AC), (AC,AS), (AD,AS), (1H,AD) ... (KH,KD), (KH,KC), (KH,KS), (KD,KC), (KC,KS), (KD,KS)};

Total possible outcomes = 52^2 = 2704

* A. {0, 1, 2}
* B. {4, 5, 6 ... 18, 19, 20, 25, 30}
* C. {0, 1, 2}

* Case A: A = {(JH,JD), (JH,QH), (JH,KH), (QH,KH) ... (KH,KD), (KH,KC), (KH,KS), (KD,KC), (KC,KS), (KD,KS)}; 
    * Sample Size = 16^2 = 256
    * P(B) = 256/2704 = 16/169
    
* Case B: B = {(8H,9H), (7H,10H)...(7H,KH), (8H,9D)...(7S,KS), (AH, 2H), (AH,2D)...(AS,2S)}; 

* Case C: C = {(1H,1D), (1H,2D)...(6S,1S)}; 

### Challenge 3
Two players roll a dice. Describe the measurable space and the random variable for:
* A. The score of player A.
* B. The greatest score.
* C. The earnings of player A if the game rules state that:  
"The player with the greatest score gets a coin from the other player.".
* D. The earnings of player A if the game rules state that:  
"The player with the greatest score gets as many coins as the difference between the score of player A and player B.". 

Describe the following events:
* Case A: The score of player A is 2.
* Case B: The greatest score is lower or equal than 2.
* Case C: Considering the case where the winner gets as many coins as the difference between scores (D), describe: 
  * Player A wins at least 4 coins.
  * Player A loses more than 2 coins.
  * Player A neither wins nor loses coins.
  
#### Answer

Measurable space: Ω = {(1,1), (1,2), (1,3) ... (6,5), (6,6)}

* A. {1, 2, 3, 4, 5, 6}
* B. {6}
* C. {-1, 0, 1}
* C. {-5, -4, -3, -2, -1, 0, 1, 2, 3, 4, 5}

* Case A: A = {(2,1), (2,2), (2,3), (2,4), (2,5), (2,6)}; 
    * P(A) = 6/36 = 1/6
* Case B: B = {(1,1), (1,2), (2,1), (2,2)}; 
    * P(B) = 4/36 = 2/18
* Case C: 
    * C1 = {(5,1), (6,1), (6,2)};
    * C2 = {(1,4), (1,5), (1,6), (2,5), (2,6), (3,6)};
    * C3 = {(1,1), (2,2), (3,3), (4,4), (5,5), (6,6)};
    

## Bonus challenges
### Bonus Challenge 1
Three players take balls from a box. Inside that box there are red, blue, green and black balls. The players can take three balls at mosts with the following rules:

* If the ball is blue, they can take another ball.
* If the ball is green, they get one point and they can take another ball.
* If the ball is red, they can’t take another ball.
* If the ball is black, they lose one point and they can’t take another ball.

Describe the measurable space and the random variable for:
* A. Player A wins. Do not consider ties as a win.
* B. Player A and B get the same points.
* C. All players get 0 points.

#### Answer

Measurable space: Ω_Player = {(b,g,bk), (g,b,bk), (g,r,bk), (r,b,bk), (r,g,bk), (b,bk), (g,bk), (r,bk), (bk), (r,r,r)...}
Ω = A combination of every single palyer possible outcome with the other possible outcomes for each player. Ex: {(b,g,bk), (g,bk), (g,r,bk)}

* A. {}
* B. {}
* C. {}

* Case A: A = {(}; 
    * P(A) = 
* Case B: B = {}; 
    * P(B) = 
* Case C: C = {}; 
    * P(C) = 

### Bonus Challenge 2
Consider the situation of bonus challenge 1 but now with four players. Does anything change in your solutions? What are the changes in each case?

#### Answer


### Bonus Challenge 3
One player takes three balls from a box. Inside the box there are 5 balls: two of them are black and the other three are white. 

Describe the measurable space and the random variable for:
* A. The number of white balls if every time we take a ball we keep it.
* B. The number of white balls if every time we take a ball we put it back again into the box.
* C. The number of black balls if every time we take a ball we keep it.
* D. The number of black balls if every time we take a ball we put it back into the box.

#### Answer

Measurable space: Ω = {}

* A. {}
* B. {}
* C. {}

* Case A: A = {(}; 
    * P(A) = 
* Case B: B = {}; 
    * P(B) = 
* Case C: C = {}; 
    * P(C) = 