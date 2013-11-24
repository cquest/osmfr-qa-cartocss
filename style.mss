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
}

#routes [zoom>=10] {
  [zoom<=11][routes=0] {
    marker-fill: magenta;
    marker-line-width: 0;
    marker-height: 12;
    marker-allow-overlap: true;
    marker-clip: false;
  }
  
  [zoom>=12] {
    opacity: 0.7;
    [routes=0] {
      // polygon-pattern-file: url('hachure-magenta.png');
      polygon-fill: magenta;
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