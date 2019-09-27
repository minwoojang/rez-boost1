name = "boost"

version = "1.61.0"

authors = [
    "Beman Dawes",
    "David Abrahams"
]

description = \
    """
    Boost is a set of libraries for the C++ programming language that provide support for tasks and structures such
    as linear algebra, pseudorandom number generation, multithreading, image processing, regular expressions,
    and unit testing.
    """

requires = [
    "gcc-6",
    "cmake-3",
    "python-2.7"
]

variants = [
    ["platform-linux"]
]

tools = [
    "boost"
]

build_system = "cmake"

with scope("config") as config:
    config.build_thread_count = "logical_cores"

#TODO: Use the SHA1 of the archive instead.
uuid = "boost-1.61.0"

def commands():
    env.LD_LIBRARY_PATH.prepend("{root}/lib")
