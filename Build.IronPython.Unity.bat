@echo off
pushd "%~dp0"
xcopy /Y /S /D Util\References\MonoUnity\2.0.5.0\*.dll bin\Unity4Release\
xcopy /Y /S /D Util\References\MonoUnity\2.0.0.0\*.dll bin\Unity5Release\

msbuild /t:Build /p:ReferencedPlatform=Unity4 /p:Configuration=Unity4Release /p:BaseConfiguration=Release /p:Platform="AnyCPU" /nologo Solutions\Build.IronPython.Unity.proj 
msbuild /t:Build /p:ReferencedPlatform=Unity5 /p:Configuration=Unity5Release /p:BaseConfiguration=Release /p:Platform="AnyCPU" /nologo Solutions\Build.IronPython.Unity.proj 
REM msbuild /fileLogger /fileLoggerParameters:LogFile=Verbosity=diagnostic /t:Build /p:Configuration=Unity5Release /p:ReferencedPlatform=Unity5 /p:BaseConfiguration=Release /p:Platform="Any CPU" /nologo Solutions\Build.IronPython.Unity.proj 
popd