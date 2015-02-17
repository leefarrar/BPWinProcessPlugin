param($processName)
while($true){
	$process =get-process $processName | select CPU, VM, ID | Sort-Object VM
	$procCpu=0
	$procMem=0
	if ([bool]$process) { 
		if($process -isnot [system.array]){
			$procCpu= $process | select -expand CPU
			$procMem= $process | select -expand VM
		}else{
			$procCpu= $process[0] | select -expand CPU
			$procMem= $process[0] | select -expand VM
		}
		Write-Host "LFPROCCOUNT" $process.Count $processName
		Write-Host "LFPROCMEM" $procMem $processName
		Write-Host "LFPROCCPU" $procCpu $processName
		
	}else{
			Write-Host "LFPROCCOUNT" 0 $processName
	}
	start-sleep -seconds 1
}