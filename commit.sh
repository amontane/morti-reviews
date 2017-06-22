export pwd=`pwd`
sftp s18d0439@ftp.s18d0439.alojamientovirtual.com 
git status --porcelain | grep chapters | sed 's#.*files\/chapters\(\/.*\).*#sftp s18d0439@ftp.s18d0439.alojamientovirtual.com put'$pwd'/\/files\/chapters\/\1 public_html\/elvater.net\/morti\/files\/chapters\/\1#'
git status --porcelain | grep additional | sed 's#.*files\/additional\(\/.*\).*#sftp s18d0439@ftp.s18d0439.alojamientovirtual.com put'$pwd'/\/files\/additional\/\1 public_html\/elvater.net\/morti\/files\/additional\/\1#'