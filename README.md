# Task Dialogs
Xojo example project

[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

## Description
This Xojo example project shows to use the [Task Dialog Indirect API](https://docs.microsoft.com/en-us/windows/win32/api/commctrl/nf-commctrl-taskdialogindirect) for Windows Desktop Applications.  
It provides a couple of convenience Methods for the most often used Task Dialogs *(1 or 2 options to choose, (dis)allow cancel)*. The Advanced Dialog lets you explore all the settings.  
It falls back to Xojo's ```MessageBox``` or ```MessageDialog``` for other Build Targets *(macOS, Linux)*.

Also provided are convenience methods for often used ```MessageBoxes```, which use the [Task Dialog API](https://docs.microsoft.com/en-us/windows/win32/api/commctrl/nf-commctrl-taskdialog) if available, and otherwise fallback to Xojo's standard ```MessageBox```.

### ScreenShots
Example 1:  
![ScreenShot: Example 1](screenshots/TaskDialogIndirect_1.png?raw=true)

Example 2:  
![ScreenShot: Example 2](screenshots/TaskDialogIndirect_2.png?raw=true)

Example 3:  
![ScreenShot: Example 3](screenshots/TaskDialogIndirect_3.png?raw=true)

## Xojo
### Requirements
[Xojo](https://www.xojo.com/) is a rapid application development for Desktop, Web, Mobile & Raspberry Pi.  

The Desktop application Xojo example project ```TaskDialogs.xojo_project``` is using:
- Xojo 2018r4
- API 1

### How to use in your own Xojo project?
1. ...
2. ...


## About
Juerg Otter is a long term user of Xojo and working for [CM Informatik AG](https://cmiag.ch/). Their Application [CMI LehrerOffice](https://cmi-bildung.ch/) is a Xojo Design Award Winner 2018. In his leisure time Juerg provides some [bits and pieces for Xojo Developers](https://www.jo-tools.ch/).

### Contact
[![E-Mail](https://img.shields.io/static/v1?style=social&label=E-Mail&message=xojo@jo-tools.ch)](mailto:xojo@jo-tools.ch)
&emsp;&emsp;
[![Follow on Facebook](https://img.shields.io/static/v1?style=social&logo=facebook&label=Facebook&message=juerg.otter)](https://www.facebook.com/juerg.otter)
&emsp;&emsp;
[![Follow on Twitter](https://img.shields.io/twitter/follow/juergotter?style=social)](https://twitter.com/juergotter)

### Donation
Do you like this project? Does it help you? Has it saved you time and money?  
You're welcome - it's free... If you want to say thanks I'd appreciate a [message](mailto:xojo@jo-tools.ch) or a small [donation via PayPal](https://paypal.me/jotools).  

[![PayPal Dontation to jotools](https://img.shields.io/static/v1?style=social&logo=paypal&label=PayPal&message=jotools)](https://paypal.me/jotools)
