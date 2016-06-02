echo "Generating lowres pages:"
for f in ../originais/*.jpg
do
    echo "Converting $f ..."
    convert $f -resize 2000 $f.lowres.jpg
done

echo "And now generating the lowres PDF..."
convert ../originais/*.lowres.jpg Programa_de_Codificação_de_uma_Partitura.pdf
rm ../originais/paginas_*.lowres.jpg -f

echo "done."
