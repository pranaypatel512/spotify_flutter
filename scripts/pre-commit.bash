#!/usr/bin/env bash

printf "\e[34;1m%s\e[0m\n" 'Running Pre-Commit Git Hook'

# Flutter formatter
printf "\e[33;1m%s\e[0m\n" 'Running Dart Format ===>'
dart format .

hasNewFilesFormatted=$(git diff)
if [ -n "$hasNewFilesFormatted" ]; then
  printf "\e[35;1m%s\e[0m\n" '!!! Some files were formatted !!!'
  exit 1
fi
printf "\e[32;1m%s\e[0m\n" 'No formatting change!'

# Flutter Analyzer
printf "\e[33;1m%s\e[0m\n" 'Running Flutter analyzer ===>'
flutter analyze
if [ $? -ne 0 ]; then
  printf "\e[31;1m%s\e[0m\n" '!!! Flutter analyzer error !!!'
  exit 1
fi
printf "\e[32;1m%s\e[0m\n" 'Flutter analyzer passed!'

# Unit tests
printf "\e[33;1m%s\e[0m\n" 'Running Unit Tests ===>'
flutter test
if [ $? -ne 0 ]; then
  printf "\e[31;1m%s\e[0m\n" '!!! Unit tests error !!!'
  exit 1
fi
printf "\e[32;1m%s\e[0m\n" 'Unit Tests passed!'