:param {
  // Define the file path root and the individual file names required for loading.
  // https://neo4j.com/docs/operations-manual/current/configuration/file-locations/
  file_path_root: 'file:///', // Change this to the folder your script can access the files at.
  file_0: 'genes_nodes.tsv',
  file_1: 'disease_edges.tsv',
  file_2: 'most_expressed_edges.tsv',
  file_3: 'biological_process_edges.tsv'
};

// CONSTRAINT creation
// -------------------
//
// Create node uniqueness constraints, ensuring no duplicates for the given node label and ID property exist in the database. This also ensures no duplicates are introduced in future.
//
// NOTE: The following constraint creation syntax is generated based on the current connected database version 5.20-aura.
CREATE CONSTRAINT `node_Gene_uniq` IF NOT EXISTS
FOR (n: `Gene`)
REQUIRE (n.`node`) IS UNIQUE;

:param {
  idsToSkip: []
};

// NODE load
// ---------
//
// Load nodes in batches, one node label at a time. Nodes will be created using a MERGE statement to ensure a node with the same label and ID property remains unique. Pre-existing nodes found by a MERGE statement will have their other properties set to the latest values encountered in a load file.
//
// NOTE: Any nodes with IDs in the 'idsToSkip' list parameter will not be loaded.
LOAD CSV WITH HEADERS FROM ($file_path_root + $file_0) AS row
WITH row
WHERE NOT row.`node` IN $idsToSkip AND NOT row.`node` IS NULL
CALL {
  WITH row
  MERGE (n: `Gene` { `node`: row.`node` })
  SET n.`node` = row.`node`
} IN TRANSACTIONS OF 10000 ROWS;


// RELATIONSHIP load
// -----------------
//
// Load relationships in batches, one relationship type at a time. Relationships are created using a MERGE statement, meaning only one relationship of a given type will ever be created between a pair of nodes.
LOAD CSV WITH HEADERS FROM ($file_path_root + $file_3) AS row
WITH row 
CALL {
  WITH row
  MATCH (source: `Gene` { `node`: row.`#node1` })
  MATCH (target: `Gene` { `node`: row.`node2` })
  MERGE (source)-[r: `BiologicalProcess`]->(target)
  SET r.`#node1` = row.`#node1`
  SET r.`node2` = row.`node2`
  SET r.`node1_string_id` = row.`node1_string_id`
  SET r.`node2_string_id` = row.`node2_string_id`
  SET r.`neighborhood_on_chromosome` = toFloat(trim(row.`neighborhood_on_chromosome`))
  SET r.`gene_fusion` = toLower(trim(row.`gene_fusion`)) IN ['1','true','yes']
  SET r.`phylogenetic_cooccurrence` = toFloat(trim(row.`phylogenetic_cooccurrence`))
  SET r.`homology` = toFloat(trim(row.`homology`))
  SET r.`coexpression` = toFloat(trim(row.`coexpression`))
  SET r.`experimentally_determined_interaction` = toFloat(trim(row.`experimentally_determined_interaction`))
  SET r.`database_annotated` = toFloat(trim(row.`database_annotated`))
  SET r.`automated_textmining` = toFloat(trim(row.`automated_textmining`))
  SET r.`combined_score` = toFloat(trim(row.`combined_score`))
  SET r.`ref` = row.`ref`
  SET r.`name` = row.`name`
} IN TRANSACTIONS OF 10000 ROWS;

LOAD CSV WITH HEADERS FROM ($file_path_root + $file_1) AS row
WITH row 
CALL {
  WITH row
  MATCH (source: `Gene` { `node`: row.`#node1` })
  MATCH (target: `Gene` { `node`: row.`node2` })
  MERGE (source)-[r: `MultipleSclerosis`]->(target)
  SET r.`#node1` = row.`#node1`
  SET r.`node2` = row.`node2`
  SET r.`node1_string_id` = row.`node1_string_id`
  SET r.`node2_string_id` = row.`node2_string_id`
  SET r.`neighborhood_on_chromosome` = toLower(trim(row.`neighborhood_on_chromosome`)) IN ['1','true','yes']
  SET r.`gene_fusion` = toLower(trim(row.`gene_fusion`)) IN ['1','true','yes']
  SET r.`phylogenetic_cooccurrence` = toFloat(trim(row.`phylogenetic_cooccurrence`))
  SET r.`homology` = toFloat(trim(row.`homology`))
  SET r.`coexpression` = toFloat(trim(row.`coexpression`))
  SET r.`experimentally_determined_interaction` = toFloat(trim(row.`experimentally_determined_interaction`))
  SET r.`database_annotated` = toFloat(trim(row.`database_annotated`))
  SET r.`automated_textmining` = toFloat(trim(row.`automated_textmining`))
  SET r.`combined_score` = toFloat(trim(row.`combined_score`))
  SET r.`ref` = row.`ref`
  SET r.`name` = row.`name`
} IN TRANSACTIONS OF 10000 ROWS;

LOAD CSV WITH HEADERS FROM ($file_path_root + $file_2) AS row
WITH row 
CALL {
  WITH row
  MATCH (source: `Gene` { `node`: row.`#node1` })
  MATCH (target: `Gene` { `node`: row.`node2` })
  MERGE (source)-[r: `Interact`]->(target)
  SET r.`#node1` = row.`#node1`
  SET r.`node2` = row.`node2`
  SET r.`node1_string_id` = row.`node1_string_id`
  SET r.`node2_string_id` = row.`node2_string_id`
  SET r.`neighborhood_on_chromosome` = toLower(trim(row.`neighborhood_on_chromosome`)) IN ['1','true','yes']
  SET r.`gene_fusion` = toFloat(trim(row.`gene_fusion`))
  SET r.`phylogenetic_cooccurrence` = toFloat(trim(row.`phylogenetic_cooccurrence`))
  SET r.`homology` = toFloat(trim(row.`homology`))
  SET r.`coexpression` = toFloat(trim(row.`coexpression`))
  SET r.`experimentally_determined_interaction` = toFloat(trim(row.`experimentally_determined_interaction`))
  SET r.`database_annotated` = toFloat(trim(row.`database_annotated`))
  SET r.`automated_textmining` = toFloat(trim(row.`automated_textmining`))
  SET r.`combined_score` = toFloat(trim(row.`combined_score`))
  SET r.`ref` = row.`ref`
  SET r.`name` = row.`name`
} IN TRANSACTIONS OF 10000 ROWS;
