copy:
	rsync -av ../emerald/ajax-loader.gif ../emerald/emerald.* ../emerald/hammer* ../emerald/jquery* ../emerald/index.html www/
	sed 's/only screen and (max-width: 760px)/only screen and (max-width: 6000px)/' < www/emerald.css > a.css && mv a.css www/emerald.css


icons:
	./make-icons
	cp www/icon* .

