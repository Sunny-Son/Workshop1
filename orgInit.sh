#sfdx shane:org:create -f config/project-scratch-def.json -d 3 -s --wait 60 --userprefix admin -o appbuilder.demo
sfdx force:org:create -f config/project-scratch-def.json -s -d 1 -w 60
sfdx force:source:push
sfdx force:user:permset:assign -n AppBuilder
sfdx shane:user:password:set -g User -l User -p salesforce1
sfdx force:org:open
#sfdx automig:load -d data
