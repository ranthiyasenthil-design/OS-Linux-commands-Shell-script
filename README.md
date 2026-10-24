# OS-Linux-commands-Shell-scripting
Operating systems Lab exercise
# Linux commands-Shell scripting
Linux commands-Shell scripting

# AIM:
To practice Linux Commands and Shell Scripting

# DESIGN STEPS:

### Step 1:

Navigate to any Linux environment installed on the system or installed inside a virtual environment like virtual box/vmware or online linux JSLinux (https://bellard.org/jslinux/vm.html?url=alpine-x86.cfg&mem=192) or docker.

### Step 2:

Execute the following commands

### Step 3:

Testing the commands for the desired output. 

# COMMANDS:
### Create the following files file1, file2 as follows:
cat > file1
```
chanchal singhvi
c.k. shukla
s.n. dasgupta
sumit chakrobarty
^d
```
cat > file2
```
anil aggarwal
barun sengupta
c.k. shukla
lalit chowdury
s.n. dasgupta
^d
```
### Display the content of the files
cat < file1
## OUTPUT
<img width="516" height="162" alt="image" src="https://github.com/user-attachments/assets/e6f19e7b-c274-4867-be4f-d6acf2ef4a6c" />



cat < file2
## OUTPUT
<img width="722" height="179" alt="image" src="https://github.com/user-attachments/assets/7caea93d-af1a-4ade-866e-5e389e424c55" />


# Comparing Files
cmp file1 file2
## OUTPUT
<img width="696" height="80" alt="image" src="https://github.com/user-attachments/assets/55c242ba-000b-4fea-a0bb-5086f6f345af" />

comm file1 file2
 ## OUTPUT
<img width="722" height="179" alt="image" src="https://github.com/user-attachments/assets/3c4648af-debf-426d-b775-e584ab33203d" />

 
diff file1 file2
## OUTPUT
<img width="662" height="272" alt="image" src="https://github.com/user-attachments/assets/60e205a9-1da2-4aba-a4ef-0038cdb4f7aa" />


#Filters

### Create the following files file11, file22 as follows:

cat > file11
```
 worldHello
This is my world
^d
```
cat > file22
```
1001 | Ram | 10000 | HR
1002 | tom |  5000 | Admin
1003 | Joe |  7000 | Developer
^d
```
cut

cut -c1-3 file11
## OUTPUT

<img width="610" height="99" alt="image" src="https://github.com/user-attachments/assets/2b10e821-8aac-46e9-ae60-599659597d3a" />



cut -d "|" -f 1 file22
## OUTPUT
<img width="644" height="134" alt="image" src="https://github.com/user-attachments/assets/4274c712-c6b4-4c43-b668-9e08a163d586" />


cut -d "|" -f 2 file22
## OUTPUT
<img width="789" height="131" alt="image" src="https://github.com/user-attachments/assets/930733d1-c0a0-4710-88e2-0d1c9635b36c" />


cat < newfile 
```
Hello world
hello world
^d
````
cat > newfile 
Hello world
hello world
 
grep Hello newfile 
## OUTPUT
<img width="480" height="75" alt="image" src="https://github.com/user-attachments/assets/ff04ef20-0323-4389-93e8-aa76e2035266" />



grep hello newfile 
## OUTPUT
<img width="480" height="75" alt="image" src="https://github.com/user-attachments/assets/46ed2d36-9e30-436f-8d2f-35b3a94c0bc8" />




grep -v hello newfile 
## OUTPUT
<img width="786" height="87" alt="image" src="https://github.com/user-attachments/assets/cc5b6e08-abe9-4de5-999d-6d69c5e28ba0" />



cat newfile | grep -i "hello"
## OUTPUT
<img width="545" height="106" alt="image" src="https://github.com/user-attachments/assets/706de950-5c7a-4c04-9a5f-0546122515e6" />




cat newfile | grep -i -c "hello"
## OUTPUT
<img width="665" height="81" alt="image" src="https://github.com/user-attachments/assets/ac67a903-6a48-42a7-87be-1a75ad17bab8" />




grep -R ubuntu /etc
## OUTPUT

<img width="1100" height="356" alt="image" src="https://github.com/user-attachments/assets/1c11621e-b2c5-43f3-b05a-de84b892f548" />



grep -w -n world newfile   
## OUTPUT
<img width="717" height="95" alt="image" src="https://github.com/user-attachments/assets/f110fe73-ac02-47bc-b38c-98e51f42a4b2" />


cat < newfile 
```
Hello world
hello world
Linux is world number 1
Unix is predecessor
Linux is best in this World
^d
```

cat > newfile
```
Hello world
hello world
Linux is world number 1
Unix is predecessor
Linux is best in this World
^d
 ```
egrep -w 'Hello|hello' newfile 
## OUTPUT
<img width="637" height="100" alt="image" src="https://github.com/user-attachments/assets/7fb1eb55-4f4d-4cba-bd9c-b6d47b781388" />



egrep -w '(H|h)ello' newfile 
## OUTPUT
<img width="791" height="109" alt="image" src="https://github.com/user-attachments/assets/a6e99f36-addb-4bf5-9f45-a98a9779e6ea" />



egrep -w '(H|h)ell[a-z]' newfile 
## OUTPUT
<img width="877" height="106" alt="image" src="https://github.com/user-attachments/assets/63a9d251-a937-48cb-8296-8151b52b5226" />




egrep '(^hello)' newfile 
## OUTPUT
<img width="793" height="78" alt="image" src="https://github.com/user-attachments/assets/13145767-a941-42d3-80a1-f013dd7684fd" />



egrep '(world$)' newfile 
## OUTPUT
<img width="690" height="105" alt="image" src="https://github.com/user-attachments/assets/c16fcc0e-a839-4daf-85ba-d65a82078557" />



egrep '(World$)' newfile 
## OUTPUT
<img width="697" height="76" alt="image" src="https://github.com/user-attachments/assets/83a58fa7-8255-42ff-8044-60c7e722aa9a" />


egrep '((W|w)orld$)' newfile 
## OUTPUT
<img width="676" height="124" alt="image" src="https://github.com/user-attachments/assets/8199ffd2-e1fd-4357-9356-1c792a2970ab" />



egrep '[1-9]' newfile 
## OUTPUT
<img width="725" height="76" alt="image" src="https://github.com/user-attachments/assets/7e7679da-8175-4ef4-95d8-26ec22df9c19" />



egrep 'Linux.*world' newfile 
## OUTPUT
<img width="641" height="75" alt="image" src="https://github.com/user-attachments/assets/e5d4f38b-b4ba-4406-9227-89f620333924" />


egrep 'Linux.*World' newfile 
## OUTPUT
<img width="641" height="75" alt="image" src="https://github.com/user-attachments/assets/a86e3e52-9383-46c9-992a-117dedb56227" />


egrep l{2} newfile
## OUTPUT
<img width="607" height="101" alt="image" src="https://github.com/user-attachments/assets/a1de69f0-b7e3-4357-a7f4-469f16f265fb" />



egrep 's{1,2}' newfile
## OUTPUT 
<img width="502" height="126" alt="image" src="https://github.com/user-attachments/assets/a7c621ee-374b-47a5-8322-ab7956697bfc" />


cat > file23
```
1001 | Ram | 10000 | HR
1001 | Ram | 10000 | HR
1002 | tom |  5000 | Admin
1003 | Joe |  7000 | Developer
1005 | Sam |  5000 | HR
1004 | Sit |  7000 | Dev
1003 | Joe |  7000 | Developer
1001 | Ram | 10000 | HR
^d
```


sed -n -e '3p' file23
## OUTPUT
<img width="443" height="79" alt="image" src="https://github.com/user-attachments/assets/c6d5623e-f6ac-464b-89ed-5c84f9bac27d" />



sed -n -e '$p' file23
## OUTPUT
<img width="460" height="76" alt="image" src="https://github.com/user-attachments/assets/08e284cf-c14a-48ab-a9ac-1de0dae06e65" />



sed  -e 's/Ram/Sita/' file23
## OUTPUT
<img width="552" height="259" alt="image" src="https://github.com/user-attachments/assets/7c912667-7fc5-4297-8575-cdfbbe7b3bf9" />



sed  -e '2s/Ram/Sita/' file23
## OUTPUT
<img width="767" height="260" alt="image" src="https://github.com/user-attachments/assets/48f707eb-967d-4be5-9083-1d747fa52a2d" />





sed  '/tom/s/5000/6000/' file23
## OUTPUT
<img width="617" height="260" alt="image" src="https://github.com/user-attachments/assets/4a5be9c8-41a9-42de-9cbf-7c565b1bad74" />



sed -n -e '1,5p' file23
## OUTPUT
<img width="725" height="174" alt="image" src="https://github.com/user-attachments/assets/3014e75e-52ac-4cc3-9189-925d0a828a27" />



sed -n -e '2,/Joe/p' file23
## OUTPUT
<img width="621" height="128" alt="image" src="https://github.com/user-attachments/assets/40fa1983-598c-499b-aa67-bf1f0b66f6fc" />




sed -n -e '/tom/,/Joe/p' file23
## OUTPUT
<img width="543" height="102" alt="image" src="https://github.com/user-attachments/assets/c5dfd400-efb8-4c90-932e-64810fc5c036" />



seq 10 
## OUTPUT
<img width="656" height="300" alt="image" src="https://github.com/user-attachments/assets/90130d3e-d8b6-446a-8ca4-c004b45957a5" />



seq 10 | sed -n '4,6p'
## OUTPUT
<img width="817" height="138" alt="image" src="https://github.com/user-attachments/assets/c58c3c87-4901-4c44-ab9c-8e9b9df18298" />



seq 10 | sed -n '2,~4p'
## OUTPUT
<img width="447" height="128" alt="image" src="https://github.com/user-attachments/assets/1247e0bd-4cb2-41d5-b309-59fdf9d4d7ed" />



seq 3 | sed '2a hello'
## OUTPUT
<img width="648" height="150" alt="image" src="https://github.com/user-attachments/assets/063a8e26-d298-4c8a-9ae2-d0e32d7416a1" />


seq 2 | sed '2i hello'
## OUTPUT
<img width="600" height="130" alt="image" src="https://github.com/user-attachments/assets/6beaea97-b380-4df4-bd9d-09b95f110ffe" />


seq 10 | sed '2,9c hello'
## OUTPUT
<img width="647" height="127" alt="image" src="https://github.com/user-attachments/assets/3b90b09c-3d30-4c65-9a5f-7444a084a45b" />


sed -n '2,4{s/^/$/;p}' file23
## OUTPUT
<img width="783" height="132" alt="image" src="https://github.com/user-attachments/assets/075bea7b-0195-4845-8357-39ee7fa2aae6" />



sed -n '2,4{s/$/*/;p}' file23
## output 
<img width="615" height="125" alt="image" src="https://github.com/user-attachments/assets/0d686788-8def-47a9-8591-c23cde8e4ea4" />


#Sorting File content
cat > file21
```
1001 | Ram | 10000 | HR
1002 | tom |  5000 | Admin
1003 | Joe |  7000 | Developer
1005 | Sam |  5000 | HR
1004 | Sit |  7000 | Dev
``` 
sort file21
## OUTPUT
<img width="561" height="180" alt="image" src="https://github.com/user-attachments/assets/5c1811d6-b3c3-4481-ac81-4a9ce2ad211a" />


cat > file22
```
1001 | Ram | 10000 | HR
1001 | Ram | 10000 | HR
1002 | tom |  5000 | Admin
1003 | Joe |  7000 | Developer
1005 | Sam |  5000 | HR
1004 | Sit |  7000 | Dev
``` 
uniq file22
## OUTPUT
<img width="727" height="178" alt="image" src="https://github.com/user-attachments/assets/aa94702c-afff-466a-8f48-f95e5643f666" />


#Using tr command

cat file23 | tr [:lower:] [:upper:]
 ## OUTPUT
<img width="732" height="259" alt="image" src="https://github.com/user-attachments/assets/276239ed-bd9d-4eab-9479-b9690b72c791" />

cat < urllist.txt
```
www. yahoo. com
www. google. com
www. mrcet.... com
^d
 ```
cat > urllist.txt
```
www. yahoo. com
www. google. com
www. mrcet.... com
 ```
cat urllist.txt | tr -d ' '
 ## OUTPUT
<img width="887" height="139" alt="image" src="https://github.com/user-attachments/assets/b813d3b0-74bb-4b4f-8206-6576c8d09a91" />


 
cat urllist.txt | tr -d ' ' | tr -s '.'
## OUTPUT
<img width="752" height="135" alt="image" src="https://github.com/user-attachments/assets/fb56075d-cca7-4a43-b454-0431970fa3b4" />



#Backup commands
tar -cvf backup.tar *
## OUTPUT
<img width="1301" height="483" alt="image" src="https://github.com/user-attachments/assets/1dee8903-0d22-4579-b80b-00a4c86d8d7c" />

mkdir backupdir
 
mv backup.tar backupdir

cd backupdir
 
tar -tvf backup.tar
## OUTPUT
<img width="780" height="487" alt="image" src="https://github.com/user-attachments/assets/475a7de1-2cec-48fb-aef0-a8a0c4a013d0" />


tar -xvf backup.tar
## OUTPUT
<img width="1008" height="482" alt="image" src="https://github.com/user-attachments/assets/7ec9ba08-6e73-40fd-8477-872aab085756" />

gzip backup.tar

ls .gz
## OUTPUT
<img width="860" height="83" alt="image" src="https://github.com/user-attachments/assets/1baa26a4-d553-4cc8-8e0c-6bb07d9a528c" />

gunzip backup.tar.gz
## OUTPUT
<img width="557" height="58" alt="image" src="https://github.com/user-attachments/assets/d77094fe-c397-4d9b-8b34-baeed98e2917" />

 
# Shell Script
```
echo '#!/bin/sh' > my-script.sh
echo 'echo Hello World‘; exit 0 >> my-script.sh
```
chmod 755 my-script.sh
./my-script.sh
## OUTPUT
<img width="592" height="135" alt="image" src="https://github.com/user-attachments/assets/272009e6-85f4-4275-b513-90304d788486" />

 
cat << stop > herecheck.txt
```
hello in this world
i cant stop
for this non stop movement
stop
```

cat herecheck.txt
## OUTPUT
<img width="797" height="149" alt="image" src="https://github.com/user-attachments/assets/e564a411-4b90-4a85-8d92-3660c8dd3e05" />


cat < scriptest.sh 
```bash
\#!/bin/sh
echo “File name is $0 ”
echo "File name is " `basename $0`
echo “First arg. is ” $1
echo “Second arg. is ” $2
echo “Third arg. is ” $3
echo “Fourth arg. is ” $4
echo 'The $@ is ' $@
echo 'The $\# is ' $1#
echo 'The $$ is ' $$
ps
^d
 ```

cat scriptest.sh 
```bash
\#!/bin/sh
echo “File name is $0 ”
echo "File name is " `basename $0`
echo “First arg. is ” $1
echo “Second arg. is ” $2
echo “Third arg. is ” $3
echo “Fourth arg. is ” $4
echo 'The $@ is ' $@
echo 'The $\# is ' $\#
echo 'The $$ is ' $$
ps
```
 
chmod 777 scriptest.sh
 
./scriptest.sh 1 2 3

## OUTPUT
<img width="818" height="430" alt="image" src="https://github.com/user-attachments/assets/be93d73c-bfd3-4988-ac84-74adb58a2047" />


 
ls file1
## OUTPUT
<img width="645" height="77" alt="image" src="https://github.com/user-attachments/assets/f4a53a66-f563-4f63-99d6-0bf146a1b132" />

echo $?
## OUTPUT 
./one
bash: ./one: Permission denied
 
echo $?
## OUTPUT 
<img width="647" height="83" alt="image" src="https://github.com/user-attachments/assets/18fe8a0e-d81c-449a-8691-36c7cf8256ca" />

abcd
 
echo $?
 ## OUTPUT
<img width="647" height="83" alt="image" src="https://github.com/user-attachments/assets/fbf72685-ec1b-4058-87d2-261975ee41b0" />


 
# mis-using string comparisons

cat < strcomp.sh 
```bash
\#!/bin/bash
val1=baseball
val2=hockey
if [ $val1 \> $val2 ]
then
echo "$val1 is greater than $val2"
else
echo "$val1 is less than $val2"
fi
^d
```
cat
cat strcomp.sh 
```bash
\#!/bin/bash
val1=baseball
val2=hockey
if [ $val1 \> $val2 ]
then
echo "$val1 is greater than $val2"
else
echo "$val1 is less than $val2"
fi
```
##OUTPUT
![image](images/imhhh.png)


chmod 755 strcomp.sh
 
./strcomp.sh 
## OUTPUT
![image](images/imafff.png)

# check file ownership
cat < psswdperm.sh 
```bash
\#!/bin/bash
if [ -O /etc/passwd ]
then
echo “You are the owner of the /etc/passwd file”
else
echo “Sorry, you are not the owner of the /etc/passwd file”
fi
^d
```./

cat psswdperm.sh 
```bash
/#!/bin/bash
if [ -O /etc/passwd ]
then
echo “You are the owner of the /etc/passwd file”
else
echo “Sorry, you are not the owner of the /etc/passwd file”
fi
 ```
./psswdperm.sh
## OUTPUT
![image](<images/image img.png>)
# check if with file location
cat>ifnested.sh 
```bash
\#!/bin/bash
if [ -e $HOME ]
then
echo “$HOME The object exists, is it a file?”
if [ -f $HOME ]
then
echo “Yes,$HOME it is a file!”
else
echo “No,$HOME it is not a file!”
if [ -f $HOME/.bash_history ]
then
echo “But $HOME/.bash_history is a file!”
fi
fi
else
echo “Sorry, the object does not exist”
fi
^d
```
cat ifnested.sh 
```
\#!/bin/bash
if [ -e $HOME ]
then
echo “$HOME The object exists, is it a file?”
if [ -f $HOME ]
then
echo “Yes,$HOME it is a file!”
else
echo “No,$HOME it is not a file!”
if [ -f $HOME/.bash_history ]
then
echo “But $HOME/.bash_history is a file!”
fi
fi
else
echo “Sorry, the object does not exist”
fi
```

./ifnested.sh 
## OUTPUT
![image](images/p1.png)


# using numeric test comparisons
cat > iftest.sh 
```bash
\#!/bin/bash
val1=10
val2=11test
if [ $val1 -gt 5 ]
then
echo “The test value $val1 is greater than 5”
fi
if [ $val1 -eq $val2 ]
then
echo “The values are equal”
else
echo “The values are different”
fi
^d
```


cat iftest.sh 
```bash
\#!/bin/bash
val1=10
val2=11
if [ $val1 -gt 5 ]
then
echo “The test value $val1 is greater than 5”
fi
if [ $val1 -eq $val2 ]
then
echo “The values are equal”
else
echo “The values are different”
fi
```

$ chmod 755 iftest.sh
 
$ ./iftest.sh 
##OUTPUT
![image](images/p2.png)
# check if a file
cat > ifnested.sh 
```bash
\#!/bin/bash
if [ -e $HOME ]
then
echo “$HOME The object exists, is it a file?”
if [ -f $HOME ]
then
echo “Yes,$HOME it is a file!”
else
echo “No,$HOME it is not a file!”
if [ -f $HOME/.bash_history ]
then
echo “But $HOME/.bash_history is a file!”
fi
fi
else
echo “Sorry, the object does not exist”
fi
^d
```

cat ifnested.sh 
```bash
\#!/bin/bash
if [ -e $HOME ]
then
echo “$HOME The object exists, is it a file?”
if [ -f $HOME ]
then
echo “Yes,$HOME it is a file!”
else
echo “No,$HOME it is not a file!”
if [ -f $HOME/.bash_history ]
then
echo “But $HOME/.bash_history is a file!”
fi
fi
else
echo “Sorry, the object does not exist”
fi
```

$ chmod 755 ifnested.sh
 
$ ./ifnested.sh 
##OUTPUT

# looking for a possible value using elif
cat elifcheck.sh 
```bash
\#!/bin/bash
if [ $USER = Ram ]
then
echo "Welcome $USER"
echo "Please enjoy your visit"
elif [ $USER = Rahim ]
then
echo "Welcome $USER"
echo "Please enjoy your visit"
elif [ $USER = Robert ]
then
echo "Special testing account"
elif [ $USER = gganesh ]
then
echo "$USER, Do not forget to logout when you're done"
else
echo "Sorry, you are not allowed here"
fi
```

$ chmod 755 elifcheck.sh
 
$ ./elifcheck.sh 
## OUTPUT
![image](images/p3.png)

# testing compound comparisons
cat> ifcompound.sh 
```bash
\#!/bin/bash
if [ -d $HOME ] && [ -w $HOME ]
then
echo "The file exists and you can write to it"
else
echo "I cannot write to the file"
fi
```
$ chmod 755 ifcompound.sh
$ ./ifcompound.sh 
## OUTPUT
![image](images/p4.png)
# using the case command
cat >casecheck.sh 
```bash
case $USER in
Ram | Robert)
echo "Welcome, $USER"
echo "Please enjoy your visit";;
Rahim)
echo "Special testing account";;
gganesh)
echo "$USER, Do not forget to log off when you're done";;
*)
echo "Sorry, you are not allowed here";;
esac
```
$ chmod 755 casecheck.sh 
 
$ ./casecheck.sh 
 ![image](images/p5.png)
cat > whiletest
```bash
#!/bin/bash
#while command test
var1=10
while [ $var1 -gt 0 ]
do
echo $var1
var1=$[ $var1 - 1 ]
done
```
$ chmod 755 whiletest.sh
 
$ ./whiletest.sh
![image](images/p6.png) 
 
cat untiltest.sh 
```bash
\#using the until command
var1=100
until [ $var1 -eq 0 ]
do
echo $var1
var1=$[ $var1 - 25 ]
done
``` 
$ chmod 755 untiltest.sh
 
 ![image](images/p7.png)
 
cat forin1.sh 
```bash
\#!/bin/bash
\#basic for command
for test in Alabama Alaska Arizona Arkansas California Colorado
do
echo The next state is $test
done
 ```
 
$ chmod 755 forin1.sh
 ![image](images/p8.png)
 
cat forin2.sh 
```bash
\#!/bin/bash
\# another example of how not to use the for command
for test in I don't know if this'll work
do
echo “word:$test”
done
 ```
 
$ chmod 755 forin2.sh
 
cat forin2.sh 
```bash
\#!/bin/bash
\# another example of how not to use the for command
for test in I don't know if this'll work
do
echo “word:$test”
done
```
$ chmod 755 forin2.sh
 
$ ./forin2.sh 
 ```
 ##output:
 ![image](images/p9.png)
