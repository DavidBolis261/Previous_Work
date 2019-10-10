# This File contains a function which checks if two strings are anagrams of each other or not.
# The two words are obtained by input from the User.
# If you are not sure what an Anagram is please read the following:
# An anagram is a word or phrase formed by rearranging the letters of a different word or phrase,
#   typically using all the original letters exactly once. For example, the word anagram can be rearranged into nag a ram, 
#   or the word binary into brainy

def anagram():
    
    word1 = input("Insert first word-> ")
    word1 = word1.lower().replace(" ", "") #Transforms all Uppser case to lowercase letters.
    word2 = input("Insert second word-> ")
    word2 = word2.lower().replace(" ", "") #Transforms all Uppser case to lowercase letters.
    if sorted(word1) == sorted(word2):
        print("These two words are anagrams.")
    else:
        print("These two words are not anagrams.")
     
 # This code works, in order to use it, simply call the function like this.
 
 anagram()
 # Here are three examples which you can use to test the code.
 
 # Ex1: silent | listen
 # Ex2: Conversation | voice rant on
 # Ex3: The Eyes | they see
 
 #EndOfFile
