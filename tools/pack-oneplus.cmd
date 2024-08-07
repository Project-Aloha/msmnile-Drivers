@echo off

mkdir ..\..\msmnile-Drivers-Release
del ..\..\msmnile-Drivers-Release\msmnile-Drivers-Desktop-OnePlus.zip

echo Check components\QC8150\Device\OnePlus\README.md > ..\README.txt

echo @echo off > ..\OnlineUpdater.cmd
echo ^(NET FILE^|^|^(powershell -command Start-Process '%%0' -Verb runAs -ArgumentList '%%* '^&EXIT /B^)^)^>NUL 2^>^&1 >> ..\OnlineUpdater.cmd
echo pushd "%%~dp0" ^&^& cd %%~dp0 >> ..\OnlineUpdater.cmd
echo .\tools\DriverUpdater\%%PROCESSOR_ARCHITECTURE%%\DriverUpdater.exe -r . -d .\definitions\Desktop\ARM64\Internal\hotdog.xml >> ..\OnlineUpdater.cmd
echo pause >> ..\OnlineUpdater.cmd

echo @echo off > ..\OnlineUpdater-b.cmd
echo ^(NET FILE^|^|^(powershell -command Start-Process '%%0' -Verb runAs -ArgumentList '%%* '^&EXIT /B^)^)^>NUL 2^>^&1 >> ..\OnlineUpdater-b.cmd
echo pushd "%%~dp0" ^&^& cd %%~dp0 >> ..\OnlineUpdater-b.cmd
echo .\tools\DriverUpdater\%%PROCESSOR_ARCHITECTURE%%\DriverUpdater.exe -r . -d .\definitions\Desktop\ARM64\Internal\hotdogb.xml >> ..\OnlineUpdater-b.cmd
echo pause >> ..\OnlineUpdater-b.cmd

echo @echo off > ..\OfflineUpdater.cmd
echo ^(NET FILE^|^|^(powershell -command Start-Process '%%0' -Verb runAs -ArgumentList '%%* '^&EXIT /B^)^)^>NUL 2^>^&1 >> ..\OfflineUpdater.cmd
echo pushd "%%~dp0" ^&^& cd %%~dp0 >> ..\OfflineUpdater.cmd
echo set /P DrivePath=Enter Drive letter ^^^(with the colon!^^^) of the connected device in mass storage mode ^^^(e.g. D:^^^): >> ..\OfflineUpdater.cmd
echo .\tools\DriverUpdater\%%PROCESSOR_ARCHITECTURE%%\DriverUpdater.exe -r . -d .\definitions\Desktop\ARM64\Internal\hotdog.xml -p %%DrivePath%% >> ..\OfflineUpdater.cmd
echo pause >> ..\OfflineUpdater.cmd

echo @echo off > ..\OfflineUpdater-b.cmd
echo ^(NET FILE^|^|^(powershell -command Start-Process '%%0' -Verb runAs -ArgumentList '%%* '^&EXIT /B^)^)^>NUL 2^>^&1 >> ..\OfflineUpdater-b.cmd
echo pushd "%%~dp0" ^&^& cd %%~dp0 >> ..\OfflineUpdater-b.cmd
echo set /P DrivePath=Enter Drive letter ^^^(with the colon!^^^) of the connected device in mass storage mode ^^^(e.g. D:^^^): >> ..\OfflineUpdater-b.cmd
echo .\tools\DriverUpdater\%%PROCESSOR_ARCHITECTURE%%\DriverUpdater.exe -r . -d .\definitions\Desktop\ARM64\Internal\hotdogb.xml -p %%DrivePath%% >> ..\OfflineUpdater-b.cmd
echo pause >> ..\OfflineUpdater-b.cmd

