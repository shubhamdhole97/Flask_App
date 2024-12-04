Deploy REST API Flask app on EC2

Make EC2 machine
sudo apt update
git clone https://github.com/ItsArsalanMD/Flask_App
cd Flask_App/GET_Withour_DB$

sudo apt install python3 python3-venv python3-pip -y

Check all are installed or not
python3 --version
pip3 --version

Create virtual environment 
python3 -m venv env

Check there is env folder is created
Get into env and activate

source env/bin/activate

Give executable permission to app.py
chmod +x app.py
Optional sudo chown -R $USER:$USER /home/ubuntu/Flask_App/GET_Withour_DB/env

pip install  -r requirements.txt

pip install -r requirements.txt
flask --version

flask run --host=0.0.0.0

http://publicipv4:5000/users


If you want to run using python3 app.py

Change this line in app.py 
app.run(host="0.0.0.0", port=8080, debug=True)

http://publiipv4:8080/users

