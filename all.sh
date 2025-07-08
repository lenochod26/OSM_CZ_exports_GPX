#!/bin/bash

echo "Post boxes with fixme key"
#[out:xml][timeout:25];
#{{geocodeArea:Czechia}}->.searchArea;
#(
#  node ["amenity"=post_box][fixme](area.searchArea);
#);
#out;
wget -O postbox_fixme.xml 'https://overpass-api.de/api/interpreter?data=%5Bout%3Axml%5D%5Btimeout%3A25%5D%3B%0A%0Aarea%28id%3A3600051684%29-%3E.searchArea%3B%0A%28%0A%20%20node%20%5B%22amenity%22%3Dpost_box%5D%5Bfixme%5D%28area.searchArea%29%3B%0A%29%3B%0Aout%3B'

#sleep 300

gpsbabel -i osm -f postbox_fixme.xml -o gpx -F postbox_fixme.gpx
