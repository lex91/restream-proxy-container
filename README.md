# restream-proxy-container
Restream vpn-to-proxy docker container: https://hub.docker.com/r/alexkras/restream-proxy/

### Installation guide:
1. If you have `.p12` certificate convert it to `.pem`:
  ```
    openssl pkcs12 -in <YOUR CERTIFICATE>.p12 -out cert.pem -nodes -passin pass:<YOUR CERTIFICATE PASSWORD>
  ```
2. Put your `cert.pem` and `ca.crt` to some directory <DIR>
3. Create and run docker image:
  ```
  docker run -dit --name restream-proxy --privileged --restart=always -p 127.0.0.1:8888:8888 -v <DIR>:/.restream-proxy alexkras/restream-proxy
  ```
4. Connect to HTTPS proxy on address `127.0.0.1:8888`
