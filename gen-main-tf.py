#!/usr/bin/python3

import json
import os
import pprint
from jinja2 import Environment, FileSystemLoader

with open('main.tf.vars.json') as json_file:  
    data = json.load(json_file)

THIS_DIR = os.path.dirname(os.path.abspath(__file__))
j2_env = Environment(loader=FileSystemLoader(THIS_DIR), trim_blocks=True)

#print(j2_env.get_template('main.tf.template').render(data=data))
#open('main.tf','w').write(j2_env.get_template('main.tf.template').render(data=data))

with open('main.tf','w') as maintf:  
    maintf.write(j2_env.get_template('main.tf.jinja').render(data=data))
