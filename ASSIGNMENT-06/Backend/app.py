from flask import Flask, request, jsonify

app = Flask(__name__)

@app.route('/submit', methods=['POST'])
def submit():
    name = request.json.get('name')
    return jsonify({"message": f"Hello {name}, data received!"})

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
