ls -lS $1| grep -v / | tr -s ' ' |cut -d' ' -f9| head -2 
