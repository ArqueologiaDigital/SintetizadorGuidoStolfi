echo "Generating lowres pages:"
for f in ../originais/*.tiff
do
    echo "Converting $f ..."
    convert $f $f.jpg
done

echo "And now generating the lowres PDF..."
convert ../originais/*.jpg 1974_12_26__Relatório_No.1_JJN_e_Eloah.pdf
rm ../originais/pagina_*.jpg -f

echo "done."
