from flask import Flask #
app = Flask(__name__) #
@app.route("/") #
def hello(): #
    return "Hello World!" #
@app.route("/home") #
def home(): #
    return "Hello World again!" #
@app.route("/user") #
def user(): #
    return "Hello World, Hello!" #

if __name__ == "__main__": #
    app.run(host="0.0.0.0", port=int("5000"), debug=True) #