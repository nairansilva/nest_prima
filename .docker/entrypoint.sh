#! /bin/bash

npm install
npm install prisma --save-dev
npm run build
npx prisma init
npm run start:dev
