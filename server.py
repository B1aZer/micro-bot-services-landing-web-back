from flask import render_template, Flask, jsonify, request, make_response

app = Flask(__name__)

@app.route("/pass", methods=['POST'])
def hello_world():
    #print(request.json['pass'])
    resp = make_response(jsonify({"status":"ok"}))
    resp.headers['Access-Control-Allow-Origin'] = 'http://localhost:3000'
    return resp

app.run(debug=True)
