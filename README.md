# Apple USB Ethernet Adapter - Windows Driver

![Apple USB Ethernet Adpater](Apple%20USB%20Ethernet%20Adapter%20MC704.jpg "Apple USB Ethernet Adpater")


## Apple USB Ethernet Adpater Tech Specs
Easily connect your computer to an Ethernet network with the Apple USB Ethernet Adapter. Small and light, it connects to the USB 2.0 port of your Computer and provides an RJ-45 connector that supports 10/100BASE-T performance. 

* USB 2.0, USB 1.0 and USB 1.1 compliant
* Bus Powered
* Support both Full-duplex and half-duplex IEEE 802.3 10Base-T and 100BASE-Tx Ethernet
* Supports Suspend mode and Remote Wakeup via Link-up, Magic packet
* External PHY loop-back diagnostic capability
* Based on ASIX AX88772A USB to 10/100 Fast Ethernet/HomePNA controller
* Embedded 20KB SRAM for RX packet buffering and 8KB SRAM for TX packet buffering
* Operating temperature range: 0°C to 70°C
* Built-in 4.6-inch USB cable

## Usage

* Download AX88772A driver corresponding to your Windows version from [ASIX official website](http://www.asix.com.tw/download.php?sub=driverdetail&PItemID=97)
* Extract driver files from downloaded package
* Place patch.bat in the same folder as Ax88772.inf and run it
* Install patched driver. Note: You may need to [enable 3rd-party driver on Windows 8](http://www.nextofwindows.com/how-to-install-an-un-signed-3rd-party-driver-in-windows-8/)

**For your convenience, a patched version for Windows 7 & 8 64bit is included.**

## Thanks

**[Thia Repo is forked from snullp/AppleEthernet.](https://github.com/snullp/AppleEthernet)**
