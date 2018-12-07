echo "Generating lowres pages:"
for f in ../originais/*.tiff
do
    echo "Converting $f ..."
    convert $f -resize 800 $f.lowres.jpg
done

echo "And now generating the lowres PDF..."
convert ../originais/*.lowres.jpg How_to_Design_and_Build_Your_Own_Custom_TV_Games.pdf
rm ../originais/*.lowres.jpg -f

echo "done."
