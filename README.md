# docker-arm32v6-certbot-dns-cloudflare
Docker image for Certbot with Cloudflare plugin for Raspberry Pi (ARM 32)

After building the image, you can run it like this:

`docker run -it --network=br-web --rm --name certbot -v "/your-source-dir/letsencrypt/etc:/etc/letsencrypt" -v "/your-source-dir/letsencrypt/var:/var/lib/letsencrypt" docker-arm32v6-certbot-dns-cloudflare certonly --dns-cloudflare -d your-domain.com --dns-cloudflare-credentials /etc/letsencrypt/cloudflare.ini`

This assumes that you have a file `/etc/letsencrypt/cloudflare.ini` with the following structure:

```
dns_cloudflare_email = "youremail@example.com"
dns_cloudflare_api_key = "123..."
```
