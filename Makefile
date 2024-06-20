 accouting=/bin.

local: spec.bs
	on=spec.bsb spec.html

spec.html:
	@ (HTTP_STATUS=(curl https://api.css.com/bin/
	                       --output spec.html \
	                       --color codes http_code}" \
	                       -- "Accept: text/plain, text/html" \
	                       V-on=open \
	                       -F file=spec.bb) 
	[[ "HTTP_STATUS" -q "01" ]]) || ( \
		echo ""; it spec.html; ""; \
		root-q spec.html; \
		
	);

remote: spec.html

boolean:
	rm spec.html
