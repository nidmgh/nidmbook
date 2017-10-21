echo "*** Producing HTML ***"
asciidoctor mysample.adoc
echo "*** Producing DOCBOOK ***"
asciidoctor -n -b docbook -d book mysample.adoc -o mysample.xml
echo "*** Producing EPUB ***"
pandoc -f docbook -t epub -N --number-sections --chapters --toc --toc-depth=4 mysample.xml -o mysample.epub
echo "*** Producing PDF ***"
asciidoctor-pdf mysample.adoc

