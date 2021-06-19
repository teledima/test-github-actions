from flask import Flask, make_response


app = Flask(__name__)


@app.route('/', methods=['GET'])
def hello_world():
    return make_response('Hello World!', 200)

@app.route('/v1', methods=['GET'])
def first_page():
    return make_response('Release v1', )
