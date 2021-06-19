from flask import Flask, make_response


app = Flask(__name__)


@app.route('/', methods=['GET'])
def hello_world():
    return make_response('Hello World!', 200)
