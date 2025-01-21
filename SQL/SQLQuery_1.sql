INSERT INTO dbo.Questions (questionTitle, questionText, startCode, programTest, solution) VALUES ('Input/Output 1','Create a python program to output the following message on the screen;
 
 Hello World!','print()','When you run the program the following output should appear on your output/shell

<CODE>Hello World!</CODE>','print(""Hello World!"")')
INSERT INTO dbo.Questions (questionTitle, questionText, startCode, programTest, solution) VALUES ('Input/Output 2','Copy the provided code into your program and complete it so that it says 
- My Name is {your name}
- My favorite subject is Computing
Once you have that working, try different names and subjects','print()
print()','When you run the program the following output should appear on your output/shell
<CODE> 
My name is Britany
My favorite subject is Computing
</CODE>','name = ""Britany"" 
subject = ""Computing"" 
print(""My name is"", name) 
print(""My favorite subject is"",subject)')
INSERT INTO dbo.Questions (questionTitle, questionText, startCode, programTest, solution) VALUES ('Input/Output 3','Copy the provided code into your program and then complete so that it tells you are answer to the calculation of x * y

Once you have that working, try different values of x and y','x = 134
y = 45
answer = ','When you run the program the following output should appear on your output/shell
 
<CODE>134 * 45 = 6030</CODE>','x = 134
y = 45
answer = x * y
print(x,""*"",y,""="",answer)')
INSERT INTO dbo.Questions (questionTitle, questionText, startCode, programTest, solution) VALUES ('Input/Output 4','Copy the provided code into your program and then complete so that it tells you the perimeter of a triangle with sides equal to 14, 34 and 102

Once this is working try some different values.
Remember the perimeter is the sum of the sides
','side1 = 14
side2 = 34
side3 = 102','When you run the program the following output should appear on your output/shell
 
<CODE>A triangle of sides 14, 34 & 102 has perimeter of 150</CODE>','side1 = 14
side2 = 34
side3 = 102
perimeter=side1+side2+side3
print(""A triangle of sides"",side1,"","",side2,""&"",side3,""has perimeter of"",perimeter)')
INSERT INTO dbo.Questions (questionTitle, questionText, startCode, programTest, solution) VALUES ('Input/Output 5','Create a python program to 
 - ask the user to enter their name
 - allows them to enter their name and stores it in a variable
 - outputs ""Hello"" followed by their name on the same line','none','When the program should asks you to enter a name, enter 
<CODE>Mr Spock</CODE>
The program should respond
<CODE>Hello Mr Spock</CODE>','print(""Please enter your name"")
name=input("">"")
print(""Hello"", name)')
INSERT INTO dbo.Questions (questionTitle, questionText, startCode, programTest, solution) VALUES ('Input/Output 6','Create a python program to 
 - ask the user to enter their favorite film
 - allows them to enter a film name and stores it in a suitable variable
 - outputs ""I liked"" and then the film and then ""too"" entered on the same line','print(""Whats your favorite film?"")','When the program should asks you to enter a film, enter 
<CODE>Star Wars</CODE>
The program should respond
<CODE>I liked Star Wars too</CODE>','print(""Whats your favorite film"")
film=input("">"")
print(""I liked"", film, ""too"")')
INSERT INTO dbo.Questions (questionTitle, questionText, startCode, programTest, solution) VALUES ('Input/Output 7','Create a python program to 
 - ask the user to enter their name
 - allows them to enter their name and stores it in a suitable variable
 - asks them what age they are using their name in the question (eg ""What age are you Jake?"")
- allows them to enter their age
- replies ""so you are age then name""','print(""Whats your name?"")','If you input,  Jake and 12 then the output should be

<CODE>What age are you Jake
So you are 12 then Jake</CODE>','print(""Hi, what is your name?"")
name=input("">"")
print(""What age are you"",name,""?"")
age=input("">"")
print(""So you are"",age,""then"",name"")')

INSERT INTO dbo.Questions (questionTitle, questionText, startCode, programTest, solution) VALUES ('Input/Output 8','Create a python program to 
 - ask the user to enter the length of a square
 - allows them to enter a number and stores it in a suitable variable as a integer
 - calculate the area of a square with the length entered
- Outputs the area of that square with a suitable message

Remember to input the number as an integer (use the int(input("">"")) ','print(""This program calculates the area of squares"")
print(""Enter the length a square"")','If you input 8 then the output should be something similar to 

<code>A square of length 8 has area 64</Code>','print(""Enter the length of a square''s side""
length=int(input("">""))
area=length * length
print(""A square of length"",length, ""has area"",area)')
INSERT INTO dbo.Questions (questionTitle, questionText, startCode, programTest, solution) VALUES ('Input/Output 8','Create a python program to 
 - ask the user to enter the length of a square
 - allows them to enter a number and stores it in a suitable variable as a integer
 - calculate the area of a square with the length entered
- Outputs the area of that square with a suitable message

Remember to input the number as an integer (use the int(input("">"")) ','print(""This program calculates the area of squares"")
print(""Enter the length a square"")','If you input 8 then the output should be something similar to 

<code>A square of length 8 has area 64</Code>','print(""Enter the length of a square''s side""
length=int(input("">""))
area=length * length
print(""A square of length"",length, ""has area"",area)')
INSERT INTO dbo.Questions (questionTitle, questionText, startCode, programTest, solution) VALUES ('Input/Output 10','Create a python program to 
 - ask the user to enter the length and width of a rectange
 - allows them to enter two numbers and stores them in suitable variables as integers
 - calculate the area of a rectange with the length/width entered
- Outputs the area of that rectange with a suitable message','none','If you input 4 and 6 then the output should be something similar to 

<code>A rectangle of 4 by 6 has area 24</code>','print(""Enter the length & width of a rectange""
length=int(input("">""))
width=int(input("">""))
area=length * width
print(""A rectange of "",length, ""by"",width,""has area"",area)')
INSERT INTO dbo.Questions (questionTitle, questionText, startCode, programTest, solution) VALUES ('Selection 1','The following program is incomplete,  you need to complete it.  It should
- Ask you to enter your favorite film
- Allow you to enter the name of a film
- If the film is star wars then give a suitable message
- If it is not star wars say ""never heard of it""
','print()
film = 
if film == ""star wars"":
   print(""Empire strikes back was way better"")
else:','Enter ""star war"" and check result is ""Empire strikes back was way better""

Enter ""casablance"" and check the result is ""Never heard of it""','print(""What is your favorite film)
film = input("">"")
if film == ""star wars"":
   print(""Empire strikes back was way better"")
else:
  print(""Never heard of it"")')
INSERT INTO dbo.Questions (questionTitle, questionText, startCode, programTest, solution) VALUES ('Selection 2','Write a program that:
- asks the user their name
- if it is the same as your name, outputs ''Youre cool'', otherwise outputs ''Nice to meet you''
','print(""What is your name"")','Enter <code>James<\code> and check result is <code>You''re cool<\code>

Enter <code>Fred<\code> and check the result is <code>Nice to meet you<\code>','print(""Whats your name?"")
name=input("">"")
if name==""James"":
  print(""You''re cool"")
else:
  print(""Nice to meet you"")')
INSERT INTO dbo.Questions (questionTitle, questionText, startCode, programTest, solution) VALUES ('Selection 3','Write a program to
- Ask you to enter your age 
- Allow you to enter your age (remember to use the int(input()) cmd
- If the age is greater than yours say ""you''re old arent you""
- If it isnt then output ""So you are"" and then the age entered
','','Test with 
14   -> So you are 14
15  -> So you are 15
16  -> You''re old arent you
100 -> You''re old arent you
','print(""What age are you?"")
age = int(input("">"")) 
if age > 15 :
   print(""Your''re old arent you"")
else:
  print(""So you are"", age)')
INSERT INTO dbo.Questions (questionTitle, questionText, startCode, programTest, solution) VALUES ('Selection 4','Write a program to
- Ask you to enter your age 
- Allow you to enter your age (remember to use the int(input()) cmd
- If the age is greater than yours say ""you''re older than me""
- If the age is the same as yours then say ""we are both"", age 
- If the age is less than yours say ""Ha,  I''m "",x, ""years older""  
where x is your age - the age entered 
','','Test with 
14   -> Ha I am 1 year older than you
15  -> We are both 15
16  -> you''re older than me
10 ->  Ha I am 5 year older than you
','print(""What age are you?"")
age = int(input("">"")) 
if age > 15 :
   print(""Your''re old arent you"")
elif age ==15:
  print(""We are both"", age"")
else:
  diff = 15 - age
  print(""Ha I am"", diff, ""years older than you"")')
INSERT INTO dbo.Questions (questionTitle, questionText, startCode, programTest, solution) VALUES ('Selection 5','Write a program to
- Ask you to enter a student mark between 0 and 100
- Calculates a grade for that number
              < 50 = Fail
               50-59 = Pass
               60-74 = Merit 
               75-100 = Distinction
The program should then output the grade
If the number entered is less than 0 or greater than 100 the grade should be set to ""Invalid"" ','','Test with 
14   -> Fail
49  -> Fail
50  -> Pass
63 ->  Merit
75 -> Distinction
100 -> Distinction
-1 -> Invalid
103 -> Invalid
','')
INSERT INTO dbo.Questions (questionTitle, questionText, startCode, programTest, solution) VALUES ('Selection 6','Write a program that take allows the user to enter 3 inetgers and then outputs the largest of those numbers,  you are NOT allowed to use the max() function for this','','','')
INSERT INTO dbo.Questions (questionTitle, questionText, startCode, programTest, solution) VALUES ('Selection 7','You need to calculate the cost of a taxi fare.  Each journey costs
- £2 per km travelling
- £2.50 per passenger ABOVE 1 (so £0 for 1, £2.50 for 2, £7.50 for 4)
There is also a £5 extra charge if you have luggage

Write a program that asks the user to input distance, number of passengers and whether they have luggage or not 
The program should then calculate the fare and output it as a number with 2 decimal places

Hint:  find out how to use the round() function','print(""Enter distance later"")','Test with
Distance 5 / passengers 1','')
INSERT INTO dbo.Questions (questionTitle, questionText, startCode, programTest, solution) VALUES ('Selection 8','You need to calculate how much someones weekly wage in a pencil factory.  This is calculated as follows
- Basic pay @ £50 per shift worked

They also get a bonus for how many boxes of pencils are completed.  This is paid as follows
1-10 boxes - No bonus
11-20 boxes - £45 bonus
21-30 boxes - £80 bonus
 31+    - £3 per box

Your program should ask
- How many shifts they completed
- How many boxes they finished

It should output
Basic Pay
Bonus Pay
Total Pay','','','')
INSERT INTO dbo.Questions (questionTitle, questionText, startCode, programTest, solution) VALUES ('Selection 9','You need to write a calculator for recommended stopping distance in cars.  This is calculated based on the speed the car is travelling (in mph) and the road conditions (dry/wet or icy).  There are 2 parts to the calculation
- Thinking time.  how long before you realise you need to brake
- Stopping time.  How long it takes the car to stop

Thinking time is 3 metres per 10mph
Braking time in DRY is 1.4 * speed - 22

In WET the braking time is doubled and in ICY it is multiplied by 5

Your program should ask the user to input speed in mph and conditions (d/w/i is fine)
It should output
Thinking time (in metres)
Braking time

Total distance travelled','','','')
INSERT INTO dbo.Questions (questionTitle, questionText, startCode, programTest, solution) VALUES ('String 1','Prompt the user to enter a sentence.  
The program should then output the number of characters in that sentence','','','')
INSERT INTO dbo.Questions (questionTitle, questionText, startCode, programTest, solution) VALUES ('String 2','Prompt the user to enter a sentence.  
Prompt the user to enter a word
The program should then output if the word exists in the sentence','','','')
INSERT INTO dbo.Questions (questionTitle, questionText, startCode, programTest, solution) VALUES ('String 3','Prompt the user to enter a word or sentence
The program should then reverse the order of the letters','','','')
INSERT INTO dbo.Questions (questionTitle, questionText, startCode, programTest, solution) VALUES ('String 4','Prompt the user to enter a sentence.  

The program should then output the number of times the letter ""e"" appears in that sentence','','','')
INSERT INTO dbo.Questions (questionTitle, questionText, startCode, programTest, solution) VALUES ('String 5','Prompt the user to enter a sentence.  

The program should then output the total number of vowels (a,e,i,o,u) in the sentence','','','')
INSERT INTO dbo.Questions (questionTitle, questionText, startCode, programTest, solution) VALUES ('String 6','Prompt the user to enter a character

The program should then indicate if the letter entered was a Capital Letter.
If the user enters multiple letters, only the first letter should be checked','','','')
INSERT INTO dbo.Questions (questionTitle, questionText, startCode, programTest, solution) VALUES ('String 7','Prompt the user to enter a character

The program should then indicate if the letter entered was a Capital Letter, a small letter, a digit (0-9) or another character.  
If the user enters multiple letters, only the first letter should be checked','','','')
INSERT INTO dbo.Questions (questionTitle, questionText, startCode, programTest, solution) VALUES ('String 8','Prompt the user to enter a word or sentence.

Checks if the string entered by the user is a palindrome. A palindrome is a word that reads the same forwards as it does backwards like “racecar”.','','','')
INSERT INTO dbo.Questions (questionTitle, questionText, startCode, programTest, solution) VALUES ('String 9','Prompt the user to enter a sentence.

Calculate the number of words in that sentence.  You can assume that a space indicates the end of one word and the beginning of another','','','')
INSERT INTO dbo.Questions (questionTitle, questionText, startCode, programTest, solution) VALUES ('String 10','Prompt the user to enter a word or sentence.

Convert and output the entire sentence in capital letters','','','')
INSERT INTO dbo.Questions (questionTitle, questionText, startCode, programTest, solution) VALUES ('String 11','Prompt the user to enter a sentence.
Prompt the user to enter a word to find
Prompt the user to enter a replacement word

Replace every instance of the first word with the second one and output the resulting new sentence','','','')
INSERT INTO dbo.Questions (questionTitle, questionText, startCode, programTest, solution) VALUES ('String 12','Prompt the user to enter a sentence.  
USer to then enter a character.
The program should then output the number of times that character appears in that sentence
Extend this so that the entry of the character is in a separate sub-routine and it validates it is a single character between a and z','','','')
INSERT INTO dbo.Questions (questionTitle, questionText, startCode, programTest, solution) VALUES ('String 13','Prompt the user to enter a sentence.  
- The program should then find every vowel in that sentence and replace it with a *
- Then output the new sentence','','If you input the sentence ""hello world"" it should output ""h*ll* w*rld""','')
INSERT INTO dbo.Questions (questionTitle, questionText, startCode, programTest, solution) VALUES ('String 14','Prompt the user to enter a sentence.  
- The program should then reverse the order of the letters in the sentence 
- Then output the new sentence','','If you input the sentence ""hello world"" it should output ""dlrow olleh""','')
INSERT INTO dbo.Questions (questionTitle, questionText, startCode, programTest, solution) VALUES ('String 15','Prompt the user to enter a sentence.  
- The program should then reverse the order of the vowels in the sentence so that the first vowel replaces the last and the last replaces the first.  If there is an odd number then the middle vowel will remain where it is 
- Then output the new sentence','','If you input the sentence ""hello world"" it should output ""hollo werld""','')
INSERT INTO dbo.Questions (questionTitle, questionText, startCode, programTest, solution) VALUES ('Numerics 1','Write a program to ask the user to enter 2 integers (x and y)

The program should then output 
x + y
x - y
x * y
x / y','','','')
INSERT INTO dbo.Questions (questionTitle, questionText, startCode, programTest, solution) VALUES ('Numerics 2','Write a program to ask the user to enter 2 integers (x and y)

The program should then output 
x to the power of y ','','','')
INSERT INTO dbo.Questions (questionTitle, questionText, startCode, programTest, solution) VALUES ('Numerics 3','Write a program that simulates a single dice by generating a random number between 1 and 6','','','')
INSERT INTO dbo.Questions (questionTitle, questionText, startCode, programTest, solution) VALUES ('Numerics 4','Write a program that simulates someone rolling 2 standard dice ','','','')
INSERT INTO dbo.Questions (questionTitle, questionText, startCode, programTest, solution) VALUES ('Numerics 5','Write a program to ask the user to enter 2 integers (x and y)

The program should then output the result of x divided by y in the format of

integer part and remainder eg

9 divided by 4 is
2 r 1
8 divided by 5 is 
1 r 3','','','')
INSERT INTO dbo.Questions (questionTitle, questionText, startCode, programTest, solution) VALUES ('Numerics 6','Write a program to ask the user to enter 2 integers (x and y). 

The program should then indicate if y is a factor of x','','','')
INSERT INTO dbo.Questions (questionTitle, questionText, startCode, programTest, solution) VALUES ('Iteration 1','Write a program to output all the numbers from 1 to 100 in order.  This program must use a FOR loop','','','')
INSERT INTO dbo.Questions (questionTitle, questionText, startCode, programTest, solution) VALUES ('Iteration 2','Write a program to output all the even numbers from 100 to 2 in reverse order.  This program must use a FOR loop','','','')
INSERT INTO dbo.Questions (questionTitle, questionText, startCode, programTest, solution) VALUES ('Iteration 3','Prompt the user to enter an integer
Output the times tables for that integer from 0 to 12 as ""pretty print"",  eg

0 x 2 = 0
1 x 2 = 2
..
12 x 2 = 24

You can use a for or while loop','','','')
INSERT INTO dbo.Questions (questionTitle, questionText, startCode, programTest, solution) VALUES ('Iteration 4','Write a program to prompt the user to enter a number between 1 and 10.  If they enter an invalid number it should repeat the prompt.  The program should continue to prompt the user until they enter a valid number.  ','','','')
INSERT INTO dbo.Questions (questionTitle, questionText, startCode, programTest, solution) VALUES ('Iteration 5','Write a program to prompt the user to enter a new password.  The password must be at least 8 characters long.  The program should continue to prompt the user until they enter a valid password.  ','','','')
INSERT INTO dbo.Questions (questionTitle, questionText, startCode, programTest, solution) VALUES ('Iteration 6','Write a program to prompt the user to enter a new password.  The password must be at least 8 characters long, start with a capital letter, end with a number and not contain any spaces.  The program should continue to prompt the user until they enter a valid password.  ','','','')
INSERT INTO dbo.Questions (questionTitle, questionText, startCode, programTest, solution) VALUES ('Iteration 7','Write a program to keep asking for a number until you enter a negative number. At the end, print the sum of all entered numbers.','','','')
INSERT INTO dbo.Questions (questionTitle, questionText, startCode, programTest, solution) VALUES ('Iteration 8','Write a program to ask for a name until the user enters END. Print "Hi" and then the name each time. When you are done, print "I am done." and output how many names were input','','','')
INSERT INTO dbo.Questions (questionTitle, questionText, startCode, programTest, solution) VALUES ('Iteration 9','Write a program to ask for a name until the user enters END. Print "Hi" and then the name each time. Save each name into a list called names.  When you are done find which is the longest name and output that name (remember that maybe more than one name)','','','')
INSERT INTO dbo.Questions (questionTitle, questionText, startCode, programTest, solution) VALUES ('Iteration 10','One ride in OCR Land has a minimum height of 140 cm to ride alone or 120 cm to ride with an
adult.
 Create an algorithm that:
• asks the user to input the height of the rider, in centimetres
• if needed, asks if they are riding with an adult
• outputs whether or not they are allowed to ride
• repeats this process until 8 people have been allowed to ride.','','','')
INSERT INTO dbo.Questions (questionTitle, questionText, startCode, programTest, solution) VALUES ('Iteration 11','Write a python program that ask the user to enter an integer and then prints out all the divisors of that number (except 1 and the number itself).

A divisor is another number that divides into the first number without any remainder,  for example the divisors of 12 are 2,3,4,6

Extension:  Can you use the above program to decide if the original number is a PRIME number?

This program will need the MODULO operator (%)','','','')
INSERT INTO dbo.Questions (questionTitle, questionText, startCode, programTest, solution) VALUES ('Lists 1','You can use this code to create a list of random integers for testing below problems

import random
def genRandomList(length, minNum, maxNum):
    alist=[]
    for n in range(length):
        newNum=random.randint(minNum, maxNum)
        alist.append(newNum)
    return alist


#creates a list of 20 numbers between 1 and 6
myList=genRandomList(20,1,6)
print(myList)','','','')
INSERT INTO dbo.Questions (questionTitle, questionText, startCode, programTest, solution) VALUES ('Lists 2','You have a list of integers called alist.  You need to output (print) all the numbers that are less than 10.

Extension:  Modify the program so that the user has to input an integer rather than always use 10

Use the following start code

alist = [4, 1, 27, 8, 2, 6,  13, 21, 3, 27, 7]','','','')
INSERT INTO dbo.Questions (questionTitle, questionText, startCode, programTest, solution) VALUES ('Lists 3','You have a list of integers called alist.  You need to output (print) the largest and smallest number in that list


Use the following start code

alist = [4, 1, 27, 8 , 2, 6,  13, 21, 3, 27, 7]','','','')
INSERT INTO dbo.Questions (questionTitle, questionText, startCode, programTest, solution) VALUES ('Lists 4','You have a list of integers called alist.  You need to output (print) the total of all the numbers and the average of the numbers in that list


Use the following start code

alist = [4, 1, 27, 8, 2, 6,  13, 21, 3, 27, 7]','','','')
INSERT INTO dbo.Questions (questionTitle, questionText, startCode, programTest, solution) VALUES ('Lists 5','Write a program that will output all even integers in a list

Use the following start code

alist = [4, 1, 27, 8, 2, 6,  13, 21, 3, 27, 7]

This program will need the MODULO operator (%)

Challenge: Modify the program so that the user can enter an integer and the program outputs all the inetgers in the list which can be evenly divided by that number','','','')
INSERT INTO dbo.Questions (questionTitle, questionText, startCode, programTest, solution) VALUES ('Lists 6','Write a Python program to multiply all the items in a list.

Use the following start code

alist = [4, 1, 27, 8, 2, 6,  13, 21, 3, 27, 7]','','','')
INSERT INTO dbo.Questions (questionTitle, questionText, startCode, programTest, solution) VALUES ('Lists 7','Write a Python program to remove duplicates from a list.

Use the following start code

alist = [4, 1, 27, 8, 1, 2, 6,  13, 21, 3, 4,  27, 7]','','','')
INSERT INTO dbo.Questions (questionTitle, questionText, startCode, programTest, solution) VALUES ('Lists 8','Write a Python program to create a list by concatenating a given list with a range from 1 to n.
Sample list : [''p'', ''q'']
n =5
Sample Output : [''p1'', ''q1'', ''p2'', ''q2'', ''p3'', ''q3'', ''p4'', ''q4'', ''p5'', ''q5'']','','','')
INSERT INTO dbo.Questions (questionTitle, questionText, startCode, programTest, solution) VALUES ('Subroutines 1','Write a function to convert float numbers to a fixed number of decimal places.  The number should aaccept 2 parameters, The number to convert and the number of decimal places.  You can ONLY use the int function within your function (so no use of round() or maths library.

Hint:  shift the number to the left,  convert to an integer and shift back to the right
Challenge,  how would you make sure it rounds up from  .5 onwards?','','','')
INSERT INTO dbo.Questions (questionTitle, questionText, startCode, programTest, solution) VALUES ('Subroutines 2','Write a function that takes a 3 x 3 list which represents a noughts and crosses board. Each element in the list will be one of ""X"", ""O"", ""-"" The function should then return 1 of 4 possible values depending on the game position,
O if Noughts has won,  
X if Cross has one,  
D if the game is a draw and 
? if the game is not yet over.  

A game is only a draw if all squares are filled and neither player has won.

You have been given the following starting code

def CheckBoard(gameBoard)
  result=""?""

  return result

test1=[[""X"",""X"",""-""],[""O"",""O"",""-""],[""X"",""O"",""-""]]
test2=[[""X"",""O"",""-""],[""O"",""X"",""-""],[""X"",""O"",""X""]]
test3=[[""X"",""X"",""O""],[""O"",""O"",""X""],[""X"",""X"",""O""]]
test4=[[""X"",""X"",""-""],[""O"",""O"",""O""],[""X"",""X"",""-""]]
test5=[[""X"",""X"",""-""],[""X"",""O"",""O""],[""X"",""O"",""-""]]

print(CheckBoard(test1))','','','')
INSERT INTO dbo.Questions (questionTitle, questionText, startCode, programTest, solution) VALUES ('File handling 1','Write a program that 
- Creates a file called ""words.txt""
- Prompts the user to enter a sentence
- Saves that sentence to the file
- Closes the file','','','')
INSERT INTO dbo.Questions (questionTitle, questionText, startCode, programTest, solution) VALUES ('File handling 2','Write a program that 
- Creates a file called ""words.txt""
- Prompts the user to enter a sentence
- Saves that sentence to the file
- Continues to prompt the user to enter sentences and saves them to the file until the user enters "":exit""
- Closes the file','','','')
INSERT INTO dbo.Questions (questionTitle, questionText, startCode, programTest, solution) VALUES ('File handling 3','Write a program that 
- Opens an existing file (you can use ""words.txt"" if youve done previous challenges) 
- Outputs that file to the screen','','','')
INSERT INTO dbo.Questions (questionTitle, questionText, startCode, programTest, solution) VALUES ('Complex 1','Create a program that has a random maze.  The player is asked to pick a direction.  Once they go there they get a random description and random choice of directions.  There is also a 1 in 10 chance of dying and a 1 in 10 chance of finding the exit

Hints
-  Use a text file or static list that contains room descriptions.  If using an external file then create a subroutine that reads them into a list.  There is a function called random.choice() which will pick a random item from a list
-  Use a specific subroutine for the ""room code"" which can be called from the main loop','','','')
INSERT INTO dbo.Questions (questionTitle, questionText, startCode, programTest, solution) VALUES ('Complex 2','Write a function that take 2 lists as parameters and returns a list of all the items that are in BOTH lists.  While each of the parameter lists may contain duplicates the return list should NOT contain any duplicates .  For example for the input lists

a=[1,1,2,5,8] 
b = [1,2,2,2,9]

the return list should be 

retList=[1,2]

You can use this starting code

def SetIntersection(listA, listB):
  retList=[]
  
  return retList    


a = [1,1,2,5,8] 
b = [1,2,2,2,9]
c = SetIntersection(a,b)
print(c)','','','')
INSERT INTO dbo.Questions (questionTitle, questionText, startCode, programTest, solution) VALUES ('Complex 3','Write a programto allow two people to play Noughts and crosses (TicTacToe).  The program should 
-  Display the current board, 
-  Allow the next player to select a locaton
-  Check the location is valid
-  Decide if the game is over (and if so who wins)
-  Continue until the game is over','','','')
INSERT INTO dbo.Questions (questionTitle, questionText, startCode, programTest, solution) VALUES ('Complex 4','A school uses the array to call an attendance register every morning.
 Write an algorithm using iteration to:
• display the name of each student one at a time from studentnames
• take as input whether that student is present or absent
• display the total number of present students and number of absent students in a suitable
message, after all student names have been displayed.','','','')