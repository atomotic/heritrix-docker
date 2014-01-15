heritrix-docker
===============

docker container with #webarchiving crawler **heritrix-3.2.0**

### run

- build
 
		docker build -t atomotic/heritrix github.com/atomotic/heritrix-docker

- create a persistent job directory on the host

		mkdir jobs

- run the container on host:8443

		docker run -d -p 8443:8443 -v $(pwd)/jobs:/opt/heritrix-3.2.0/jobs atomotic/heritrix heritrix-start.sh

- access the web interface

		open https://localhost:8443
	
	* user **heritrix**
	* password **heritrix**


#### TODO
- improve the basic job crawler-beans.cxml (specify external seeds.txt file)
- add utilities to deal with warc files
  * https://github.com/internetarchive/warctools
  * https://github.com/internetarchive/CDX-Writer
  * https://github.com/alard/warc-proxy
  * wget-lua from archiveteam
  * https://github.com/alard/warctozip
  * https://github.com/ukwa/warc-explorer
  * https://github.com/martinsbalodis/warc-content
  * https://github.com/ianmilligan1/Historian-WARC-1
  * https://github.com/alard/megawarc
  
