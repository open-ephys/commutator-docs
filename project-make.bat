@ECHO OFF

xcopy ".\pre-source\commutator-template" ".\source\ultra-coax-commutator" /s/e /v /y /i > nul
xcopy ".\pre-source\commutator-template" ".\source\spi-commutator" /s/e /v /y /i > nul

xcopy ".\pre-source\ultra-coax-commutator" ".\source\ultra-coax-commutator" /s/e /v /y /i > nul
xcopy ".\pre-source\spi-commutator" ".\source\spi-commutator" /s/e /v /y /i > nul

xcopy ".\pre-source\ultra-coax-commutator\overview.rst" ".\source\ultra-coax-commutator\overview.rst*" /s/e /v /y /i > nul
xcopy ".\pre-source\spi-commutator\overview.rst" ".\source\spi-commutator\overview.rst*" /s/e /v /y /i > nul

xcopy ".\pre-source\_static" ".\source\_static" /s/e /v /y /i > nul
xcopy ".\pre-source\index.rst" ".\source\index.rst*" /v /y /i > nul
xcopy ".\pre-source\conf.py" ".\source\conf.py*" /v /y /i > nul

./make html