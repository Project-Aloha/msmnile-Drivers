@echo off

mkdir ..\..\msmnile-Drivers-Release
del ..\..\msmnile-Drivers-Release\msmnile-Drivers-Desktop-LG.zip

echo Check components\QC8150\Device\LG\README.md > ..\README.txt

echo @echo off > ..\OnlineUpdater.cmd
echo ^(NET FILE^|^|^(powershell -command Start-Process '%%0' -Verb runAs -ArgumentList '%%* '^&EXIT /B^)^)^>NUL 2^>^&1 >> ..\OnlineUpdater.cmd
echo pushd "%%~dp0" ^&^& cd %%~dp0 >> ..\OnlineUpdater.cmd
echo .\tools\DriverUpdater\%%PROCESSOR_ARCHITECTURE%%\DriverUpdater.exe -r . -d .\definitions\Desktop\ARM64\Internal\flashlmdd.xml >> ..\OnlineUpdater.cmd
echo pause >> ..\OnlineUpdater.cmd

echo @echo off > ..\OnlineUpdater-b.cmd
echo ^(NET FILE^|^|^(powershell -command Start-Process '%%0' -Verb runAs -ArgumentList '%%* '^&EXIT /B^)^)^>NUL 2^>^&1 >> ..\OnlineUpdater-b.cmd
echo pushd "%%~dp0" ^&^& cd %%~dp0 >> ..\OnlineUpdater-b.cmd
echo .\tools\DriverUpdater\%%PROCESSOR_ARCHITECTURE%%\DriverUpdater.exe -r . -d .\definitions\Desktop\ARM64\Internal\mh2lm5g.xml >> ..\OnlineUpdater-b.cmd
echo pause >> ..\OnlineUpdater-b.cmd

echo @echo off > ..\OfflineUpdater.cmd
echo ^(NET FILE^|^|^(powershell -command Start-Process '%%0' -Verb runAs -ArgumentList '%%* '^&EXIT /B^)^)^>NUL 2^>^&1 >> ..\OfflineUpdater.cmd
echo pushd "%%~dp0" ^&^& cd %%~dp0 >> ..\OfflineUpdater.cmd
echo set /P DrivePath=Enter Drive letter ^^^(with the colon!^^^) of the connected device in mass storage mode ^^^(e.g. D:^^^): >> ..\OfflineUpdater.cmd
echo .\tools\DriverUpdater\%%PROCESSOR_ARCHITECTURE%%\DriverUpdater.exe -r . -d .\definitions\Desktop\ARM64\Internal\flashlmdd.xml -p %%DrivePath%% >> ..\OfflineUpdater.cmd
echo pause >> ..\OfflineUpdater.cmd

echo @echo off > ..\OfflineUpdater-b.cmd
echo ^(NET FILE^|^|^(powershell -command Start-Process '%%0' -Verb runAs -ArgumentList '%%* '^&EXIT /B^)^)^>NUL 2^>^&1 >> ..\OfflineUpdater-b.cmd
echo pushd "%%~dp0" ^&^& cd %%~dp0 >> ..\OfflineUpdater-b.cmd
echo set /P DrivePath=Enter Drive letter ^^^(with the colon!^^^) of the connected device in mass storage mode ^^^(e.g. D:^^^): >> ..\OfflineUpdater-b.cmd
echo .\tools\DriverUpdater\%%PROCESSOR_ARCHITECTURE%%\DriverUpdater.exe -r . -d .\definitions\Desktop\ARM64\Internal\mh2lm5g.xml -p %%DrivePath%% >> ..\OfflineUpdater-b.cmd
echo pause >> ..\OfflineUpdater-b.cmd

