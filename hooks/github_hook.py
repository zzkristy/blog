from flask import Flask
app = Flask(__name__)


@app.route('/webhook')
def webhook():
    return 'ok'
