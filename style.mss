/*
autopilot 0.0.1
[{"id":"Map","background-color":"#b8dee6"}]
*/
Map {
  buffer-size: 64;
}

#bati [zoom>=12] {
  opacity: 0.7;
  polygon-fill: #aaa;
  [ind_c<10] { polygon-opacity: 0.5; }
  
  [buildings=0] {
    // polygon-pattern-file: url('hachure-0cf.png');
    polygon-fill: #0cf;
/*
  [nbcar>1] { polygon-opacity: 0.3; }
  [zoom>=14][nbcar>1] {
    marker-height: [nbcar]*4;
    marker-fill-opacity: 0;
    marker-clip: false;
    marker-line-color: grey;
    marker-line-width: 2;
    marker-ignore-placement: false;
  }
*/
  }
  [zoom>=16] {
    line-width: 0.2; 
	[ind_c>=10] { a/text-face-name: "DejaVu Sans Mono Bold"; }
    a/text-face-name: "DejaVu Sans ExtraLight";
    a/text-name: [ind_c]+" hab.";
    a/text-allow-overlap: true;
    a/text-orientation: 6;
/*
    a/text-dy: -3;
	b/text-face-name: "DejaVu Sans Mono Oblique";
    b/text-name: [buildings]+" bât.";
    b/text-allow-overlap: true;
    b/text-dy: 3;
*/
  }
}

#routes [zoom>=10] {
  [zoom<=11][routes=0] {
    marker-fill: magenta;
    marker-line-width: 0;
    marker-height: 12;
    marker-allow-overlap: true;
    marker-clip: false;
    [ind_c<10] { marker-opacity: 0.5; }
  }
  
  [zoom>=12] {
    opacity: 0.7;
    [routes=0] {
      // polygon-pattern-file: url('hachure-magenta.png');
      polygon-fill: magenta;
	  [ind_c<10] { polygon-opacity: 0.5; }
/*
      [nbcar>1] { polygon-opacity: 0.3; }
      [zoom>=14][nbcar>1] {
        marker-height: [nbcar]*4;
        marker-fill-opacity: 0;
        marker-clip: false;
        marker-line-color: grey;
        marker-line-width: 2;
        marker-ignore-placement: false;
      }
*/
    }
  }
  [zoom>=16] {
    opacity: 0.7;
    line-width: 0.2;
	[ind_c>=10] { a/text-face-name: "DejaVu Sans Mono Bold"; }
	a/text-face-name: "DejaVu Sans ExtraLight";
    a/text-name: [ind_c]+" hab.";
    a/text-allow-overlap: true;
    a/text-orientation: 6;
/*
    a/text-dy: -3;
	b/text-face-name: "DejaVu Sans Mono Oblique";
    b/text-name: [buildings]+" bât.";
    b/text-allow-overlap: true;
    b/text-dy: 3;
*/
  }
}

#bati_lz [zoom>=10] {
  [nb<5] {
    marker-clip: false;
    marker-fill: #0cf;
    marker-height: 12;
    marker-allow-overlap: true;
    marker-line-color: grey;
    [format='VECT'] { marker-line-color: #0b0; marker-line-width: 4;}
    marker-line-width: 2;
    marker-ignore-placement: false;
  }
}