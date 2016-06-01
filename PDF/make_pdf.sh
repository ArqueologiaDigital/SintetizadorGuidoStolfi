echo "Generating lowres pages:"
for f in ../original_pages/*.png
do
    echo "Converting $f ..."
    convert $f -resize 600x $f.lowres.jpg
done

echo "And now generating the PDF..."
convert ../original_pages/pagina-*.lowres.jpg Descrição_de_um_Sistema_Modular_de_Sintese_de_Sons_Com_Controle_Automático_Por_Computador__Guido_Stolfi__1979.pdf
echo "done."

rm ../original_pages/*.lowres.jpg -f
