#!/bin/bash
file_path=$1

source .bashrc

# Установка переменных
YC_BUCKET=otus-dataproc-bucket-osipov

# Загрузка данных в бакет
log "Uploading data to bucket..."
s3cmd put $file_path s3://$YC_BUCKET

# Проверка загрузки данных
log "Checking data in bucket..."
s3cmd ls s3://$YC_BUCKET
