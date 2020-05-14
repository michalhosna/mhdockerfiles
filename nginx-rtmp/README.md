Example `/etc/nginx/nginx.conf`

```nginx
include /etc/nginx/conf.d/preable.conf;
include /etc/nginx/conf.d/stats.conf;

rtmp {
	server {
		listen 1935;
		chunk_size 4000;
		application stream {
			live on;
		}
	}
}
```
