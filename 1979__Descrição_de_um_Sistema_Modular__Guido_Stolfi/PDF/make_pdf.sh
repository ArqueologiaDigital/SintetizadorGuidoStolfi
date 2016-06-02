echo "Generating lowres pages:"
for f in ../original_pages/*.png
do
    echo "Converting $f ..."
    convert $f -resize 2000 $f.lowres.jpg
    convert $f $f.hires.jpg
done

echo "And now generating the lowres PDF..."
convert ../original_pages/pagina_*.lowres.jpg Descrição_de_um_Sistema_Modular_de_Sintese_de_Sons_Com_Controle_Automático_Por_Computador__Guido_Stolfi__1979.lowres.pdf
rm ../original_pages/*.lowres.jpg -f

echo "And the hires PDF..."
convert ../original_pages/pagina_*.hires.jpg Descrição_de_um_Sistema_Modular_de_Sintese_de_Sons_Com_Controle_Automático_Por_Computador__Guido_Stolfi__1979.pdf
rm ../original_pages/pagina_*.hires.jpg -f

echo "done."
