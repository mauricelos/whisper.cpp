load("@rules_cc//cc:defs.bzl", "cc_binary", "cc_library", "cc_test")

cc_library(
    name = "whisper_lib",
    hdrs = [
        "include/whisper.h",
        "include/ggml.h"
    ],
    copts = [
        '-fpic',
        '-pthread'
    ],
    linkopts = ["-lpthread"],
    includes = ["include"],
    srcs = ["src/whisper.cpp", "src/ggml.c"],
    strip_include_prefix = "include",
)

cc_library(
    name = "dr_wav",
    hdrs = [
        "include/dr_wav.h",
    ],
    includes = ["include"],
    strip_include_prefix = "include",
)

cc_binary(
    name = "whisper",
    srcs = ["src/main.cpp"],
    args = [
        "-m",
        "models/ggml-base.en.bin",
        "-f",
        "samples/jfk.wav",
    ],
    data = glob(["models/*.bin", "samples/*.wav"]),
    deps = [
        ":whisper_lib",
        ":dr_wav",
    ],
)
