﻿create text file using do while loop 
$i=0

do{
    $filename = 'Kumaran' + $i + '.txt'
    New-Item -Path $filename -ItemType  File
     $i++
}while($i -lt 10)
    
    $j=0 
   
do{
    $foldernm = 'Kumaran' + $j
    New-Item -Path $foldernm -ItemType  Directory
    $j++
} while( $j -lt 10)

create  Folder using do while loop 

$j=0

do{
    $folder = 'Kumaran' + $j
 
    $k=0
    
    do{
        $folder1 = 'Kumaran' + $k
        New-Item -Path $folder\$folder1 -ItemType  Directory
        $k++
    }while($k -lt 10)
    $j++
    
}while($j -lt 10)

create  Folder  in folder  and add text file to each folder using do while loop 

 $j=0 
 
do{
    $folder = 'Kumaran' + $j

    $k=0
   
         do{
            $folder1 = 'Kumaran' + $k
            $l=0
                
                    do{
                        $folder2 = 'VK' + $l + '.txt'
                        New-Item -Path $folder\$folder1\$folder2 -ItemType  file
                        $l++
                    }while($l -lt 10)
                    
          $k++
        } while( $k -lt 10)
        
  $j++      
}while($j -lt 10)

Copy  text File  using do while 
$j=0

do{
    $folder = 'Kumaran' + $j
    $k=0
    
         do{
            $folder1 = 'Kumaran' + $k
                $l=0 
                
                    do{
                        $cpfile = 'Kumaran' + $l + '.txt'
                        Copy-Item $cpfile -Recurse -Destination $folder\$folder1 
                        $l++
                    }while( $l -lt 10  )
            $k++
    
        }while ($k -lt 10)
    $j++
}
while($j -lt 10)


Remove   text File  using do while 
 $j=0 

do{
    $folder = 'Kumaran' + $j
    $k=0
    
    do{
        $folder1 = 'Kumaran' + $k
        Remove-Item -Path $folder\$folder1\* -Recurse 
        $k++
    }while($k -lt 10)
    $j++
    
}While($j -lt 10) 
