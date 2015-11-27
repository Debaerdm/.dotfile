#!/bin/bash

a="$HOME/creation/"

if ! [[ -d $a$1 ]]; then
	`mkdir $a$1 && cd testdir`
else
	`cd testdir`
fi

function testdir (){
	cddir="$HOME/creation/"
	
	cd $cddir

}

