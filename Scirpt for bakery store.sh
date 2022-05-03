#!/bin/bash
clear
echo "Kelompok 7"
echo "ivan harry cahyadi"
echo  "kayla nadira"
loop='y'
total=0
date=$(date)

menu[0]="0.Banana Bread"
menu[1]="1.Bagel"
menu[2]="2.Chocolate Cake"
menu[3]="3.Cheesecake"
menu[4]="4.Cookies"

price=( 25000 5000 50000 25000 10000 )

while [ $loop == 'y' ] || [ $loop == 'y' ]; #while do
do
	
	tput cup 6 10 
	echo  "===== WELCOME TO THE BAKERY SHOP =====";
	tput cup 7 10 
	echo  "===== ========================== =====";
	tput cup 8 10 
	echo  "==== Where we serve fresh all day! ===";
	tput cup 9 10 
	echo  "";
	tput cup 10 10 
	echo  "vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv";
	tput cup 11 10 
	echo  "vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv";
	tput cup 12 10 
	echo  "   	OUR MENUS LIST";
	tput cup 13 10 
	echo "${menu[0]} 	Rp 25.000";
	tput cup 14 10 
	echo  "${menu[1]}	 	Rp  5.000";
	tput cup 15 10 
	echo "${menu[2]}	Rp 50.000";
	tput cup 16 10 
	echo "${menu[3]}		Rp 25.000";
	tput cup 17 10 
	echo "${menu[4]}		Rp 10.000";
	tput cup 18 10 
	echo "5.exit";
	echo " ";
	echo "vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv";
	echo "== 10% disc for purchase >20k and 40% disc for purchase >45k =";
	echo "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^";
	echo "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^";
	read -p "Choose your order [0-4] or choose exit [5] : " ord;
	echo "===========================================";
		
		case $ord in
			0)
			clear;
			echo "How much Banana Bread do you want?"
			read jml0
			total0=$((${price[0]}*jml0))
			;;

			1)
			clear;
			echo "How much Bagel do you want?"
			read jml1
			total1=$((${price[1]}*jml1))
			;;

			2)
			clear;
			echo "How much Chocolate Cake do you want?"
			read jml2
			total2=$((${price[2]}*jml2))
			;;

			3)
			clear;
			echo "How much Cheesecake do you want?"
			read jml3
			total3=$((${price[3]}*jml3))
			;;

			4)
			clear;
			echo "How much Cookies do you want?"
			read jml4
			total4=$((${price[4]}*jml4))
			;;
		5)
		clear;
     	        echo ""
                echo ""
                echo ""
                echo "                  exiting."
                sleep 0.2
                clear
                echo ""
                echo ""
                echo ""
                echo "                  exiting.."
                sleep 0.5
                clear
                echo ""
                echo ""
                echo ""
                echo "                  exiting..."
                sleep 0.15
                clear
                echo ""
                echo ""
                echo ""
                echo "                  exiting...."
                sleep 0.25
                clear
                exit ;;
*)
echo "Sorry the menu is unavailable, press enter to try again!"
read loop; 

esac

echo -n "Would you like to order again? (y/t) :";
read loop;
done
 clear
    echo ""
read -p "Name : " name
    clear
echo "Enter Payment Method: "
    echo ""

    select pay_method in "Cash" "ATM" "ShopeePay" "Dana"; do
        case $pay_method in
            "Cash" )
                echo ""
                echo "Method: ${bold}${aqua}Cash${normal}"
                echo ""
                method="Cash"
                break ;;           
            "ATM" )
                echo ""
                echo "Method: ${bold}${aqua}ATM Transfer${normal}"
                echo ""
                method="ATM Transfer"
                break ;;
            "ShopeePay" )
                echo ""     
                echo "Method: ${bold}${aqua}ShopeePay${normal}"
                echo ""
                method="ShopeePay"
                break ;;
            "Dana" )
                echo ""
                echo "Method: ${bold}${aqua}Dana${normal}"
                echo ""
                method="Dana"
                break ;;
esac
    done

let total=total0+total1+total2+total3+total4;

	if [ $total -gt 45000 ]
		then
		promo="40%"
		disc=$((($total*40)/100));

	elif [ $total -gt 20000 ]
		then
		promo="10%"
		disc=$((($total*10)/100));

	else
	promo="0%"
	let disc=$total*0;

fi

let payment=$total-$disc;
clear
echo ""
echo "                Thank You For Choosing our Bakery Shop!"
sleep 1
echo ""
echo "                    Processing Payment Receipt...."
sleep 2
clear;
echo "		===== ========================== =====";
echo "			PAYMENT RECEIPT   	";
echo "		==== =========================== ===";
echo "		Menu				Total		Price"
echo " "
echo "		${menu[0]}			$jml0		$total0"
echo "		${menu[1]}				$jml1		$total1"
echo "		${menu[2]}		$jml2		$total2"
echo "		${menu[3]}			$jml3		$total3"
echo "		${menu[4]}			$jml4		$total4"
echo " "
echo "		Name		: $name";
echo "		Payment Method	: $method"; 
echo "		Total Price 	: Rp.$total";
echo "		Promo Discount 	: $promo";
echo "		Total Payment 	: Rp.$payment";
echo "		Payment Date	: $date $time";
echo "		Queue Number	: $RANDOM";
echo " "

echo "See you next shopping!";
read loop

