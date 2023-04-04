# Some simple common examples of Qt

-   [Simplified Chinese](README.md)
-   [English](README.en.md)

## 1.[Battery](Battery/)--Battery;

<table>
    <tr>
        <td ><div align=center><img src="Battery/picture/AlarmBattery.png"></div></td >
        <td ><div align=center><img src="Battery/picture/HealthyBattery.png"></div></td>
    </tr>
</table>

## 2.[BubbleWindow](BubbleWindow/)——A bubble dialog box, which can also be used as a tooltip (ToolTip);

<div align=center><img src="BubbleWindow/picture/Bubble.png"></div>

## 3.[Chart](Chart/)——Visual chart drawing, reference[Use QChart to display real-time dynamic curves](https://qtdebug.com/qtbook-paint-realtime-curve-qchart/ "qtdebug/公孙二狗")Examples related to QChart;

<div align=center><img src="Chart/picture/Chart_1.png">图一二是动态曲线</div>  
<div align=center><img src="Chart/picture/Chart_2.png">图一二是动态曲线， 图二坐标轴也会动态变化</div>

## 4.[CheckBoxStandardItem](/CheckBoxStandardItem)——StandardItem can be checked;

<div align=center><img src="CheckBoxStandardItem/picture/checkBoxStandardItem.png"></div>

## 5.[Clock](/Clock)--clock;

<div align=center><img src="Clock/picture/Clock.png"></div>

## 6.[DashBoard](/DashBoard)--dash board;

<div align=center><img src="DashBoard/picture/DashBoard.png"></div>

## 7.[FlowLayout](FlowLayout/)——Flow layout, from QT sample Flow Layout Example;

<div align=center><img src="FlowLayout/picture/FlowLayout.png"></div>

## 8.[DragDrop](DragDrop/)——Simple control drag and drop, refer to the QT example Drag and Drop Puzzle Example;

## 9.[HttpClient](/HttpClient)- http client;

## 10.[GridViewModel](/GridViewModel)——Adaptive palace map based on QListView;

<div align=center><img src="GridViewModel/picture/GridView.png"></div>

## 11.[LogAsynchronous](LogAsynchronous/)——Asynchronous log, open up a thread to write logs to the file, and separate the front and back ends.

1.  Log file name: application name (appname). Time (time, accurate to seconds). Host hostname. Process ID (Tid).log (.count). If a single log written in a day is about 1G, the suffix will be automatically added (.1,.2.3..., and so on) Create a new log file to write, and rollFile will still be rolled at 0:00 every day;
    1.  Normal file name: LogAsynchronous.2020-04-26-20-29-03.Youth.11828.log;
    2.  The log written on that day is close to 1G, and the new file name is: LogAsynchronous.2020-04-26-20-38-55.Youth.11828.log.1;
2.  Log format: time (time, accurate to milliseconds). Thread ID (Pid). Log level (debug). Print information (msg). File (File). Line number (Line).
    1.  For example: 2020-04-26 20:38:55.818 2052[Debug]123456789qwertyuioplkjhgfdsa 8412789-File:(..\\logAsynchronous\\main.cpp) Line:(19)；

## 12. [MulClient](MulClient/)——Multi-threaded client, one thread per client (how can bypass system restrictions and simulate millions of clients);

## 13.[MulServer](MulServer/)——Multi-threaded server, one thread and one client processing (handling TCP communication with high real-time performance);

## 14.[Navigation Progress Bar](/NavigationProgressBar)- navigation progress bar;

<div align=center><img src="NavigationProgressBar/picture/NavigationProgressBar.png"></div>

## 15.[PasswordLineEdit](PasswordLineEdit/)- Password input box;

<table>
    <tr>
        <td ><div align=center><img src="PasswordLineEdit/picture/HiddenPassword.png"></div></td >
        <td ><div align=center><img src="PasswordLineEdit/picture/ShowPassword.png"></div></td>
    </tr>
</table>

## 16.[ProgressArc](ProgressArc/)- arc progress bar;

<div align=center><img src="ProgressArc/picture/ProgressArc.png"></div>

## 17.[ProgressBar](ProgressBar)——QProgressBar rounded corner alternative;

<div align=center><img src="ProgressBar/picture/ProgressBar.png"></div>

## 18. [ReactorServer](ReactorServer/)——Multi-thread server, Reactor mode (Echo);

## 19.[SimpleUdp](SimpleUdp/)——Simple UDP example, broadcast and receive;

Firewall whitelist.

## 20.[SlipButton](SlipButton/)- slide button;

Another: simpler implementation:[Animated CheckBox](http://qtdebug.com/qtbook-animated-checkbox/)；

<table>
      <tr>
          <td ><div align=center><img src="SlipButton/picture/SlipButton_check.png"></div></td >
          <td ><div align=center><img src="SlipButton/picture/SlipButton_checked.png"></div></td>
      </tr>
  </table>

## 21.[SqlTabview](SqlTabview/)——SQLite database call, model method;

## 22.[TableViewModel](TableViewModel/)- Table View, DeleGate(Button and ProgressBar) (MVC);

The old style (lazy) is applied, and you can adjust it yourself;

<div align=center><img src="TableViewModel/picture/TabViewModelDelegate.png"></div>

## 23.[Thread](Thread/)——Multi-thread example, 6 ways of writing;

## 24.[TreeViewModel](TreeViewModel/)——Tree view (MVC), QtCreator source code;

<div align=center><img src="TreeViewModel/picture/TreeView.png"></div>  
<div align=center><img src="TreeViewModel/picture/ListView.png"></div>

## 25.[Validator](Validator/)——Enhanced IntValidator (QIntValidator) and DoubleValidator (QDoubleValidator)

## 26. [Scripts](Scripts/)--package script

1.  [macos](Scripts/macos/)—— macos general compilation and printing dmg package script (`python`/`dmgbuild`）；
2.  [windows](Scripts/windows)——Windows general compilation and packaging installation script (Innosetup);

    1.  `Innosetup``signtool`

            sha256="C:\\Program Files (x86)\\Windows Kits\\10\\bin\\10.0.18362.0\\x86\\signtool.exe" sign /f C:\\work\\certificate\\xxxxx.pfx /p password /fd SHA256 /tr http://timestamp.digicert.com/scripts/timestamp.dll /td SHA256 $f
