CREATE EXTERNAL TABLE IF NOT EXISTS `openlingua_assets_prod`.`openlingua_assets_prod2` ( `asset_name` string, `asset_category` string, `english_word` string, `german_word` string, `italian_word` string, `image_filename` string, `file_type` string, `image_width` string, `image_height` string, `source` string, `download_url` string, `download_date` string, `license` string, `license_version_date` string, `license_pdf_url` string, `attribution_text` string, `attribution_html` string, `english_audio_filename` string, `german_audio_filename` string, `italian_audio_filename` string
)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.OpenCSVSerde' 
WITH SERDEPROPERTIES ( 
  'escapeChar'='\\', 
  'quoteChar'='\"', 
  'separatorChar'=',') 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION 's3://openlingua-assets/prod/data/'
TBLPROPERTIES (
  'classification' = 'csv',
  'skip.header.line.count' = '1'
);

