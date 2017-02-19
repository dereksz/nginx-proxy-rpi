.SILENT :
.PHONY : test-debian test


update-dependencies:
	test/requirements/build.sh

test-debian: update-dependencies
	docker build -t jwilder/nginx-proxy:test .
	test/pytest.sh

test: test-debian
