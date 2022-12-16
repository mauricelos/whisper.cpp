#!/bin/bash

rm -r -f deployment
mkdir -p deployment/
cp "$(python3 bazelisk/bazelisk.py info --compilation_mode=opt bazel-bin)/whisper" deployment/
cp models/ggml-tiny.en.bin deployment/
cp samples/samples_jfk.wav deployment/
zip -r deployment/whisper.zip deployment
