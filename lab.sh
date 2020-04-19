nohup python /TokenServer.py >> /log.log &
rm -rf /jupyter_dir
mkdir /jupyter_dir
cp -r /data /jupyter_dir
jupyter lab --allow-root