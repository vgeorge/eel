var nodes = Osmium.Output.CSV.open('data/osm/nodes.csv');
var nodes_tags = Osmium.Output.CSV.open('data/osm/nodes_tags.csv');


Osmium.Callbacks.node = function() {
  tags_txt = ''
  
  // check if object has any 'addr' tag 
  for (var key in this.tags) {
    if (/addr/.test(key)) {
      
      // save nodes
      nodes.print(this.id, this.geom.toWKT());
            
      // save tags
      for (var key in this.tags) {
        nodes_tags.print(this.id, key, this.tags[key].replace(/\"/g, "'"));
      }
      

      break;
    }
  }
}

Osmium.Callbacks.end = function() {
    out.close();
}