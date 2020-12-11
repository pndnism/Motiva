FROM mysql:8.0.22
RUN touch touch /var/log/mysql/mysqld.log # 指定の場所にログを記録するファイルを作る