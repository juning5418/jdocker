curl -XPOST http://192.168.1.101:9200/index/fulltext/_search  -d'
{
    "query" : { "term" : { "content" : "中国" }},
    "highlight" : {
        "pre_tags" : ["<tag1>", "<tag2>"],
        "post_tags" : ["</tag1>", "</tag2>"],
        "fields" : {
            "content" : {}
        }
    }
}
'
