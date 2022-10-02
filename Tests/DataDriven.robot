*** Settings ***
Documentation  Data Driven
Resource   ../Resources/CommonFunctionality.robot
Resource   ../Resources/ChoosingFromStore.robot

Force Tags  Functional
Suite Setup   CommonFunctionality.Start TestCase
Suite Teardown  Close Browser
Test Template  Search For Books And Magazines

*** Test Cases ***

Search For Local Magazines      //img[@alt="مجلات داخلی"]  //*[@id="plpLayoutContainer"]/section[2]/div/div/div[1]/div[10]/div/div[2]/div/div/div[3]   //*[@id="plpLayoutContainer"]/section[2]/div/div/div[1]/div[10]/div[2]/div[7]/div/div[2]/label/div    //img[@alt="مجله نیم روز شماره 6 - 7"]
Search For Foreign Magazines    //img[@alt="مجلات خارجی"]   //*[@id="plpLayoutContainer"]/section[2]/div/div/div[1]/div[12]/div/div[2]/div/div/div[3]   //*[@id="plpLayoutContainer"]/section[2]/div/div/div[1]/div[12]/div[2]/div[3]/div/div[2]/label/div    //img[@alt="مجله نيوز ويك جولاي 2011"]















