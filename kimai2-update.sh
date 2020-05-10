#!/bin/sh

perform_update () {
	php74 ~/bin/composer install --no-dev --optimize-autoloader
	php74 bin/console kimai:update
}

echo "This updates to the latest kimai2 version"
echo "Infos on the webpage https://www.kimai.org/documentation/updates.html"
echo "Have you udpated to the newest version with git fetch --tags && git checkout <version>i [y/n]"
read updateperformed

case $updateperformed in
	y|Y) 
		perform_update	
		;;
	n|N)
		echo "Abort"
		;;
	*)
		echo "Option unknown. Abort!"
		;;
esac
