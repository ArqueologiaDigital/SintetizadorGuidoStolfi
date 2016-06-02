echo "Generating lowres pages:"
for f in ../originais/*.tiff
do
    echo "Converting $f ..."
    convert $f $f.jpg
done

echo "And now generating the lowres PDF..."
convert ../originais/*.jpg Relatório_n1_JJN_1979.pdf

#rm ../original_pages/pagina_*.jpg -f

echo "done."
