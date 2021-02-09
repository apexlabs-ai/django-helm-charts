#!/bin/sh
echo "Cleaning up..." \
	&& rm -rf .deploy \
	&& echo "Packaging..." \
	&& cr --config .cr/config.yaml package charts/* \
	&& echo "Uploading..." \
	&& cr --config .cr/config.yaml upload \
	&& echo "Indexing..." \
	&& cr --config .cr/config.yaml index https://github.com/apexlabs-ai/django-helm-charts
