function df-k {
    Get-WmiObject Win32_LogicalDisk -filter DriveType=3 | ft
    }

#function get-serversize { Param( [String] $ComputerName)
#
#Get-WMIObject Win32_LogicalDisk -filter "DriveType=3" -computer $ComputerName | 
#   Select SystemName, DeviceID, VolumeName,
#             @{Name="size (GB)";Expression={"{0:N1}" -f($_.size/1gb)}},
#                       @{Name="freespace (GB)";Expression={"{0:N1}" -f($_.freespace/1gb)}} 
#}
#
#function df-k { Param( [String] $ComputerName)
#    get-serversize $ComputerName | ft
#}
