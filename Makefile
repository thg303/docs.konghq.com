develop:
	docker-compose up --build

test:
	docker-compose up -d
	docker-compose exec jekyll npm test

check-links:
	docker-compose up -d
	while [ `curl -s -o /dev/null -w ''%{http_code}'' localhost:3000` != 200 ]; do echo "waiting"; sleep 10; done
	docker-compose exec jekyll yarn add broken-link-checker
	docker-compose exec jekyll yarn blc http://localhost:3000 -efr --exclude careers --exclude hub
