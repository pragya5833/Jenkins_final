job('Ansible_DSL'){
    description('check ansible')
    parameters{
        stringParam('command',('ls -l (default)'))
    }
    scm{
        git('https://github.com/pragya5833/Jenkins_final.git','master')
            }
    steps{
        wrappers{
            colorizeOutput(colorMap='xterm')
        }
            ansiblePlaybook('/tmp/play.yml'){
                inventoryPath('/tmp/hosts')
                colorizedOutput(true)
                extraVars{
                    extraVar('user_give','${command}',false)
                }
            }
        }

    publishers{
        mailer('shavinder.g@gmail.com',true,true)
    }
}