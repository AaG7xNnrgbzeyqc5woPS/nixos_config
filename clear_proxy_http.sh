#  Execute this shell script only run:
# source set_proxy_http.sh
unset http_proxy
unset HTTP_PROXY
unset https_proxy
unset HTTPS_PROXY
unset CURL_NIX_FLAGS
unset ftp_proxy
unset all_proxy
unset rsync_proxy
env | grep http
