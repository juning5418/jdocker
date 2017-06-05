# curl -XPOST --user elastic:adminvalue http://121.41.12.245:9200/index/fulltext/_search  -d'
# {
#     "query" : { "term" : { "content" : "中国" }},
#     "highlight" : {
#         "pre_tags" : ["<tag1>", "<tag2>"],
#         "post_tags" : ["</tag1>", "</tag2>"],
#         "fields" : {
#             "content" : {}
#         }
#     }
# }
# '



curl -XPOST --user elastic:adminvalue http://121.41.12.245:9200/iktest/article/_search?pretty  -d'
{
    "query" : { "match" : { "subject" : "希拉里和韩国" }},
    "highlight" : {
        "pre_tags" : ["<font color='red'>"],
        "post_tags" : ["</font>"],
        "fields" : {
            "subject" : {}
        }
    }
}
'
