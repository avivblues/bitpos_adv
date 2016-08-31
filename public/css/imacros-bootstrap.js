// iMacros Bootstrap - Write your macros with JavaScript.
// Be careful, you need to rename and set the extension of your macro to ".js".


// 1. Variables Initialization.


var variable1, variable2, variable3;

macro = "";

variable1 = "";

variable2 = "";

variable3 = "";


// 2. Built-in Variables & Macro Initialization.


macro += "CODE:" + "\n";

macro += "SET !TIMEOUT_STEP 2" + "\n";

macro += "SET !TIMEOUT_TAG 2" + "\n";

macro += "SET !TIMEOUT_PAGE 45" + "\n";

macro += "SET !ERRORIGNORE YES" + "\n";


// 3. Clear Cookies, Cache and Set a Proxy


macro += "CLEAR" + "\n";

macro += "PROXY ADDRESS=" + proxy + "\n";


// 4. Action 1.


macro += "TAB T=1" + "\n";

macro += "TAB CLOSEALLOTHERS" + "\n";

macro += "WAIT SECONDS=5" + "\n";

macro += "URL GOTO=https://gentlenode.com/" + "\n";


// 5. Action 2.


macro += "URL GOTO=http://journal.gentlenode.com/" + "\n";

macro += "WAIT SECONDS=5" + "\n";


// 7. Clear Browser.


macro += "WAIT SECONDS=1" + "\n";

macro += "CLEAR" + "\n";


// 8. Run the Macro.


iimDisplay("iMacro is now running.");

iimPlay(macro);
