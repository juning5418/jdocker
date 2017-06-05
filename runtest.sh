
curl -XPUT --user elastic:adminvalue http://121.41.12.245:9200/index;


curl -XPOST --user elastic:adminvalue http://121.41.12.245:9200/index/fulltext/_mapping -d'
{
    "fulltext": {
             "_all": {
            "indexAnalyzer": "ik",
            "searchAnalyzer": "ik",
            "term_vector": "no",
            "store": "false"
        },
        "properties": {
            "content": {
                "type": "string",
                "store": "no",
                "term_vector": "with_positions_offsets",
                "indexAnalyzer": "ik",
                "searchAnalyzer": "ik",
                "include_in_all": "true",
                "boost": 8
            }
        }
    }
}'
