# This make file contains shortcuts for developing. There is no
# magic here, it just combines commonly used items into single make targets.

# Defaults.
.PHONY: runserver dropdb flushdb syncdb reseed resetdb dbshell flushcache configcache fix-http-perm release-ui npm-deps lang shell test test-api test-ui images deploy-local deploy-dev deploy-prod clean workers help docs

# Run the development server.
runserver:
	echo "Not implemented error"

# Drop the database and all data.
dropdb:
	echo "Not implemented error"

# Completely clear out the database (but leave database).
flushdb:
	echo "Not implemented error"

# Set up database schema (Migrations)
syncdb:
	echo "Not implemented error"

# Run the database reseeder. Specific to project.
reseed:
	echo "Not implemented error"

# Reset the database.
resetdb:
	${MAKE} flushdb
	${MAKE} syncdb

# Database shell
# Laravel: mysql -h `grep -Po '\DB_HOST=\s*\K[^;]*' .env` -u `grep -Po '\DB_USERNAME=\s*\K[^;]*' .env` -p`grep -Po '\DB_PASSWORD=\s*\K[^;]*' .env`
dbshell:
	echo "Not implemented error"

# Flush the Cache
flushcache:
	echo "Not implemented error"

# Cache the config
configcache:
	echo "Not implemented error"

# Fix permissions after a git pull.
fix-http-perm:
	chown -R apache:www .

# Release the ui. Let gulp to the heavy lifting.
release-ui:
	gulp release

# Refresh npm node_modules directory.
npm-deps:
	rm -rf node_modules/
	npm install

# Refresh langauage files based on internationalization
lang:
	echo "Not implemented error"

# Language specific debug shell
shell:
	echo "Not implemented error"

# Run all tests.
test:
	${MAKE} test-ui
	${MAKE} test-api

test-api:
	echo "Not implemented error"

test-ui:
	echo "Not implemented error"

# Build icon/sprite sets from multiple images or optimize images.
images:
	echo "Not implemented error"

# Deploy application to local servers.
deploy-local:
	echo "Not implemented error"

# Deploy application to development servers.
deploy-dev:
	echo "Not implemented error"

# Deploy application to production servers.
deploy-prod:
	echo "Not implemented error"

# Remove compiled Python (.pyc and .pyo) files, backup files left by editors and
# core files.
clean:
	find . \( -name "*.py[co]" -o -name "*~" -o -name "*.core" \) -delete

# Worker to handle tasks.
workers:
	echo "Not implemented error"

help:
	echo "Not implemented error"

# Run commands to generate documentation from esdocs, phpdocs, or python docstrings
docs:
	echo "Not implemented error"