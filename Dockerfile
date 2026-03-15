FROM ghcr.io/openclaw/openclaw:latest

USER root

RUN mkdir -p /root/.openclaw \
 && mkdir -p /ms-playwright \
 && node /app/node_modules/playwright-core/cli.js install chromium

ENV PLAYWRIGHT_BROWSERS_PATH=/ms-playwright

COPY .openclaw/ /root/.openclaw/
