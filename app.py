from flask import Flask

# 建立 Flask 應用程式實例
app = Flask(__name__)

# 定義路由及處理函式
@app.route('/')
def hello():
    return 'Hello, World!'

# 啟動 Flask 應用程式
if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
