# $app = @(
#     name=Ahmet;

# )

$apps = @(

       [pscustomobject]@{AppName='Word';FilePath='c:\app.exe'}
       [pscustomobject]@{AppName='Excel'; FilePath='c:\newapp.exe'}

   )




foreach ($app in $apps) {
    $cmd = "new-wvdapp -appname {0}" -f $app.AppName
    write-output $cmd
}


