echo "Please Enter Your Arithmetic Operation"

echo "1.a+b*c 2.a*b+c 3.c+a/b 4.a%b+c"


read userInput


read -p "Enter Your a Value Here " a

read -p "Enter Your b Value Here " b

read -p "Enter your c value here " c

output=0
 
function logic() {

declare -A compute

compute[a+b*c]="$output"
cpmpute[a*b+c]="$output"
compute[c+a/b]="$output"
compute[a%b+c]="$output"

echo "dictionary is : ${compute[@]}"

}





function logic() {




          if [ $1 -eq 4 ]

          then

               output=$(($2%$3+$4))
               

          elif [ $1 -eq 3 ]

          then

               output=$(($4+$2/$3))

          elif [ $1 -eq 2 ]

          then

               output=$(($2*$3+$4))

          else

               output=$(($2+$3*$4))


          fi




          echo "Answer : $output"




}







function error() {

         echo "Your Given Input Is Not Matching Our Creteria. Please Check again & should b/w 1-4"

}




if [ $userInput -eq 4 ]

then

    logic $userInput $a $b $c

elif [ $userInput -eq 3 ]

then

    logic $userInput $a $b $c

elif [ $userInput -eq 2 ]

then

    logic $userInput $a $b $c

elif [ $userInput -eq 1 ]

then

    logic $userInput $a $b $c

else 

     error    

fi
