from flask import Flask,render_template, request, url_for, redirect, session
# im
# port pickle
# production server
# from livereload import Server

app = Flask(__name__)

@app.route("/")
def hello_world():
    return render_template('index.html')
# model=pickle.load(open("model.pkl","rb"))
@app.route("/pradict",methods=["POST"])
def pradict():
    return render_template('index.html',pradiction_test="twitter status is ={}".format())

if __name__ == "__main__":
  app.run(debug=True, host='0.0.0.0', port=5000)
    # production
    # server = Server(app.wsgi_app)
    # server.serve(port=5000)