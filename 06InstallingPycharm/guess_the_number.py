import random

HOW_MANY_GUESSES = int(raw_input('how many guesses do you want: '))
RANGE_TOP = int(raw_input('set the top of the range: '))
RANGE_BOTTOM = int(raw_input('set the bottom of the range: '))
GUESSES_LEFT = HOW_MANY_GUESSES

while True:
    # generate the random number
    random_number = random.randint(RANGE_BOTTOM, RANGE_TOP)

    # tell the user the Range
    print "the number is between ", RANGE_BOTTOM, " and ", RANGE_TOP

    # give the user a certain amount of guesses
    for i in range(HOW_MANY_GUESSES):
        guess = int(raw_input('guess the number: '))
        GUESSES_LEFT = GUESSES_LEFT-1
        print "you have ", GUESSES_LEFT, "Guesses Left"
        if guess == random_number:
            print 'well done'
            break
        elif guess > random_number:
            print "too high"
        else:
            print "too low"

    print "let's try a new number!"
