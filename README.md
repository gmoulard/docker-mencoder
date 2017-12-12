For building images : 

docker build -t mencoder https://raw.githubusercontent.com/gmoulard/docker-mencoder/master/Dockerfile

export FOLDER_IMAGES=/data/public/Photo/pi
export JOUR=vendredi

##ls $FOLDER_IMAGES/img_$JOUR* > $FOLDER_IMAGES/$JOUR.txt
##docker run -it -v $FOLDER_IMAGES:/images mencoder mencoder -nosound -ovc lavc -lavcopts vcodec=mpeg4:aspect=16/9:vbitrate=8000000 -vf scale=1920:1080 -o $JOUR.avi -mf type=jpeg:fps=24 mf://@$JOUR.txt

docker run -it -v $FOLDER_IMAGES:/images mencoder mencoder -nosound -ovc lavc -lavcopts vcodec=mpeg4:aspect=16/9:vbitrate=8000000 -vf scale=1920:1080 -o $JOUR.avi -mf type=jpeg:fps=10 mf://img_$JOUR_*.jpg

