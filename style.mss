Map {
  buffer-size: 64;
}


#buildings_lz [zoom<=11]{
    opacity: 0.5;
	marker-fill: cyan;
  	marker-opacity: 0.5;
    marker-height: 2;
    [zoom>=7] { marker-height: 4; }
    [zoom>=9] { marker-height: 8; }
    marker-allow-overlap: true;
  	marker-ignore-placement: true;
	marker-line-width: 0;
}


#bati [zoom>=12] {
  opacity: 0.7;
  polygon-fill: #aaa;
  [ind_c<10] { polygon-opacity: 0.5; }
  
  [buildings=0] {
    polygon-fill: #0cf;
  }
  [zoom>=16] {
    line-width: 0.2; 
	[ind_c>=10] { a/text-face-name: "DejaVu Sans Mono Bold"; }
    a/text-face-name: "DejaVu Sans ExtraLight";
    a/text-name: [ind_c]+" hab.";
    a/text-allow-overlap: true;
    a/text-orientation: 6;
  }
}

#routes {
  [zoom<=11] {
    marker-fill: magenta;
    marker-line-width: 0;
    marker-height: 2;
    [zoom>=7] { marker-height: 4; }
    [zoom>=9] { marker-height: 8; }
    marker-allow-overlap: true;
    marker-clip: false;
    [ind_c<10] { marker-opacity: 0.5; } // moins de 10 habitants sur le carré
  }
  
  [zoom>=12] {
    opacity: 0.7;
      // polygon-pattern-file: url('hachure-magenta.png');
      polygon-fill: magenta;
	  [ind_c<10] { polygon-opacity: 0.5; } // moins de 10 habitants sur le carré
  }
  [zoom>=16] {
    opacity: 0.7;
    line-width: 0.2;
	[ind_c>=10] { a/text-face-name: "DejaVu Sans Mono Bold"; }
	a/text-face-name: "DejaVu Sans ExtraLight";
    a/text-name: [ind_c]+" hab.";
    a/text-allow-overlap: true;
    a/text-orientation: 6;
  }
}

#bati_lz [zoom>=9] {
  [nb<10] {
    marker-transform: translate(0,-8); // décale
    marker-clip: false;
    marker-fill: #0cf;
    marker-height: 12;
    marker-allow-overlap: true;
    marker-line-color: grey;
    [format='VECT'] { marker-line-color: #0b0; marker-line-width: 4;}
    marker-line-width: 2;
    marker-ignore-placement: true;
  }
}

#fantoir_lz [zoom>=11][zoom<=13]
    {
    	marker-transform: translate(0,8); // décale
    	marker-clip: false;
    	marker-file: url('star-black.svg');
    	[ratio>=50] { marker-file: url('star-red.svg'); }
    	[ratio>=75] { marker-file: url('star-orange.svg'); }
    	[ratio>=95] { marker-file: url('star-green.svg'); }
     	[ratio>100] { marker-file: url('star-blue.svg'); }
	   	marker-height: 16;
    	marker-allow-overlap: true;
    	marker-ignore-placement: true;
    }

#fantoir [zoom>=14]
    {
    	text-clip: false;
        text-face-name: "DejaVu Sans Mono Bold";
    	text-name: [name]+"\n("+[insee]+") "+[format]+"\n"+[nb_osm]+"/"+[nb_fantoir]+" = "+[ratio]+"% noms voies";
    	text-allow-overlap: true;
    	text-size: 12;
    	text-halo-radius: 1;
    	text-dy:8;
    	text-fill: black;
  		a/line-clip: false;
  		a/line-color: black;
  		a/line-width: 2;
  		a/line-opacity: 0.66;
  		a/line-offset: -1;
  		b/line-clip: false;
  		b/line-color: black;
  		b/line-width: 6;
  		b/line-opacity: 0.35;
  		b/line-offset: -3;
     	[ratio>=50] { text-fill: red; a/line-color: red; b/line-color: red;}
     	[ratio>=75] { text-fill: orange; a/line-color: orange; b/line-color: orange;}
    	[ratio>=95] { text-fill: green; a/line-color: green; b/line-color: green;}
	 	[ratio>100] { text-fill: blue; a/line-color: blue; b/line-color: blue;}
  		
 	}

#noname [zoom>=14] {
  line-width:2;
  line-color:red;
  line-dasharray: 4,4;
}
