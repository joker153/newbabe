if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/joker153/newbabe.git /newbabe
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /newbabe
fi
cd /newbabe
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
