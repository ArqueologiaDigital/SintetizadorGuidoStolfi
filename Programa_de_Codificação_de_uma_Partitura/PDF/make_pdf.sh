echo "Generating lowres pages:"
for f in ../originais/*.jpg
do
    echo "Converting $f ..."
    convert $f -rotate 90 $f.rotacionado.jpg
done

echo "And now generating the lowres PDF..."
convert ../originais/*.rotacionado.jpg Programa_de_Codificação_de_uma_Partitura.pdf
rm ../originais/pagina_*.rotacionado.jpg -f

echo "done."
