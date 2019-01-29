load lib/assertions

export PM_APT_TEST_DIR="${BATS_TMPDIR}/pm-apt"
export PM_APT_TMP_BIN="${PM_APT_TEST_DIR}/bin"
export PM_APT_CWD="${PM_APT_TEST_DIR}/cwd"

export PATH="${BATS_TEST_DIRNAME}/libexec:$PATH"
export PATH="${BATS_TEST_DIRNAME}/../libexec:$PATH"
export PATH="${PM_APT_TMP_BIN}:$PATH"

mkdir -p "${PM_APT_TMP_BIN}"
mkdir -p "${PM_APT_TEST_DIR}"
mkdir -p "${PM_APT_CWD}"

setup() {
  cd "${PM_APT_CWD}"
}

teardown() {
  rm -rf "${PM_APT_TEST_DIR}"
}
