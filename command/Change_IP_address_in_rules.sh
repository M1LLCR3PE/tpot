# Move to the location of rules.sh
cd /opt/tpot/bin

# Backup acquisition
cp -p rules.sh rules.sh_$(date +"%Y%m%d")

# Change IP address by sed command
sed -e "s/**1.**1.**1.**1/**2.**2.**2.**2/g" rules.sh_$(date +"%Y%m%d") > rules.sh

# Reflecting Settings
shutdown -r now
