$tdiary=$tdiary=[System.IO.Directory]::GetFiles("d:\hexo\source\_posts","t???-diary.md").count+1
$newdiaryname="t0"+ $tdiary+"-diary"
hexo n diary $newdiaryname
$fullpathnewdiaryname="D:\hexo\source\_posts\"+ $newdiaryname +".md"
$lastdiary="D:\hexo\source\_posts\t0"+ ($tdiary-1)+"-diary.md"
Invoke-Item $lastdiary
Invoke-Item $fullpathnewdiaryname
      