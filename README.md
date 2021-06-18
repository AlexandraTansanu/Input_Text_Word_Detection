# Text input word detection
This is a simple text input program capable of detecting specific words. Complexer versions of such programs are ofetn used by the police force to identify potential incriminatory messages.   

**Difficulty level:** Beginner. 

**Programming language:** Java.

**How it works:** The program works by continually updating a string, also referred to as a typing string, which receives input until the return key is pressed. After this action, the content of the typing string is stored in a list. If 'quit' is inputted, the typing string will not receive any new input and all saved strings in the list will be displayed. 
Additionally, the exercise is designed to identify any trigger words stored in advance in a text file. These words are identifiable even strings containing no spaces. If a match is found, the trigger word will be highlighted in red. Otherwise, the text will be displayed in green. 

> This exercise is written using the Processing IDE. More information on inbuilt functions that have been used throughout the code can be found by accessing the [Processing Documentation](https://processing.org/reference/)

## Text_input.pde
https://user-images.githubusercontent.com/60512873/122519502-62ebe380-cfc7-11eb-8df7-db29d308bff6.mp4


