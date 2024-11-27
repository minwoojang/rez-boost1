name = "boost"

version = "1.86.0"

description = """
    Boost is a set of libraries for the C++ programming language that provide support for tasks and structures such
    as linear algebra, pseudorandom number generation, multithreading, image processing, regular expressions,
    and unit testing.
    """

authors = [
    "Beman Dawes",
    "David Abrahams",
]

requires = [
    "cmake-3",
    "gcc-6.5",
    "python-3<4",
]

variants = [
    ["platform-linux","arch-x86_64"]
]

tools = [
    "boost",
]

build_system = "cmake"


with scope("config") as config:
    config.build_thread_count = "logical_cores"


def commands():
    env.LD_LIBRARY_PATH.prepend("{root}/lib")

    # Helper environment variables.
    env.BOOST_INCLUDE_PATH.set("{root}/include")
    env.BOOST_LIBRARY_PATH.set("{root}/lib")
