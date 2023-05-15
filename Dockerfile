# 使用 Python 3.x 作為基礎映像檔
FROM python:3.10

# 設定工作目錄
WORKDIR /app

# 將 requirements.txt 複製到容器中
COPY requirements.txt .

# 安裝 Flask 及其他所需的依賴項
RUN pip install --no-cache-dir -r requirements.txt

# 複製 Flask 應用程式代碼到容器中
COPY app.py .

# 指定 Flask 應用程式的執行命令
CMD ["python", "app.py"]
