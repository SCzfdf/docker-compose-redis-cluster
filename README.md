# docker-compose-redis-cluster
docker-compose 一(两)健搭建集群

## [redis-cluster-bridge](redis-cluster-bridge)
1. 修改env
2. 执行初始化脚本
    ```shell
    sh init.sh
    ```
3. 启动容器
    ```shell
    docker compose up -d    
    ```
这个方式启动会生成一个redis-cluster的无用容器. 用完删除即可