cat forin3.sh 
```bash
\#!/bin/bash
\# another example of how not to use the for command
for test in I don\'t know if "this'll" work
do
echo "word:$test"
done
```
$ ./forin3.sh
```

### output
 ![image](images/p0.png)
cat forin1.sh 
```bash
#!/bin/bash
# basic for command
for test in Alabama Alaska Arizona Arkansas California Colorado
do
echo The next state is $test
done
```
$ chmod 755 forin1.sh

## OUTPUT
cat forinfile.sh 
```bash
#!/bin/bash
# reading values from a file
file="cities"
for state in `cat $file`
do
echo "Visit beautiful $file“
done
```
$ chmod 777 forinfile.sh
$ cat cities
Hyderabad
Alampur
Basara
Warangal
Adilabad
Bhadrachalam
Khammam

## OUTPUT
![image](images/pp.png)

cat forctype.sh 
```bash
#!/bin/bash
# testing the C-style for loop
for (( i=1; i <= 5; i++ ))
do
echo "The value of i is $i"
done
````
$ chmod 755 forctype.sh
$ ./forctype.sh 

cat forctype1.sh 
```bash
#!/bin/bash
# multiple variables
for (( a=1, b=5; a <= 5; a++, b-- ))
do
echo "$a - $b"
done
```
$ chmod 755 forctype.sh
$ ./forctype1.sh 
## OUTPUT
![image](images/dd.png)
cat fornested1.sh 
```bash
#!/bin/bash
# nesting for loops
for (( a = 1; a <= 3; a++ ))
do
echo "Starting loop $a:"
for (( b = 1; b <= 3; b++ ))
do
echo " Inside loop: $b"
done
done
```
$ chmod 755 fornested1.sh
 
