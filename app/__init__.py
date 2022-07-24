from flask import render_template, Flask, jsonify, request, make_response

app = Flask(__name__)

@app.route("/")
def index():
    return render_template('index.html')

@app.route("/pass", methods=['POST'])
def hello_world():
    #print(request.json['pass'])
    resp = make_response(jsonify({"status":"ok"}))
    resp.headers['Access-Control-Allow-Origin'] = '*'
    return resp