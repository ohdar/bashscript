#!/bin/bash
echo -e "Please provide filename you want created: \c"
read -r file
touch /home/brajesh/Desktop/bashscript/$file.sh
echo '#!/bin/bash' > /home/brajesh/Desktop/bashscript/$file.sh
echo '#Purpose:' >> /home/brajesh/Desktop/bashscript/$file.sh
echo '#Version: ' >> /home/brajesh/Desktop/bashscript/$file.sh
echo '#Created Date:' `date` >> /home/brajesh/Desktop/bashscript/$file.sh
echo '#Modified Date:' >> /home/brajesh/Desktop/bashscript/$file.sh
echo '#Author: Brajesh Ohdar' >> /home/brajesh/Desktop/bashscript/$file.sh
echo '# START #' >> /home/brajesh/Desktop/bashscript/$file.sh
echo '# ------------------------------- #' >> /home/brajesh/Desktop/bashscript/$file.sh
echo "DELETE THIS LINE AND WRITE YOUR CODE YOUR PROGRAM HERE"
echo '# ------------------------------- #' >> /home/brajesh/Desktop/bashscript/$file.sh
echo '# END #' >> /home/brajesh/Desktop/bashscript/$file.sh
echo '# ---------------XXXXX---------------- #' >> /home/brajesh/Desktop/bashscript/$file.sh
echo '# Execute below commands in terminal for this file and spot the difference' >> /home/brajesh/Desktop/bashscript/$file.sh
echo '# sudo chmod +x filename.sh' >> /home/brajesh/Desktop/bashscript/$file.sh
echo '# ./filename.sh' >> /home/brajesh/Desktop/bashscript/$file.sh
echo '# ./filename.sh options if required' >> /home/brajesh/Desktop/bashscript/$file.sh
echo '# sh filename.sh' >> /home/brajesh/Desktop/bashscript/$file.sh


# Move this file to /bin using below command
# chmod 777 template
# sudo mv template /bin/