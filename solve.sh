#!/bin/bash

# /workspaces/codespaces-blank/Android/flutter/examples 디렉토리로 이동
cd /workspaces/codespaces-blank/Android/flutter/dev

# 모든 서브 디렉토리와 그 하위 디렉토리까지 탐색
find . -type f -name "pubspec.yaml" | while read -r file; do
  # pubspec.yaml 파일이 있는 디렉토리로 이동
  dir=$(dirname "$file")
  echo "Running 'flutter clean' in $dir"
  
  # 디렉토리에서 pub get 실행
  (cd "$dir" && flutter pub get)
done