echo apps\IPA\Chat > filelist_oneplus.txt
echo apps\IPA\CommsEnhancement >> filelist_oneplus.txt
echo apps\IPA\Dialer >> filelist_oneplus.txt
echo apps\IPA\Frameworks >> filelist_oneplus.txt
echo apps\IPA\Messaging >> filelist_oneplus.txt
echo apps\IPA\Phone >> filelist_oneplus.txt
echo CODE_OF_CONDUCT.md >> filelist_oneplus.txt
echo components\ANYSOC\Changelog >> filelist_oneplus.txt
echo components\ANYSOC\Support\Desktop\SUPPORT.DESKTOP.BASE >> filelist_oneplus.txt
echo components\ANYSOC\Support\Desktop\SUPPORT.DESKTOP.MOBILE_BRIDGE >> filelist_oneplus.txt
echo components\ANYSOC\Support\Desktop\SUPPORT.DESKTOP.MOBILE_COMPONENTS >> filelist_oneplus.txt
echo components\ANYSOC\Support\Desktop\SUPPORT.DESKTOP.MOBILE_RIL >> filelist_oneplus.txt
echo components\ANYSOC\Support\Desktop\SUPPORT.DESKTOP.MOBILE_RIL_EXTRAS >> filelist_oneplus.txt
echo components\QC8150\Device\OnePlus\OEM.SOC_QC8150.ONEPLUS >> filelist_oneplus.txt
echo components\QC8150\Device\DEVICE.SOC_QC8150.HANA\Drivers\Audio >> filelist_oneplus.txt
echo components\QC8150\Device\DEVICE.SOC_QC8150.HANA\Drivers\Subsystems >> filelist_oneplus.txt
echo components\QC8150\Device\DEVICE.SOC_QC8150.HANA\Extensions\Cellular >> filelist_oneplus.txt
echo components\QC8150\Device\DEVICE.SOC_QC8150.HANA\Libraries >> filelist_oneplus.txt
echo components\QC8150\Device\DEVICE.SOC_QC8150.HANA\Services >> filelist_oneplus.txt
echo components\QC8150\Device\OnePlus\OEM.SOC_QC8150.ONEPLUS_MINIMAL >> filelist_oneplus.txt
echo components\QC8150\Device\DEVICE.SOC_QC8150.HANA_MINIMAL\Drivers\SOC\UART >> filelist_oneplus.txt
echo components\QC8150\Device\OnePlus\GRAPHICS.SOC_QC8150.ONEPLUS_DESKTOP >> filelist_oneplus.txt
echo components\QC8150\Device\OnePlus\DEVICE.SOC_QC8150.HOTDOG >> filelist_oneplus.txt
echo components\QC8150\Device\OnePlus\DEVICE.SOC_QC8150.HOTDOGB >> filelist_oneplus.txt
echo components\QC8150\OEM\OEM.SOC_QC8150.QCOM\Drivers\NFC >> filelist_oneplus.txt
echo components\QC8150\OEM\OEM.SOC_QC8150.QCOM\Drivers\USB >> filelist_oneplus.txt
echo components\QC8150\Platform\PLATFORM.SOC_QC8150.BASE >> filelist_oneplus.txt
echo components\QC8150\Platform\PLATFORM.SOC_QC8150.BASE_MINIMAL >> filelist_oneplus.txt
echo definitions\Desktop\ARM64\Internal\hotdog.xml >> filelist_oneplus.txt
echo definitions\Desktop\ARM64\Internal\hotdogb.xml >> filelist_oneplus.txt
echo definitions\Desktop\ARM64\PE\hotdog.xml >> filelist_oneplus.txt
echo tools\DriverUpdater >> filelist_oneplus.txt
echo LICENSE.md >> filelist_oneplus.txt
echo components\QC8150\Device\OnePlus\LICENSE.md >> filelist_oneplus.txt
echo OfflineUpdater.cmd >> filelist_oneplus.txt
echo OfflineUpdater-b.cmd >> filelist_oneplus.txt
echo OnlineUpdater.cmd >> filelist_oneplus.txt
echo OnlineUpdater-b.cmd >> filelist_oneplus.txt
echo README.md >> filelist_oneplus.txt
echo components\QC8150\Device\OnePlus\README.md >> filelist_oneplus.txt
echo README.txt >> filelist_oneplus.txt

cd ..
"%ProgramFiles%\7-zip\7z.exe" a -t7z ..\msmnile-Drivers-Release\msmnile-Drivers-Desktop-OnePlus.7z @tools\filelist_oneplus.txt -scsWIN
cd tools

del ..\README.txt
del ..\OfflineUpdater.cmd
del ..\OnlineUpdater.cmd
del ..\OfflineUpdater-b.cmd
del ..\OnlineUpdater-b.cmd
del filelist_oneplus.txt