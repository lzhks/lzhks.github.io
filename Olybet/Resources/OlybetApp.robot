*** Settings ***
Library  SeleniumLibrary
Resource    ../Resources/PO/LoginPage.robot
Resource    ../Resources/PO/User.robot
Resource    ../Resources/PO/CommSettings.robot

*** Variables ***


*** Keywords ***
Log into user account page
    LoginPage.Load
    LoginPage.Verify Page Loaded
    LoginPage.Login
    User.Verify Page Loaded

Change Contact Information
    User.Change Contact Information
    User.Save
    User.Verify Contact Information
    User.Clear Contact Information
    User.Save
    User.Verify Contact Information Clearing

Change Communication settings
    CommSettings.Load
    CommSettings.Verify Page Loaded
    CommSettings.Change Communication Settings
    CommSettings.Save
    CommSettings.Verify Save Successfull
    CommSettings.Verify Changes
    CommSettings.Clear Communication Settings
    CommSettings.Save
    CommSettings.Verify Clear Changes
    CommSettings.Verify Save Successfull

