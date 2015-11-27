#!/bin/bash

echo "Lancement du tri dans le dossier utilisateur"

for file in $HOME/testTri/*; do
	if test -f "$file" ; then
		if test ${file##*.} = 'png' || test ${file##*.} = 'jpg';then
			echo "La copie de $file a etait mis dans $HOME/testTri/images/"
			`mv  ${file##*} $HOME/testTri/images/`
		else
			echo "La copie de $file n'est pas possible car ne correspond aucun dossier"
		fi
	fi
done
