#!/usr/bin/env bash
# -*- coding: utf-8 -*-

# Create user Database setup
set -e

POSTGRES="psql --username ${POSTGRES_TEST_USER}"

echo "Creating database role: ${POSTGRES_TEST_DB}"

$POSTGRES <<-EOSQL
CREATE USER ${POSTGRES_TEST_USER} WITH CREATEDB PASSWORD '${POSTGRES_TEST_PASSWORD}';
EOSQL