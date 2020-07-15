if [ ! -d "venv" ]; then
  echo "*** Creating virtual environment ***"
  python3 -m venv --system-site-packages ./venv
else
  echo "*** virtual environment already exists ***"
fi

echo "*** Activating virtual environment ***"
source ./venv/bin/activate

echo "*** Upgrading pip ***"
pip install --upgrade pip

echo "*** Installing pip packages ***"
pip3 install -r requirements.txt
