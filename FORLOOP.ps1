for($i=0 ; $i -lt 10 ; $i++)
{
    $filename = 'Kumaran' + $i + '.txt'
    New-Item -Path $filename -ItemType  File
}

    for($j=0 ; $j -lt 10 ; $j++)
{
    $foldernm = 'Kumaran' + $j
        New-Item -Path $foldernm -ItemType  Directory
        }

for($j=0 ; $j -lt 10 ; $j++)
{
    $folder = 'Kumaran' + $j
 
    for($k=0 ; $k -lt 10 ; $k++)
    {
        $folder1 = 'Kumaran' + $k
        New-Item -Path $folder\$folder1 -ItemType  Directory
    }
    
}

 for($j=0 ; $j -lt 10 ; $j++)
{
    $folder = 'Kumaran' + $j
 
    for($k=0 ; $k -lt 10 ; $k++)
         {
            $folder1 = 'Kumaran' + $k
                for($l=0 ; $l -lt 10 ; $l++)
                    {
                        $folder2 = 'VK' + $l + '.txt'
                        New-Item -Path $folder\$folder1\$folder2 -ItemType  file
                    }
    
        }
}

for($j=0 ; $j -lt 10 ; $j++)
{
    $folder = 'Kumaran' + $j
 
    for($k=0 ; $k -lt 10 ; $k++)
         {
            $folder1 = 'Kumaran' + $k
                for($l=0 ; $l -lt 10 ; $l++)
                    {
                        $cpfile = 'Kumaran' + $l + '.txt'
                        Copy-Item $cpfile -Recurse -Destination $folder\$folder1 
                    }
    
        }
}

for($j=0 ; $j -lt 10 ; $j++)
{
    $folder = 'Kumaran' + $j
 
    for($k=0 ; $k -lt 10 ; $k++)
    {
        $folder1 = 'Kumaran' + $k
        Remove-Item -Path $folder\$folder1\* -Recurse 
    }
    
}
