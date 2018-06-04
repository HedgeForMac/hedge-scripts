# hedge-scripts
Repository of scripts for extending Hedge on the Mac.

Use at your own discretion. Don’t be foolish, test before using a script in production. Scripting is a very powerful feature, it can be potentially destructive. Do not use it unless you really know what you can and can't do with scripts. The Sync Factory, creator of Hedge, does not assume responsibility for problems with or due to these scripts. The Sync Factory reserves the right not to offer support for these scripts.

Hedge defines 5 events:

* DiskAdded
* DiskBusy
* FileCopyCompleted
* DiskIdle
* DiskRemoved

Each event has its own set of unique parameters that you can use.

### Folders and Files in AppleScript
We're used to seeing paths delimited like URLs, with /. In Applescript though, paths are delimited with the colon (:) which is called POSIX. Hedge outputs URLs, so you'll need to convert to POSIX. Luckily, that's easy to do:

`property theFolder : "{destinationPath}"

tell application "Finder"
   open (theFolder as POSIX file)
end tell`

If you want to refer to your home folder, you can't just use ~. Instead, you need to insert the home folder path like this:

`tell application "Finder"
   open (POSIX path of (path to home folder)) as POSIX path
end tell`

### Good-to-knows
* Timestamps are shown as YYYYMMDDHHMMSS
* Duration is in seconds, with six digit precision
* Size is in bytes. To convert bytes to GBs divide by 1024^3. 

### Security
We added an extra layer of security: paths are event-specific, and include the event name. This way you can’t accidentally use your “Erase Source”-script to erase a Destination.

## DiskAdded
Fires when a new disk is mounted. Pretty self-explanatory.

`DiskAdded_title	Disk A
DiskAdded_rootFilePath	 /Volumes/Disk A
DiskAdded_diskSize	249779191801
DiskAdded_availableDiskSpace 61058125824
DiskAdded_protocolName	USB
DiskAdded_mountedAt	20161125113059`
 
Other bus *protocolNames* include Firewire, Secure Digital, iSCSI, SAS, afpfs, nfs, PCI, SATA and more. Disks connected through a USB hub all show up as USB drives, so you can't discern between true USB disks or Compact Flash media. A way around this is to check for diskSize.

## DiskBusy
Fires when a transfer starts. A disk is either being imported, or being imported to. When Disk A is imported to Disk B and Disk C, three DiskBusy events fire.

`DiskBusy_diskType	Source or Destination
DiskBusy_rootFilePath                      	/Volumes/Disk A
DiskBusy_title	Disk A`
 
## FileCopyCompleted
Fires when a single transfer is done, e.g. Disk A has been copied to Disk B. The transfer to Disk C might still be running!

`FileCopyCompleted_sourcePath	/Volumes/Disk A
FileCopyCompleted_destinationPath   	/Users/Hedge/Documents/Footage/Project-001
FileCopyCompleted_bytesCopied	16582836224
FileCopyCompleted_duration	693.357678
FileCopyCompleted_startedAt	20160129144109
FileCopyCompleted_verified	YES or NO
FileCopyCompleted_state	Success`
 
There are four possible states when a transfer finishes:

* Success: all went well
* Failed: a file transfer failed
* Warnings: verification of a copied file failed
* Cancelled: the transfer was cancelled by the user

## DiskIdle
Fires when a disk is done with whatever job it was doing.

`DiskIdle_title	Disk A
DiskIdle_diskType	Source or Destination
DiskIdle_hasFailedTransfers                	YES or NO
DiskIdle_rootFilePath	/Volumes/Disk A`
 
## DiskRemoved
Fires when a disk is removed from the system. Maybe it was ejected in Hedge, or in Finder, or simply removed manually.

`DiskRemoved_title	Disk A
DiskRemoved_rootFilePath	/Volumes/Disk A
DiskRemoved_unmountedAt               	20160129144109`

Questions? You can always reach us at hello@hedge.video or @hedgeforvideo on Twitter.





