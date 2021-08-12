***Settings***
Library     AppiumLibrary
Resource    resources/base.robot


Test Setup      Run App
Test Teardown   Quit App

***Test Cases***
Login with No Credentials
    Clear Text Fields
    Try to Login
    Email Error Should Be Visible
    Password Error Should Be Visible

Login with No Email
    Clear Text Fields
    Write Email
    Try to Login
    Password Error Should Be Visible

Login with No Password
    Clear Text Fields
    Write Password
    Try to Login
    Email Error Should Be Visible

Login Complete
    Clear Text Fields
    Write Email
    Write Password
    Try to Login
    Page Should Not Contain Element     accessibility_id=Please enter a valid email
    Page Should Not Contain Element     accessibility_id=Please enter a valid password

****Keywords***
Try to Login
    Click Element   accessibility_id=LOG IN

Email Error Should Be Visible
    Wait Until Element Is Visible    accessibility_id=Please enter a valid email      5

Password Error Should Be Visible
    Wait Until Element Is Visible    accessibility_id=Please enter a valid password      5

Clear Text Fields
    Clear Text      xpath=//android.widget.EditText[@text="Email"]
    Clear Text      xpath=//android.widget.EditText[@text="Password"]

Write Email
    Click Element            xpath=//android.widget.EditText[@text="Email"]
    Execute Adb Shell        input text      email@email
    Press Keycode            4

Write Password
    Click Element            xpath=//android.widget.EditText[@text="Password"]
    Execute Adb Shell        input text      password
    Press Keycode            4