job('Ansible_DSL'){
    description('check ansible')
    params{
        stringParam('command',('ls -l (default)'))
    }
    scm{
        git('https://github.com/pragya5833/Jenkins_final.git','master')
            }
    steps{
        wrappers{
            colorizeOutput(colormap,'xterm')
            ansiblePlaybook('/tmp/play.yml'){
                inventory('/tmp/hosts')
                colorizedOutput(true)
                extraVars{
                    extraVar('user_give','${command}',false)
                }
            }
        }
    }
    publishers{
        mailer('shavinder.g@gmail.com',true,true)
    }
}