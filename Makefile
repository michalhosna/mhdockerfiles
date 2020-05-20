shellcheck:
	find . -name '*.sh' | xargs shellcheck --external-sources  --severity=style
	find bin-docker/* | xargs shellcheck --external-sources  --severity=style

hadolint:
	find . -name 'Dockerfile*' | xargs hadolint

.PHONY: shellcheck hadolint

