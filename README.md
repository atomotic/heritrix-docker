heritrix-docker
===============

docker container with webarchiving crawler **heritrix-3.1.2-SNAPSHOT**

### run

- pull the image
 
		docker pull atomotic/heritrix

- create a persistent job directory

		mkdir jobs

- run the container exposing the private port 8443 port to host port 8443 

		docker run -d -p :8443 -v $(pwd)/jobs:/opt/heritrix/jobs atomotic/heritrix heritrix-start.sh

- access the web interface

		open https://localhost:8443
	
	* user **admin**
	* password **h3**


### build (if you want to build yourself the image)

	git clone https://github.com/atomotic/heritrix-docker
	docker build .
	
	
#### TODO
- improve the basic job crawler-beans.cxml (specify external seeds.txt file)
- add utilities to deal with warc files
  * https://github.com/internetarchive/warctools
  * https://github.com/internetarchive/CDX-Writer
  * https://github.com/alard/warc-proxy
  * wget-lua from archiveteam
  * https://github.com/alard/warctozip
  