# shell_gei/part_039 - [master●] > cat index.html | tr '<' '\n<' | grep -m 1 'meta' | nkf --numchar-input
# meta content="世界中のあらゆる情報を検索するためのツールを提供しています。さまざまな検索機能を活用して、お探しの情報を見つけてください。" name="description">
#
cat index.html | tr '<' '\n\<' | grep -m 1 'meta' | nkf --numchar-input
