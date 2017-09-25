GH_TOKEN ?=
GH_REPO  ?= 

JSON   = $(patsubst %.json,%.o,$(wildcard src/*.json))

all: $(JSON) 


src/delete.o: src/delete.json
	@echo "==> $^"
	@cat $^ | jq -c -r '.[]' | while read I ;\
	do \
		curl -XDELETE -s -o /dev/null -H "Authorization: token ${GH_TOKEN}" https://api.github.com/repos/${GH_REPO}/labels/$$I ;\
	done


src/%.o: src/%.json
	@echo "==> $^"
	@cat $^ | jq -c -r '.[]' | while read I ;\
	do \
		curl -XPOST -s -o /dev/null -H "Authorization: token ${GH_TOKEN}" https://api.github.com/repos/${GH_REPO}/labels -H 'Content-Type: application/json' -d "$$I" ;\
	done

