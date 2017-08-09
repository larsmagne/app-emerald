copy:
	rsync -av ../emerald/ajax-loader.gif ../emerald/emerald.* ../emerald/hammer* ../emerald/jquery* ../emerald/index.html www/
	sed 's/only screen and (max-width: 760px)/only screen and (max-width: 6000px)/' < www/emerald.css > a.css && mv a.css www/emerald.css


icons:
	for s in 72 57 152 60 76 29 40 50; do\
		convert -resize $${s}x$${s} www/icon.png www/icon$${s}.png;\
		d=`expr $$s \* 2`\
		convert -resize $${d}x$${d} www/icon.png www/icon$${s}x2.png;\
	done
	echo convert -resize 167x167 www/icon.png www/icon83.5x2.png
	cp www/icon* .

