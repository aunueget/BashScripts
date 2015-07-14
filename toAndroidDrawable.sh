mkdir test
cp *.png test
cd test

mkdir drawable-hdpi
mkdir drawable-ldpi
mkdir drawable-mdpi
mkdir drawable-xhdpi
mkdir drawable-xxhdpi
mv *@0.5x.png drawable-ldpi/
mv *@1.5x.png drawable-hdpi/
mv *@2x.png drawable-xhdpi/
mv *@3x.png drawable-xxhdpi/
mv *.png drawable-mdpi/

cd drawable-hdpi
for f in *; do mv "$f" "`echo $f | sed -r 's/([a-z0-9])([A-Z])/\1_\L\2/g' | sed -r 's/([A-Z])/\L\1/g' | sed -r 's/ //g' | sed -r 's/@.*\.png/\.png/'`"; done
cd ..

cd drawable-ldpi
for f in *; do mv "$f" "`echo $f | sed -r 's/([a-z0-9])([A-Z])/\1_\L\2/g' | sed -r 's/([A-Z])/\L\1/g' | sed -r 's/ //g' | sed -r 's/@.*\.png/\.png/'`"; done
cd ..

cd drawable-xhdpi
for f in *; do mv "$f" "`echo $f | sed -r 's/([a-z0-9])([A-Z])/\1_\L\2/g' | sed -r 's/([A-Z])/\L\1/g' | sed -r 's/ //g' | sed -r 's/@.*\.png/\.png/'`"; done
cd ..

cd drawable-xxhdpi
for f in *; do mv "$f" "`echo $f | sed -r 's/([a-z0-9])([A-Z])/\1_\L\2/g' | sed -r 's/([A-Z])/\L\1/g' | sed -r 's/ //g' | sed -r 's/@.*\.png/\.png/'`"; done
cd ..

cd drawable-mdpi
for f in *; do mv "$f" "`echo $f | sed -r 's/([a-z0-9])([A-Z])/\1_\L\2/g' | sed -r 's/([A-Z])/\L\1/g' | sed -r 's/ //g' | sed -r 's/@.*\.png/\.png/'`"; done
cd ..


