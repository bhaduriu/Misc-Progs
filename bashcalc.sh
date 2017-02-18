i="y"
while [ $i = "y" ]
do
echo "1.Addition"
echo "2.Subtraction"
echo "3.Multiplication"
echo "4.Division"
echo "5. Sin()"
echo "6. Cos()"
echo "7. Square root"
echo "8. ln"
echo "9. log"
echo "Enter your choice"
read ch
case $ch in
    1)  echo "Enter first number: "
	read a
	echo "Enter second number: "
	read b
	s=$(echo $a + $b | bc -l)
        echo "Sum = $s";;
    2)	echo "Enter first number: "
	read a
	echo "Enter second number: "
	read b
	s=$(echo $a - $b | bc -l)
        echo "Difference = $s";;
    3)  echo "Enter first number: "
	read a
	echo "Enter second number: "
	read b
	s=$(echo $a \* $b | bc -l)
        echo "Prodct = $s";;
    4)  echo "Enter first number: "
	read a
	echo "Enter second number: "
	read b
	s=$(echo $a / $b | bc -l)
        echo "Quotient = $s";;
    5)  echo "Enter number: "
	read a
	s=$(echo "s($a*0.017453293)" | bc -l)
        echo "Sine = $s";;
    6)  echo "Enter number: "
	read a
	s=$(echo "c($a*0.017453293)" | bc -l)
        echo "Cosine = $s";;
    7)  echo "Enter number: "
	read a
	s=$(echo "sqrt($a)" | bc -l)
        echo "Square root = $s";;
    8)  echo "Enter number: "
	read a
	s=$(echo "l($a)" | bc -l)
        echo "ln = $s";;
    9)  echo "Enter number: "
	read a
	s=$(echo "l($a)" / "l(10)" | bc -l)
        echo "log = $s";;
    *)	echo "Invalid choice";;
esac
echo "Continue? - y=yes n=no. "
read i
if [ $i != "y" ]
then
    exit
fi
done     
