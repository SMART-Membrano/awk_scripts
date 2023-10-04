#change the file name to your file name (example.txt)
awk 'BEGIN{IGNORECASE=1}/dbUserName=|dbPassword=|dirLogs=|JOB_NAME=|DB_USER=|DB_PASSWORD=|DIR_LOGS=|_dbUserName=|_dbPassword=|_dirLogs=|_jobName=/ {gsub(/(dbUserName=|dbPassword=|dirLogs=|JOB_NAME=|DB_USER=|DB_PASSWORD=|DIR_LOGS=|_dbUserName=|_dbPassword=|_dirLogs=|_jobName=)/,"\033[31m&\033[0m");print }' example.txt

#creating an alias, just copy and paste into cli
alias logsearch='awk '\''BEGIN{IGNORECASE=1}/dbUserName=|dbPassword=|dirLogs=|JOB_NAME=|DB_USER=|DB_PASSWORD=|DIR_LOGS=|_dbUserName=|_dbPassword=|_dirLogs=|_jobName=/ {gsub(/(dbUserName=|dbPassword=|dirLogs=|JOB_NAME=|DB_USER=|DB_PASSWORD=|DIR_LOGS=|_dbUserName=|_dbPassword=|_dirLogs=|_jobName=)/,"\033[31m&\033[0m");print }'\'''
#-> implementation
    #logsearch example.txt



