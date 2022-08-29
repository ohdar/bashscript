#!/bin/bash
echo -e "Please provide filename you want created: \c"
read -r file
path="$(pwd)"
echo $path
touch $path/$file.sh
echo '#!/bin/bash' > $path/$file.sh
echo '#Purpose:' >> $path/$file.sh
echo '#Version: ' >> $path/$file.sh
echo '#Created Date:' `date` >> $path/$file.sh
echo '#Modified Date:' >> $path/$file.sh
echo '#Author: Brajesh Ohdar' >> $path/$file.sh
echo '# START #' >> $path/$file.sh
echo '# ------------------------------- #' >> $path/$file.sh
echo 'DELETE THIS LINE AND WRITE YOUR CODE YOUR PROGRAM HERE' >> $path/$file.sh
echo '# ------------------------------- #' >> $path/$file.sh
echo '# END #' >> $path/$file.sh
echo '# ---------------XXXXX---------------- #' >> $path/$file.sh
echo '# Execute below commands in terminal for this file and spot the difference' >> $path/$file.sh
echo '# sudo chmod +x filename.sh' >> $path/$file.sh
echo '# ./filename.sh' >> $path/$file.sh
echo '# ./filename.sh options if required' >> $path/$file.sh
echo '# sh filename.sh' >> $path/$file.sh


# Move this file to /bin using below command
# chmod 777 template1
# sudo mv template1 /bin/