# Windows Process Plugin
This is a prototype plugin that monitors named windows processes in lieu of an official Boundary Plugin (coming soon)

**Supported platforms**  
Windows platform with Powershell installed - Tested on win2008R2  
This plugin uses the powershell get-process cmdlet to search for a given process name and provides 3 metrics:  

**process count** - returns  the count of processes found matching the name. In the event that more than one is found the process using the greatest CPU is used for the next two metrics.

**process memory** - Amount of Virtual Memory used by the process (in KB)

**process cpu** - Amount of CPU used by the process

For more information email lee@boundary.com
