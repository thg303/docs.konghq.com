#!/bin/bash

npm install -g yarn
npm install -g gulp
npm install
npm link npm link gulp
bundle install
yarn --ignore-engines
gulp clean
gulp
