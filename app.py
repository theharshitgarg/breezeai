from flask import Flask, request
# from typing import string

app = Flask(__name__)


@app.route("/")
def hello():
	return "Hello"


@app.route("/reverse-string", methods=["GET"])
def reverse_string():
	string = request.args.get("q", "")
	string = string[::-1]
	if not string:
		return "Empty string. Give value to q query paramter"
	return string


if __name__ == "__main__":
	app.run(debug=True)