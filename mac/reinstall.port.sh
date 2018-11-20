cat port.installed |sed 's|@.*||g' | sed 's|  ||g'| while read line ; do port install $line;done
