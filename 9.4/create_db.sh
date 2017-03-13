#!/usr/bin/env bash
# -*- coding: utf-8 -*-

# Create db database setup

set -e

POSTGRES="psql --username ${POSTGRES_TEST_USER}"

echo "Creating database: ${POSTGRES_TEST_DB}"

$POSTGRES <<EOSQL
CREATE DATABASE ${POSTGRES_TEST_DB} OWNER ${POSTGRES_TEST_USER};
EOSQL