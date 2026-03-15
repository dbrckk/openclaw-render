FROM ghcr.io/openclaw/openclaw:latest

USER root

ENV OPENCLAW_HOME=/root/.openclaw
ENV PLAYWRIGHT_BROWSERS_PATH=/home/node/.cache/ms-playwright
ENV OPENCLAW_DOCKER_APT_PACKAGES="libnss3 libnspr4 libatk1.0-0 libatk-bridge2.0-0 libcups2 libdrm2 libdbus-1-3 libxkbcommon0 libxcomposite1 libxdamage1 libxfixes3 libxrandr2 libgbm1 libasound2 libpango-1.0-0 libcairo2 libatspi2.0-0 libx11-6 libx11-xcb1 libxcb1 libxext6 libxshmfence1 libgtk-3-0"

RUN mkdir -p /root/.openclaw

COPY openclaw.json /root/.openclaw/openclaw.json
COPY auth-profiles.json /root/.openclaw/auth-profiles.json
