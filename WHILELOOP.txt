$i=0
while($i -lt 10)
{
    $filename = 'Kumaran' + $i + '.txt'
    New-Item -Path $filename -ItemType  File
     $i++
}
    
    $j=0 
    while( $j -lt 10)
{
    $foldernm = 'Kumaran' + $j
    New-Item -Path $foldernm -ItemType  Directory
    $j++
}

$j=0
while($j -lt 10)
{
    $folder = 'Kumaran' + $j
 
    $k=0
    while($k -lt 10)
    {
        $folder1 = 'Kumaran' + $k
        New-Item -Path $folder\$folder1 -ItemType  Directory
        $k++
    }
    $j++
    
}

 $j=0 
 while($j -lt 10)
{
    $folder = 'Kumaran' + $j

    $k=0
    while( $k -lt 10)
         {
            $folder1 = 'Kumaran' + $k
            $l=0
                while($l -lt 10)
                    {
                        $folder2 = 'VK' + $l + '.txt'
                        New-Item -Path $folder\$folder1\$folder2 -ItemType  file
                        $l++
                    }
                    
          $k++
        }
        
  $j++      
}


$j=0
while($j -lt 10)
{
    $folder = 'Kumaran' + $j
    $k=0
    while ($k -lt 10)
         {
            $folder1 = 'Kumaran' + $k
                $l=0 
                while( $l -lt 10  )
                    {
                        $cpfile = 'Kumaran' + $l + '.txt'
                        Copy-Item $cpfile -Recurse -Destination $folder\$folder1 
                        $l++
                    }
            $k++
    
        }
    $j++
}

$j=0 
While($j -lt 10)
{
    $folder = 'Kumaran' + $j
    $k=0
    while($k -lt 10)
    {
        $folder1 = 'Kumaran' + $k
        Remove-Item -Path $folder\$folder1\* -Recurse 
        $k++
    }
    $j++
    
}