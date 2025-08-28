void main()
{
  // Map key value pair
  var map_name={
    'key1':'value1',
    'key2':2,
    'key3':3.2,
    'key4':true,
  };
  print(map_name);
  print(map_name['key1']);
  print(map_name['key2']);
  print(map_name['key3']);
  print(map_name['key4']);

  // overwrite any value
  map_name['key1']='value2';
  print(map_name);


  var mapName={};
  // add value in map
  mapName['key1']='value1';
  mapName['key2']='value2';
  mapName['key3']='value3';
  mapName['key4']='value4';
  print(mapName);

  print(mapName.isEmpty); // check map is empty or not
  print(mapName.isNotEmpty); // check map is not empty or not
  print(mapName.length);// check map length
  print(mapName.keys);//
  print(mapName.values);//
  print(mapName.containsKey('key1'));//
  print(mapName.containsValue('value1'));//
  mapName.remove('key1');//
  print(mapName);//







}