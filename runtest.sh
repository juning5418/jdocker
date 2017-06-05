

# curl -XPOST --user elastic:adminvalue http://121.41.12.245:9200/index/fulltext/_mapping -d'
# {
#     "fulltext": {
#              "_all": {
#             "indexAnalyzer": "ik",
#             "searchAnalyzer": "ik",
#             "term_vector": "no",
#             "store": "false"
#         },
#         "properties": {
#             "content": {
#                 "type": "string",
#                 "store": "no",
#                 "term_vector": "with_positions_offsets",
#                 "indexAnalyzer": "ik",
#                 "searchAnalyzer": "ik",
#                 "include_in_all": "true",
#                 "boost": 8
#             }
#         }
#     }
# }'


curl -XPOST --user elastic:adminvalue  http://121.41.12.245:9200/iktest/article/_bulk?pretty -d '
{ "index" : { "_id" : "1" } }
{"subject" : "＂闺蜜＂崔顺实被韩检方传唤 韩总统府促彻查真相" }
{ "index" : { "_id" : "2" } }
{"subject" : "韩举行＂护国训练＂ 青瓦台:决不许国家安全出问题" }
{ "index" : { "_id" : "3" } }
{"subject" : "媒体称FBI已经取得搜查令 检视希拉里电邮" }
{ "index" : { "_id" : "4" } }
{"subject" : "村上春树获安徒生奖 演讲中谈及欧洲排外问题" }
{ "index" : { "_id" : "5" } }
{"subject" : "希拉里团队炮轰FBI 参院民主党领袖批其“违法”" }'