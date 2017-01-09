from flask import Flask
from subprocess import call

app = Flask(__name__)


@app.route('/webhook', methods=['GET', 'POST'])
def webhook():
    call('./blog_update.sh', shell=True)
    return 'ok'


if __name__ == '__main__':
    webhook()
