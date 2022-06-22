#  Execute this shell script only run:
# source set_proxy_http.sh
proxy_url="http://192.168.2.2:9995/"
export http_proxy="$proxy_url"
export HTTP_PROXY="$proxy_url"
export https_proxy="$proxy_url"
export HTTPS_PROXY="$proxy_url"
export all_proxy="$proxy_url"
export rsync_proxy="$proxy_url"

export CURL_NIX_FLAGS="-x $proxy_url"
env | grep http