$ ./fornested1.sh 
## OUTPUT
![image](images/nn.png)
 
cat forbreak.sh 
```bash
#!/bin/bash
# breaking out of a for loop
for var1 in 1 2 3 4 5
do
if [ $var1 -eq 3 ]
then
break
fi
echo "Iteration number: $var1"
done
echo "The for loop is completed“
```
## OUTPUT
![cd](images/bb.png)
$ chmod 755 forbreak.sh
 
$ ./forbreak.sh 
 
cat forbreak.sh 
```bash
#!/bin/bash
# breaking out of a for loop
for var1 in 1 2 3 4 5
do
if [ $var1 -eq 3 ]
then
continue
fi
echo "Iteration number: $var1"
done
echo "The for loop is completed“
```

 
$ chmod 755 forcontinue.sh
 
$ ./forcontinue.sh 
## OUTPUT
 
cat exread.sh 
```bash
#!/bin/bash
# testing the read command
echo -n "Enter your name: "
read name
echo "Hello $name, welcome to my program. "
 ```
 
$ chmod 755 exread.sh 
``` 
$ ./exread.sh 
## OUTPUT
![image](images/xx.png)

 cat exread1.sh
```bash
#!/bin/bash
# testing the read command
read -p "Enter your name: " name
echo "Hello $name, welcome to my program. “
``` 
$ chmod 755 exread1.sh 
```
## OUT![image](images/mmm.png)PUT



