@ECHO OFF
echo ��������
if exist %~dp0..\Assets\AssetResources\Config ( echo "Config�ļ�����") else ( md %~dp0..\Assets\AssetResources\Config )
for %%i in (%~dp0..\Assets\AssetResources\Config\*.bytes) do ( 
    del %%i
)
for %%i in (%~dp0Example\Export\dat\*.dat) do ( 
    copy /y %%i %~dp0..\Assets\AssetResources\Config
)
rename %~dp0..\Assets\AssetResources\Config\*.dat *.dat.bytes
echo �����������
echo ����cs�ļ�
for %%i in (%~dp0Example\Export\language\csharpForILRumtime\*.cs) do ( 
    copy /y %%i %~dp0..\Assets\Scripts\UnityHotfix\Protobuf
)
echo ����cs�ļ����
pause