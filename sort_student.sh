#! /bin/sh

<<COMMENT
 Script that will sort student a file that contains details of 10 students.
 Details include (Student Name, RollNo, Address, TotalMarks). Field of each record can be delimited by space bar.
 Sorting is done as per our choice
COMMENT

echo "The student_details is as follows"
cat student_details
echo "Press 1 to sort the records in the order of student names"
echo "Press 2 to sort the record in the order of Roll No"
echo "Press 3 to sort the record in the order of Address"
echo "Press 4 to sort the record in the order of Total Marks"
echo "Press 5 to search for a particular record based on the key value (rollno) entered by user"
echo "Option 1-4 also displays the first two records and the last two records after each sort"
read -p "Enter your choice (1-5) " i
case $i in
1)echo -n  "Records sorted in the order of names:"
sort  student_details -o outfile 
cat outfile   
echo "The first two records after the sort" 
cut -d' '  -f1 outfile | head -3
echo "The last two records after sort"
cut -d' '  -f1 outfile | tail -2
echo  "The first two lines after the sort"
head -3 outfile
echo ""
echo "The last two lines after sort" 
echo ""
tail -2 outfile
;;
2)echo -n  "Records sorted in the order of rollnos:"
sort -k 2n student_details -o outfile 
cat outfile
echo "The first two records after the sort" 
cut -d' '  -f2 outfile | head -3 
echo "The last two records after sort"
cut -d' '  -f2 outfile | tail -2 
echo  "The first two lines after the sort"
head -3 outfile
echo ""
echo "The last two lines after sort" 
echo ""
tail -2 outfile
;;
3)echo -n  "Records sorted in the order of addresses:"
sort -k 3b student_details -o outfile 
 cat outfile   
echo "The first two records after the sort" 
cut -d' '  -f3 outfile | head -3 
echo "The last two records after sort"
cut -d' '  -f3 outfile | tail -2 
echo  "The first two lines after the sort"
head -3 outfile
echo ""
echo "The last two lines after sort" 
echo ""
tail -2 outfile
;;
4)echo -n  "Records sorted in the order of marks:"
sort -k  4n student_details -o outfile 
 cat outfile   
echo "The first two records after the sort" 
cut -d' '  -f4 outfile | head -3 
echo "The last two records after sort"
cut -d' '  -f4 outfile | tail -2 
echo  "The first two lines after the sort"
head -3 outfile
echo ""
echo "The last two lines after sort" 
echo ""
tail -2 outfile
;;
5)read -p "Enter the key (rollno) to search for" rollno
grep "$rollno " student_details


;;
*)echo "WRONG CHOICE" ;;
 esac

