from flask import Flask

app = Flask(__name__)

@app.route("/aditya")
def home():
    return "Hello Aditya!! From My First Flask Application"

@app.route("/pratik")
def pratik_home():
    return "Hello Pratik"

@app.route("/health")
def health():
    return "Application is healthy - version 3\n" \
    

@app.route("/info")
def info():
    return "Flask DevOps Project \n Version: 1.0 "

if __name__ == "__main__":
    app.run()
