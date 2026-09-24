#!/bin/bash

home=~/mag_Linux/homework
echo -e 'Your adress is' $home
echo -e '\n'
echo -e 'Welcome home!\n'
mkdir -p  house/{floor1,floor2}
cd h*e
mkdir -p floor1/{kitchen,bathroom}
mkdir -p floor2/{library,bedroom,wardrobe}
echo -e 'Look at your rooms\n'
tree 
cd f*1/k*
mkdir {fridge,table,chairs}
echo -e '\nCome into the kitchen. What do you see?\n'
ls -h
cd fridge
echo -e '\nOpen the fridge. What do you see?'
touch food_list.txt
echo -e 'meat sausages fish\nmilk\nbread cheese' > food_list.txt
cat food_list.txt
echo -e '\nAdd yogurt\n'
echo 'yogurt' >> food_list.txt 
cat food_list.txt
echo -e '\nHow many shelves are in your fridge?'
wc -l food_list.txt
echo -e '\nWhich shelves are lower?'
tail -n 2 food_list.txt
echo -e '\nWhich shelves are higher?'
head -n 2 food_list.txt
echo -e '\nWhich shelves are in the middle?'
head -3 food_list.txt | tail -2
echo -e '\nHow many products are in your fridge?'
wc -w food_list.txt
touch eggs_box.txt 
echo -n '1111000000' > eggs_box.txt
echo -e '\nHow many places for eggs do you have?'
wc -c eggs_box.txt
echo -e '\nHow many eggs do you have?'
grep -o '1' eggs_box.txt |& wc -l
echo -e '\n All about eggs'
stat eggs_box.txt
cd $home/house/floor1/bathroom
echo -e '\nGo to bathroom. What do you see?'
mkdir ./{bath,mirrow,soap}
ls
cd b*
echo -e '\nIn your bath\n'
touch water.jpg
rm -r ../soap 
ls ..
echo -e '\nSoap is over. Go to the second floor'
cd $home/h*/f*2
echo -e '\nCome into the bedroom\n'
cd b*
echo -e '\nWhat a mess!\n'
touch clothes.jpg cat.sh boots.csv
ls
echo -e '#!/bin/bash\necho 'meow'\n' > cat.sh
chmod 755 cat.sh
echo -e '\nWhat about cat?\n'
ls -l cat.sh
echo -e '\nWhat is it inside cat?\n'
cat cat.sh
echo -e 'What does the cat say?\n'
./cat.sh
echo -e '\nMove your clothes to wardrobe\n'
mv clothes.jpg $home/house/floor2/wardrobe
echo -e 'The content of wardrobe\n'
ls ../wardrobe
echo -e '\nThe content of bedroom\n'
ls
echo -e 'Throw away your boots\n'
rm boots.csv
find boots.csv
echo -e 'Where is your library?\n'
a=$(find $home -name "lib*")
echo $a
echo -e '\nLook at realpath and basename of library\n'
realpath $a
basename $a
