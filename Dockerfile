FROM node:16-alpine

WORKDIR /app

COPY package.json yarn.lock ./
RUN npm install 

COPY next.config.js ./next.config.js
COPY pages ./pages
COPY public ./public
COPY styles ./styles
COPY components ./components
COPY contentful ./contentful
COPY docs ./docs
COPY lib ./lib
COPY types ./types
COPY tailwind.config.js ./tailwind.config.js
COPY .next ./.next
COPY .swc ./swc
COPY postcss.config.js ./postcss.config.js



CMD ["npm", "run", "dev"]