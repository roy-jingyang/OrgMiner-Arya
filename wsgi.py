from flask import Flask

app = Flask(__name__)

@app.route('/')
def index():
    return '''
        <h3> Oops! You are viewing a legacy project. </h3>
        <h3> What you are looking for has been moved to <a href="https://ordinor.herokuapp.com/">https://ordinor.herokuapp.com/</a></h3>
    '''

if __name__ == '__main__':
    app.run()
