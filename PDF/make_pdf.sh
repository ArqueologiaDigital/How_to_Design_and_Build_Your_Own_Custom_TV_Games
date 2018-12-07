echo "Generating lowres pages:"
for ch in ../originais/ch*
do
for f in $ch/*.tiff
do
    echo "Converting $f ..."
    convert $f -resize 800 $f.lowres.jpg
done

echo "And now generating the lowres PDF..."
chapter=`basename $ch`
convert $ch/*.lowres.jpg How_to_Design_and_Build_Your_Own_Custom_TV_Games_$chapter.pdf
rm $ch/*.lowres.jpg -f
done

echo "done."
