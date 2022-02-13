echo "Cloning Repo...."
if [ -z $BRANCH ]
then
  echo "Cloning main branch...."
  git clone https://github.com/Devansh20055/vc-video-song-player /vc-video-song-player
else
  echo "Cloning $BRANCH branch...."
  git clone https://github.com/Devansh20055/vc-video-song-player -b $BRANCH /vc-video-song-player
fi
cd /vc-video-song-player
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 main.py
