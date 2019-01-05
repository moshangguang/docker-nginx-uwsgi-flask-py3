# 使用基础镜像库
FROM moshangguang/nginx_uwsgi_py3:alpine3.8

# 创建工作路径
RUN mkdir /app
WORKDIR /app
COPY nginx.conf /etc/nginx/nginx.conf
COPY ./app/ /app/

# 安装所需的库
RUN pip install -r /app/requirements.txt -i  https://pypi.tuna.tsinghua.edu.cn/simple some-package --no-cache-dir

ENTRYPOINT nginx -g "daemon on;" && uwsgi --ini /app/uwsgi.ini

