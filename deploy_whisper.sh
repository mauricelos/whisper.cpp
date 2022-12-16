yes | rm -r -f deployment
mkdir -p deployment/
cp "$(python bazelisk/bazelisk.py info bazel-genfiles)/whisper.exe" deployment/
cp models/ggml-tiny.en.bin deployment/
cp samples/samples_jfk.wav deployment/
