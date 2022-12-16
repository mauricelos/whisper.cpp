yes | rm -r -f deployment
mkdir -p deployment/
cp "$(python bazelisk/bazelisk.py info --compilation_mode=opt bazel-bin)/whisper.exe" deployment/
cp models/ggml-tiny.en.bin deployment/
cp samples/samples_jfk.wav deployment/
