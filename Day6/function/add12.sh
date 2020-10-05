#! /bin/bash -x

function add(){
	local add=$(( $1 + $2));
	echo $add;
}

function addTwoNumber(){
	local a=$1;
	local b=$2;
	local add=$(( $a + $b ));
	echo $(add $a $b);

}
a=5;
b=6;

result=$( addTwoNumber $a $b )
