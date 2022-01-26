#!/bin/bash
if [ ! -f ".env" ]; then
    cp .env.example .env
fi

npm install -f

npm run typeorm:migration:run
npm run seed

npm run start:dev
