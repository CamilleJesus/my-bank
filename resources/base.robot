***Settings***
Library     AppiumLibrary


****Keywords***
Run App
    Open Application    http://localhost:4723/wd/hub
    ...                 automationName=UiAutomator2
    ...                 platformName=Android
    ...                 deviceName=Test
    ...                 app=${EXECDIR}/app/mybank.apk
    ...                 udid=emulator-5554

    #Checkpoint:
    Wait Until Element Is Visible    accessibility_id=LOG IN

Quit App
    Capture Page Screenshot
    Close Application