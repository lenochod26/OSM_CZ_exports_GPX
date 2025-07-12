echo "Transform xml to gpx"
gpsbabel -i osm -f postbox_fixme.xml -o gpx -F postbox_fixme.gpx
sed -i '/.*time.*/d' *.gpx
