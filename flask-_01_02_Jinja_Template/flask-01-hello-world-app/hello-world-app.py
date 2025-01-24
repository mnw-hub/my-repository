from flask import Flask 

app = Flask(__name__)

@app.route("/")  #the @ symbol is a decorator to the homepage to run the hello world function
def hello():
    return "Hello World"

@app.route("/bye")
def goodbye():
    return "Goodbye"

@app.route("/third/subthird") #this won't work because it was not defined
def third():
    return "This a double path"

@app.route("/fourth/<string:id>") #this is a dynamic path
def fourth(id):
    output = f"Your ID is {id}"
    return output

if __name__ == '__main__':

    app.run(debug=True, port=5000)
    # app.run(host= '0.0.0.0', port=8081)