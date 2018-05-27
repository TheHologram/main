@echo off
pushd "%~dp0"
REM xcopy /Y /S /D Util\References\MonoUnity\2.0.5.0\*.dll bin\Unity4Release\
REM msbuild /t:Build /p:ReferencedPlatform=Unity4 /p:Configuration=Unity4Release /p:BaseConfiguration=Release /p:Platform="AnyCPU" /nologo Solutions\Build.IronPython.Unity.proj 

REM xcopy /Y /S /D Util\References\MonoUnity\2.0.0.0\*.dll bin\Unity5Release\
REM msbuild /t:Build /p:ReferencedPlatform=Unity5 /p:Configuration=Unity5Release /p:BaseConfiguration=Release /p:Platform="AnyCPU" /nologo Solutions\Build.IronPython.Unity.proj 
REM msbuild /fileLogger /fileLoggerParameters:LogFile=Verbosity=diagnostic /t:Build /p:Configuration=Unity5Release /p:ReferencedPlatform=Unity5 /p:BaseConfiguration=Release /p:Platform="Any CPU" /nologo Solutions\Build.IronPython.Unity.proj 

xcopy /Y /S /D Util\References\MonoUnity\2017.3.0\*.dll bin\Unity2017Release\
msbuild /t:Build /p:ReferencedPlatform=Unity2017 /p:Configuration=Unity2017Release /p:BaseConfiguration=Release /p:Platform="AnyCPU" /nologo Solutions\Build.IronPython.Unity.proj 

popd