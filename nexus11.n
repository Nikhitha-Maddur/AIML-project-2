
responses = {
    "hello": "Hello!welcome to chatbot.",
    "thank you": " How can I assist you?",
    "how are you?": "I'm just a simple bot, but I'm doing great!",
    
    "what are the symptoms of the flu?":"The flu, or influenza, is a contagious respiratory illness caused by influenza viruses. Symptoms of the flu can range from mild to severe and typically come on suddenly",
    "what are some effective ways to manage stress?":"Managing stress effectively involves a combination of physical, mental, and lifestyle strategies",


    "thank you!":"Your Welcome! if you have any questions feel free to ask",

}


def get_response(user_input):
    user_input = user_input.lower()
    #error handling line if chatbot doesn't understand the question
    return responses.get(user_input, "I'm sorry, I don't understand that.")

# Main loop
def chat():
    print("Chatbot: Hello! Type 'bye' to exit.")
    
    while True:
 
        user_input = input("You: ")
        if user_input.lower() == "bye":
            print("Chatbot: " + responses["bye"])
            break
        response = get_response(user_input)
        print("Chatbot: " + response)


if __name__ == "__main__":
    chat()