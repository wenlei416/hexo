$cancelTimes=4+1;
# 2016-12-12~16都没写
# 2016-12-19~20合并在一起了
$tdiary=[System.IO.Directory]::GetFiles("d:\hexo\source\_posts","t???-diary.md").count+1+$cancelTimes

$newdiarycount=$tdiary
$newdiaryname="t0"+ $newdiarycount+"-diary"
hexo n diary $newdiaryname
$fullpathnewdiaryname="D:\hexo\source\_posts\"+ $newdiaryname +".md"
$lastdiary="D:\hexo\source\_posts\t0"+ ($tdiary-1)+"-diary.md"
Invoke-Item $lastdiary
Invoke-Item $fullpathnewdiaryname
      