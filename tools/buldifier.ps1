gci -r -Include @("*.bzl","BUILD","BUILD.*","*.bazel","WORKSPACE") | foreach {C:\gopath\bin\buildifier.exe $_}