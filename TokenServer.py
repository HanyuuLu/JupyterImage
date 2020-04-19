import time
import os
import urllib
import http.server


class Server(http.server.BaseHTTPRequestHandler):
    def do_GET(self):
        self.querypath = urllib.parse.urlparse(self.path)
        if(self.querypath.path == '/server'):
            self.send_response(200)
            self.send_header('Content-Type', 'text/html;charset=utf-8')
            self.end_headers()
            res = os.popen('jupyter notebook list').read()
            self.wfile.write(bytes(res, encoding='utf8'))
        else:
            self.send_error(404, 'bad request', 'invaild request')


if __name__ == '__main__':
    PORT = ('', 3500)
    httpd = http.server.HTTPServer(PORT, Server)
    print(time.strftime("%Y-%m-%d %H:%M:%S",
                        time.localtime()), "Listening on ", PORT)
    httpd.serve_forever()
