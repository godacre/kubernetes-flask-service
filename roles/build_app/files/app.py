#!/usr/bin/env python
from flask import Flask, render_template, url_for, flash, redirect
from forms import AnagramForm
 
app = Flask(__name__)

app.config['SECRET_KEY'] = '16010ab7331347c3030l64323011'

@app.route("/", methods=["GET", "POST"])
def index():
    form = AnagramForm()
    if form.validate_on_submit():
        if sorted(form.str1.data.lower()) == sorted(form.str2.data.lower()):
            flash('True', 'success')
        else:
            flash('False', 'danger')
    return render_template('index.html', form=form)

 
if __name__ == "__main__":
    app.run(host='0.0.0.0', debug=True)
