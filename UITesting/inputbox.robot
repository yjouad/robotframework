*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem

*** Variables ***
${browser}      chrome
${url}          https://www.nopcommerce.com/en

*** Test Cases ***
TestingInputBox
    open browser    ${url}      ${browser}
    maximize browser window
    title should be     Free and open-source eCommerce platform. ASP.NET based shopping cart. - nopCommerce
    sleep   3
    click link      xpath://a[@class='userlink']
    click link      xpath=//a[contains(text(),'Log in')]
    ${email}    set variable    id=Username
    element should be visible   ${email}
    element should be enabled   ${email}
    input text  ${email}    test@testing.com
    sleep   5
    clear element text  ${email}
    sleep   3
    close browser
*** Keywords ***



