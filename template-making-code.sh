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
echo ""
echo '# ------------------------------- #' >> /home/brajesh/Desktop/bashscript/$file.sh
echo '# END #' >> /home/brajesh/Desktop/bashscript/$file.sh

# Move this file to /bin using below command
# chmod 777 template
# sudo mv template /bin/