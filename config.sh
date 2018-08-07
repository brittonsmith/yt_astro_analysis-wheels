# Define custom utilities
# Test for OSX with [ -n "$IS_OSX" ]

function pre_build {
    # Any stuff that you need to do before you start building the wheels
    # Runs in the root directory of this repository.
    pip install -U pip setuptools
}

function run_tests {
    # Runs tests on installed distribution from an empty directory
    python --version
    python -c "import yt.extensions.astro_analysis"
}
