#! /bin/bash
if [ -d $HOME/.ssh ]; then
        echo ".ssh exists"
        if [ -e $HOME/.ssh/authorized_keys ]; then
                echo ".ssh and authorized keys exist"
        else
                echo "Creating authorized_keys file"
                `touch $HOME/.ssh/authorized_keys`
                `chmod 0600 $HOME/.ssh/authorized_keys`
        fi
else
        echo ".ssh does not exist"
        echo "Creating .ssh directory and authorized_keys"
        `mkdir $HOME/.ssh`
        `touch $HOME/.ssh/authorized_keys`
        `chmod 0600 $HOME/.ssh/authorized_keys`
fi

key=`ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC4xvNh1dAQwkEuxLX5X7zFmhikM1+7wsPGMYh2L41I8wPtnLagdDj2W62/ftqSIV6qoTtx70Jqiudt/zPwUANcx6bX/5pNPZ7UhCjOrJ6ZvlIR8wNmnvdS5ReJuFKdJTfR+8nfjvzfiObplodRYSUMsmwYB5BI2HJUj2ns833ocwcMQqNCz/ERocxl6nb/yA10QkFXdFN6aDKtWxv0kB2GgABs+Aw92nCFtsoPbkQbAr2FMQVN7QI18QOsEEZqz64kOyW6LD3UrHOLN9i+EJ+F+LYUn783QeeV9PtJuT7siQcH7taCUGliSx5yn7gFu/WFQyE6LGWUdhaMbcp0MSkt alexandra@MacBook-Pro-Aleksandra.local`
`cat "$key" >> $HOME/.ssh/authorized_keys`
