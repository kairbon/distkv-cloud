:: Install DistKV.

SET DISTKV_REPOSITORY_URL="https://github.com/distkv-project/distkv.git"
SET DISTKV_COMMIT_ID="9cb2364f0bd933b9ff333616c135967f27550873"

git clone %DISTKV_REPOSITORY_URL% distkv_tmp
pushd distkv_tmp
git checkout %DISTKV_COMMIT_ID%
mvn clean install -DskipTests
popd
rd /S /Q distkv_tmp

echo distkv_tmp was installed successfully.
echo All dependencies were installed successfully.

pause
