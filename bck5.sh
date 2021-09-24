DATE=`date +"%d_%b_%Y_%H%M"`
SQLFILE=/home/shubham/shubh/db_backup_${DATE}.sql
DATABASE="wordpress"
USER="shubhankar"
PASSWORD="swamiom1994"

mysqldump --no-tablespaces --skip-lock-tables -u ${USER} -p${PASSWORD} ${DATABASE}|gzip > ${SQLFILE}.gz
sudo find /home/shubham/shubh/. -mtime +2 -exec rm {} \;