$ ./exread1.sh 
 
cat funcex.sh
```bash
#!/bin/bash
# trying to access script parameters inside a function
function func {
echo $[ $1 * $2 ]
}
if [ $# -eq 2 ]
then
value=`func $1 $2`
echo "The result is $value"
else
echo "Usage: badtest1 a b"
fi
```
## OUTPUT
<img width="572" height="106" alt="image" src="https://github.com/user-attachments/assets/5678c939-65eb-4fda-a7e5-99228c60ee87" />

 ./funcex.sh 

 
 ./funcex.sh 1 2

 
cat argshift.sh
```bash
#!/bin/bash 
 while (( "$#" )); do 
  echo $1 
  shift 
done
```
$ chmod 777 argshift.sh

## OUTPUT
<img width="640" height="162" alt="image" src="https://github.com/user-attachments/assets/cfdf096a-f115-4c71-bfc2-c05c89f00f43" />

$ ./argshift.sh 1 2 3
 
 cat argshift1.sh
```bash
 #/bin/bash 
 # store arguments in a special array 
args=("$@") 
# get number of elements 
ELEMENTS=${#args[@]} 
 # echo each element in array  
# for loop 
for (( i=0;i<$ELEMENTS;i++)); do 
    echo ${args[${i}]} 
done
```
$ chmod 777 argshift.sh
## OUTPUT
<img width="712" height="167" alt="image" src="https://github.com/user-attachments/assets/6f777bfb-2e0b-4ab1-9c71-6db0e95994d7" />

