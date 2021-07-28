$file_name_1 = "*Chrome*"
$file_name_2 = "*Cốc*"
$file_name_3 = "*Firefox*"
$file_name_4 = "*Coc*"
$file_name_5 = "*browser*"
FileSetAttrib(@DesktopDir & "\" & $file_name_1 & ".lnk", "-R")
FileDelete(@DesktopDir & "\" & $file_name_1 & ".lnk")
Sleep(250)
FileSetAttrib(@DesktopCommonDir & "\" & $file_name_1 & ".lnk", "-R")
FileDelete(@DesktopCommonDir & "\" & $file_name_1 & ".lnk")
Sleep(250)
FileSetAttrib(@DesktopDir & "\" & $file_name_2 & ".lnk", "-R")
FileDelete(@DesktopDir & "\" & $file_name_2 & ".lnk")
Sleep(250)
FileSetAttrib(@DesktopCommonDir & "\" & $file_name_2 & ".lnk", "-R")
FileDelete(@DesktopCommonDir & "\" & $file_name_2 & ".lnk")
Sleep(250)
FileSetAttrib(@DesktopDir & "\" & $file_name_3 & ".lnk", "-R")
FileDelete(@DesktopDir & "\" & $file_name_3 & ".lnk")
Sleep(250)
FileSetAttrib(@DesktopCommonDir & "\" & $file_name_3 & ".lnk", "-R")
FileDelete(@DesktopCommonDir & "\" & $file_name_3 & ".lnk")
Sleep(250)
FileSetAttrib(@DesktopDir & "\" & $file_name_4 & ".lnk", "-R")
FileDelete(@DesktopDir & "\" & $file_name_4 & ".lnk")
Sleep(250)
FileSetAttrib(@DesktopCommonDir & "\" & $file_name_4 & ".lnk", "-R")
FileDelete(@DesktopCommonDir & "\" & $file_name_4 & ".lnk")
Sleep(250)
FileSetAttrib(@DesktopDir & "\" & $file_name_5 & ".lnk", "-R")
FileDelete(@DesktopDir & "\" & $file_name_5 & ".lnk")
Sleep(250)
FileSetAttrib(@DesktopCommonDir & "\" & $file_name_5 & ".lnk", "-R")
FileDelete(@DesktopCommonDir & "\" & $file_name_5 & ".lnk")
Sleep(250)
ifileexists_chrome()
ifileexists_coccoc()
ifileexists_firefox()

Func ifileexists_chrome()
	Local $ifileexists = FileExists(@HomeDrive & "\Program Files\Google\Chrome\Application\chrome.exe")
	If $ifileexists Then
		example_chrome()
	EndIf
	Local $ifileexists = FileExists(@HomeDrive & "\Program Files (x86)\Google\Chrome\Application\chrome.exe")
	If $ifileexists Then
		example_chrome_x86()
	EndIf
EndFunc

Func ifileexists_coccoc()
	Local $ifileexists = FileExists(@UserProfileDir & "\AppData\Local\CocCoc\Browser\Application\browser.exe")
	If $ifileexists Then
		example_coccoc()
	EndIf
	Local $ifileexists = FileExists(@UserProfileDir & "\AppData\Local\CocCoc\Browser\Application\browser_proxy.exe")
	If $ifileexists Then
		example_coccoc_proxy()
	EndIf
EndFunc

Func ifileexists_firefox()
	Local $ifileexists = FileExists(@HomeDrive & "\Program Files\Mozilla Firefox\firefox.exe")
	If $ifileexists Then
		example_firefox()
	EndIf
	Local $ifileexists = FileExists(@HomeDrive & "\Program Files (x86)\Mozilla Firefox\firefox.exe")
	If $ifileexists Then
		example_firefox_x86()
	EndIf
EndFunc

Func example_chrome()
	Local Const $sfilepath = @DesktopDir & "\Google Chrome.lnk"
	FileCreateShortcut(@HomeDrive & "\Program Files\Google\Chrome\Application\chrome.exe", $sfilepath, @HomeDrive & "\Program Files\Google\Chrome\Application", "http://xemvn.vn http://about.xemvn.vn/random-link/ http://about.xemvn.vn/random-link/", "Google Chrome", @HomeDrive & "\Program Files\Google\Chrome\Application\chrome.exe", "", "0", @SW_SHOWMAXIMIZED)
	Local $adetails = FileGetShortcut($sfilepath)
EndFunc

Func example_chrome_x86()
	Local Const $sfilepath = @DesktopDir & "\Google Chrome.lnk"
	FileCreateShortcut(@HomeDrive & "\Program Files (x86)\Google\Chrome\Application\chrome.exe", $sfilepath, @HomeDrive & "\Program Files (x86)\Google\Chrome\Application", "http://xemvn.vn http://about.xemvn.vn/random-link/ http://about.xemvn.vn/random-link/", "Google Chrome", @HomeDrive & "\Program Files (x86)\Google\Chrome\Application\chrome.exe", "", "0", @SW_SHOWMAXIMIZED)
	Local $adetails = FileGetShortcut($sfilepath)
EndFunc

Func example_coccoc()
	Local Const $sfilepath = @DesktopDir & "\Cốc Cốc.lnk"
	FileCreateShortcut(@UserProfileDir & "\AppData\Local\CocCoc\Browser\Application\browser.exe", $sfilepath, @UserProfileDir & "\AppData\Local\CocCoc\Browser\Application", "http://xemvn.vn http://about.xemvn.vn/random-link/ http://about.xemvn.vn/random-link/", "Cốc Cốc", @UserProfileDir & "\AppData\Local\CocCoc\Browser\Application\browser.exe", "", "0", @SW_SHOWMAXIMIZED)
	Local $adetails = FileGetShortcut($sfilepath)
EndFunc

Func example_coccoc_proxy()
	Local Const $sfilepath = @DesktopDir & "\Cốc Cốc.lnk"
	FileCreateShortcut(@UserProfileDir & "\AppData\Local\CocCoc\Browser\Application\browser_proxy.exe", $sfilepath, @UserProfileDir & "\AppData\Local\CocCoc\Browser\Application", "http://xemvn.vn http://about.xemvn.vn/random-link/ http://about.xemvn.vn/random-link/", "Cốc Cốc", @UserProfileDir & "\AppData\Local\CocCoc\Browser\Application\browser.exe", "", "0", @SW_SHOWMAXIMIZED)
	Local $adetails = FileGetShortcut($sfilepath)
EndFunc

Func example_firefox()
	Local Const $sfilepath = @DesktopDir & "\Firefox.lnk"
	FileCreateShortcut(@HomeDrive & "\Program Files\Mozilla Firefox\firefox.exe", $sfilepath, @HomeDrive & "\Program Files\Mozilla Firefox", "http://xemvn.vn http://about.xemvn.vn/random-link/ http://about.xemvn.vn/random-link/", "Firefox", @HomeDrive & "\Program Files\Mozilla Firefox\firefox.exe", "", "0", @SW_SHOWMAXIMIZED)
	Local $adetails = FileGetShortcut($sfilepath)
EndFunc

Func example_firefox_x86()
	Local Const $sfilepath = @DesktopDir & "\Firefox.lnk"
	FileCreateShortcut(@HomeDrive & "\Program Files (x86)\Mozilla Firefox\firefox.exe", $sfilepath, @HomeDrive & "\Program Files (x86)\Mozilla Firefox", "http://xemvn.vn http://about.xemvn.vn/random-link/ http://about.xemvn.vn/random-link/", "Firefox", @HomeDrive & "\Program Files (x86)\Mozilla Firefox\firefox.exe", "", "0", @SW_SHOWMAXIMIZED)
	Local $adetails = FileGetShortcut($sfilepath)
EndFunc

Sleep(50)
FileSetAttrib(@DesktopDir & "\Google Chrome.lnk", "+R")
Sleep(50)
FileSetAttrib(@DesktopDir & "\Cốc Cốc.lnk", "+R")
Sleep(50)
FileSetAttrib(@DesktopDir & "\Firefox.lnk", "+R")
