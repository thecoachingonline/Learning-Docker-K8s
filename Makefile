.PHONY: run_website stop_website

run_website: target_a target_b target_c
docker build -t explore.com . && \
docker run --rm --name explore.com - p 5000:80 -d explore.com

stop_website:
docker stop explore.com