$ ./argshift.sh 1 2 3
 
cat argshift.sh
```bash
#!/bin/bash 
set -x 
while (( "$#" )); do 
  echo $1 
  shift 
done
set +x
```
## OUTPUT
<img width="487" height="753" alt="image" src="https://github.com/user-attachments/assets/fbad4779-b944-4408-b081-f9eb58640f8b" />

 ./argshift.sh 1 2 3
 
 
cat > nc.awk
```bash
BEGIN{}
{
print len=length($0),"\t",$0 
wordcount+=NF
chrcnt+=len
}
END {
print "total characters",chrcnt 
print "Number of Lines are",NR
print "No of Words count:",wordcount
}
 ```
cat>data.dat
```bash
bcdfghj
abcdfghj
bcdfghj
ebcdfghj
bcdfghj
ibcdfghj
bcdfghj
obcdfghj
bcdfghj
ubcdfghj
```
## OUTPUT 
<img width="862" height="383" alt="image" src="https://github.com/user-attachments/assets/526e1c8b-378a-46dc-8d7f-e66032a50f33" />

awk -f nc.awk data.dat

cat > palindrome.sh
```bash
#num=545
echo "Enter the number"
read num
s=0
rev=""
temp=$num
while [ $num -gt 0 ]
do
	# Get Remainder
	s=$(( $num % 10 ))
	# Get next digit
	num=$(( $num / 10 ))
	# Store previous number and
	# current digit in reverse
	rev=$( echo ${rev}${s} )
done
if [ $temp -eq $rev ];
then
	echo "Number is palindrome"
else
	echo "Number is NOT palindrome"
fi
```
## OUTPUT 
<img width="786" height="158" alt="image" src="https://github.com/user-attachments/assets/033eb038-8bf2-464e-a482-d73cba0c3768" />


# RESULT:
The Commands are executed successfully.
