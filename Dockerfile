From python:alpine3.23

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

# 设置环境变量（默认值）
ENV MAGIC_NUMBER=production \
    SERVER_PORT=8000 \
    PYTHONUNBUFFERED=1

# 暴露端口
EXPOSE $SERVER_PORT


CMD ["python", "-u", "parser.py"]