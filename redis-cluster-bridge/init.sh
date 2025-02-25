# 从.env文件加载环境变量
if [ -f .env ]; then
  export $(cat .env | grep -v '^#' | xargs)
fi

for port in `seq 7001 7006`; do \
  mkdir -p ${port}/conf \
  && PORT=${port} PASSWORD="${PASSWORD}" envsubst < redis-cluster.tmpl > ${port}/conf/redis.conf \
  && mkdir -p ${port}/data;\
done

