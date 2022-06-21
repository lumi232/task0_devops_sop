#! /bin/sudo bash

for group in class1 class2 class3 class4 class5;
do
	sudo groupadd $group
	for student in student1 student2 student3 student4 student5;
		do sudo useradd  -g ${group} ${group}${student}
		echo ${group}${student}"@123" |passwd "${group}${student}" 
		sudo usermod -G ${group} ${group}${student}
		
done
		sudo useradd  -g ${group} ${group}"teacher"
		echo ${group}"@123" |passwd "${group}teacher" 
		sudo usermod -G ${group} ${group}"teacher"
done

for n in {1..5};
do 
	mkdir class$n
	chmod 740 class$n
	cd class$n
	mkdir marks
	chmod 740 marks
	sudo chown :class$n marks
	sudo chown class$n"teacher" marks
	cd marks
	for s in {1..5};
		do
		mkdir student$s
		sudo chown :class$n student$s
		sudo chown  student$s
		chmod 740 student$s
		done
	cd -
	mkdir notices
	chmod 740 notices
	cd notices
	for s in {1..5};
                do
                mkdir student$s
                sudo chown :class$n student$s
                chmod 740 student$s
                cd student$s
                touch notice.txt
                cd -
                done
	cd -
	sudo chown :class$n notices
	sudo chown class$n"teacher" notices
	mkdir attendance
	chmod 740 attendance
	cd attendance
	for s in {1..5};
                do
                mkdir student$s
                sudo chown :class$n student$s
                chmod 740 student$s
                done
	cd -
	sudo chown :class$n attendance
	sudo chown class$n"teacher" attendance
	cd ~
	cd Spider_Task1
	
done

