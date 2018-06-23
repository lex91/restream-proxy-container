# restream-proxy-container
Restream vpn-to-proxy docker container

### Installation guide:
1. Put your `cert.pem`(make it from your .p12 file) and `ca.crt` to some directory <DIR>
2. Create and run docker image:
  ```
  docker run -dit --name restream-proxy --privileged -p 127.0.0.1:8888:8888 -v <DIR>:/.restream-proxy alexkras/restream-proxy
  ```
3. Connect to HTTPS proxy on address `127.0.0.1:8888`
