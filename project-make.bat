@ECHO OFF

xcopy ".\source\commutator-template" ".\generated-source\ultra-coax-commutator" /s/e /v /y /i > nul
xcopy ".\source\commutator-template" ".\generated-source\spi-commutator" /s/e /v /y /i > nul

xcopy ".\source\ultra-coax-commutator" ".\generated-source\ultra-coax-commutator" /s/e /v /y /i > nul
xcopy ".\source\spi-commutator" ".\generated-source\spi-commutator" /s/e /v /y /i > nul

xcopy ".\source\ultra-coax-commutator\overview.rst" ".\generated-source\ultra-coax-commutator\overview.rst*" /s/e /v /y /i > nul
xcopy ".\source\spi-commutator\overview.rst" ".\generated-source\spi-commutator\overview.rst*" /s/e /v /y /i > nul

xcopy ".\source\_static" ".\generated-source\_static" /s/e /v /y /i > nul
xcopy ".\source\index.rst" ".\generated-source\index.rst*" /v /y /i > nul
xcopy ".\source\conf.py" ".\generated-source\conf.py*" /v /y /i > nul

./make html