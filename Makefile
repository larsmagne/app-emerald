copy:
	rsync -av ../emerald/ajax-loader.gif ../emerald/emerald.* ../emerald/hammer* ../emerald/jquery* ../emerald/index.html www/
	rsync -av ../emerald/*.ttf ../emerald/fastclick.min.js www/
	sed 's/only screen and (max-width: 760px)/only screen and (max-width: 6000px)/' < www/emerald.css > a.css && mv a.css www/emerald.css
	echo "isMobile = true;" >> www/emerald.js
	echo "phoneGap = true;" >> www/emerald.js


icons:
	./make-icons
	cp www/icon* .

