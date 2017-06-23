export pwd=`pwd`
echo FTP FIRST
git status --porcelain | grep chapters | sed "s#.*files/chapters\(/.*\).*#sftp s18d0439@ftp.s18d0439.alojamientovirtual.com:public_html/elvater.net/morti/files/chapters <<< $'put "$pwd"/files/chapters\1'#" | sh
git status --porcelain | grep additional | sed "s#.*files/additional\(/.*\).*#sftp s18d0439@ftp.s18d0439.alojamientovirtual.com:public_html/elvater.net/morti/files/additional <<< $'put "$pwd"/files/additional\1'#" | sh
echo GIT SECOND
git add .
git commit -m 'Commit generated automatically from $COMPUTER_ID'