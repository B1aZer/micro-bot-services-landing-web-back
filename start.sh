#!/bin/bash
#source venv/bin/activate
cp ../landing-bootstrap-front/assets/css/starter.css ./app/static/assets/css/
cp ../landing-bootstrap-front/assets/css/starter.css.map ./app/static/assets/css/
cp ../landing-bootstrap-front/assets/js/bundle-min.js ./app/static/assets/js/
cp ../landing-bootstrap-front/index.html ./app/templates/
echo "DONE COPYING"
sed -i 's/assets\//static\/assets\//g' ./app/templates/index.html
sed -i 's/\/js\/index.js/\/js\/bundle-min.js/g' ./app/templates/index.html
sed -i 's/redirect_uri=http%3A%2F%2Flocalhost%3A3000%2F/redirect_uri=https%3A%2F%2Fgoodee.finance/g' ./app/templates/index.html
python server.py
