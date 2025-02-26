#!/usr/bin/env bash

rm -rf ./changelog_chunk_processed/*.txt && \
gh pr diff $1 > ./changelog.txt && python ./process_input.py && python ./process_json_txts.py && \
cat ./extracted_texts.md