from flask_wtf import FlaskForm
from wtforms import StringField, SubmitField
from wtforms.validators import DataRequired, Length

class AnagramForm(FlaskForm):
    str1 = StringField('String 1:', validators=[DataRequired(), Length(min=1)])
    str2 = StringField('String 2:', validators=[DataRequired(), Length(min=1)])
    submit = SubmitField('Run')

