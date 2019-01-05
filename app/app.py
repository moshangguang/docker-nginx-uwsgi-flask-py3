from flask import Flask

app = Flask(__name__)


@app.route('/hello')
def hello():
    return 'Hello!!!\n'


@app.route('/world')
def world():
    return 'World!!!\n'


@app.route('/')
def hello_world():
    return 'Hello World!!!\n'


if __name__ == '__main__':
    app.run()

