*** Settings ***
Library     AppiumLibrary
Variables   ../android-simulator-config.py


*** Keywords ***
Connect Devices
    [Arguments]     ${urlConnect}     ${platformName}    ${deviceName}   ${appPackage}   ${appActivity}
    Open Application    ${urlConnect}    platformName=${platformName}    deviceName=${deviceName}      appPackage=${appPackage}     appActivity=${appActivity}

Open And Connect Android Simulator
    Connect Devices     ${URL_CONNECT}  ${ANDROID_PLATFORM_NAME}   ${DEVICE_NAME}   ${APP_PACKAGE}    ${APP_ACTIVITY}
