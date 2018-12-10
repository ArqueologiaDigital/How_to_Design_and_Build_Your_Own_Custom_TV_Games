width=600
echo "Generating lowres pages:"
for ch in ../originais/*
do
for f in $ch/*.tiff
do
    echo "Converting $f ..."
    convert $f -resize $width $f.lowres.jpg
done

echo "Generating $ch.pdf ..."
convert $ch/*.lowres.jpg $ch.pdf
mv $ch.pdf .
rm $ch/*.lowres.jpg -f
done

echo "Generating the final PDF ..."
pdfunite ch*.pdf How_to_Design_and_Build_Your_Own_Custom_TV_Games.pdf
echo "done."
