
echo "enter a number X: "
read x
echo "enter a number Y: "
read y
if [ $x -eq $y ]
then
    echo "X is equal to Y"
elif [ $x > $y ]
then
    echo "X is greater than Y"
elif [ $x < $y ]
then
    echo "X is less than Y"
fi