echo apps\IPA\Chat > filelist_LG.txt
echo apps\IPA\CommsEnhancement >> filelist_LG.txt
echo apps\IPA\Dialer >> filelist_LG.txt
echo apps\IPA\Frameworks >> filelist_LG.txt
echo apps\IPA\Messaging >> filelist_LG.txt
echo apps\IPA\Phone >> filelist_LG.txt
echo CODE_OF_CONDUCT.md >> filelist_LG.txt
echo components\ANYSOC\Changelog >> filelist_LG.txt
echo components\ANYSOC\Support\Desktop\SUPPORT.DESKTOP.BASE >> filelist_LG.txt
echo components\ANYSOC\Support\Desktop\SUPPORT.DESKTOP.MOBILE_BRIDGE >> filelist_LG.txt
echo components\ANYSOC\Support\Desktop\SUPPORT.DESKTOP.MOBILE_COMPONENTS >> filelist_LG.txt
echo components\ANYSOC\Support\Desktop\SUPPORT.DESKTOP.MOBILE_RIL >> filelist_LG.txt
echo components\ANYSOC\Support\Desktop\SUPPORT.DESKTOP.MOBILE_RIL_EXTRAS >> filelist_LG.txt
echo components\QC8150\Device\LG\OEM.SOC_QC8150.LG >> filelist_LG.txt
echo components\QC8150\Device\DEVICE.SOC_QC8150.HANA\Drivers\Audio >> filelist_LG.txt
echo components\QC8150\Device\DEVICE.SOC_QC8150.HANA\Drivers\Subsystems >> filelist_LG.txt
echo components\QC8150\Device\DEVICE.SOC_QC8150.HANA\Extensions\Cellular >> filelist_LG.txt
echo components\QC8150\Device\DEVICE.SOC_QC8150.HANA\Libraries >> filelist_LG.txt
echo components\QC8150\Device\DEVICE.SOC_QC8150.HANA\Services >> filelist_LG.txt
echo components\QC8150\Device\LG\OEM.SOC_QC8150.LG_MINIMAL >> filelist_LG.txt
echo components\QC8150\Device\LG\GRAPHICS.SOC_QC8150.MH2LM5G_DESKTOP >> filelist_LG.txt
echo components\QC8150\Device\LG\GRAPHICS.SOC_QC8150.FLASHLMDD_DESKTOP >> filelist_LG.txt
echo components\QC8150\Device\LG\DEVICE.SOC_QC8150.FLASHLMDD >> filelist_LG.txt
echo components\QC8150\Device\LG\DEVICE.SOC_QC8150.MH2LM5G >> filelist_LG.txt
echo components\QC8150\Platform\PLATFORM.SOC_QC8150.BASE >> filelist_LG.txt
echo components\QC8150\Platform\PLATFORM.SOC_QC8150.BASE_MINIMAL >> filelist_LG.txt
echo definitions\Desktop\ARM64\Internal\FLASHLMDD.xml >> filelist_LG.txt
echo definitions\Desktop\ARM64\Internal\MH2LM5G.xml >> filelist_LG.txt
echo definitions\Desktop\ARM64\PE\FLASHLMDD.xml >> filelist_LG.txt
echo tools\DriverUpdater >> filelist_LG.txt
echo LICENSE.md >> filelist_LG.txt
echo components\QC8150\Device\LG\LICENSE.md >> filelist_LG.txt
echo OfflineUpdater.cmd >> filelist_LG.txt
echo OfflineUpdater-b.cmd >> filelist_LG.txt
echo OnlineUpdater.cmd >> filelist_LG.txt
echo OnlineUpdater-b.cmd >> filelist_LG.txt
echo README.md >> filelist_LG.txt
echo components\QC8150\Device\LG\README.md >> filelist_LG.txt
echo README.txt >> filelist_LG.txt

cd ..
"%ProgramFiles%\7-zip\7z.exe" a -t7z ..\msmnile-Drivers-Release\msmnile-Drivers-Desktop-LG.7z @tools\filelist_LG.txt -scsWIN
cd tools

del ..\README.txt
del ..\OfflineUpdater.cmd
del ..\OnlineUpdater.cmd
del ..\OfflineUpdater-b.cmd
del ..\OnlineUpdater-b.cmd
del filelist_LG.txt