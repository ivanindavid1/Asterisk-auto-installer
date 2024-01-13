#!/bin/bash
clear
user=`whoami`
PC=`uname -a`

if [ "$user" = root ];
 then
 echo "You PC: $PC"
 echo "Select language"
 echo ""
 echo "1-russian"
 echo "2-english"
 read lang
  if [ "$lang" = 1 ];
  then
  clear
  echo "Добрый день!"
  echo "Вы запустили установщик asterisk 20 на debian 12"
  echo "Я помогу скачать, установить зависимости и смонтировать asterisk."
  echo ""
  echo ""
  echo ""
  echo "Начать установку ? y/n"
  read otvet
   if [ "$otvet" = y ];
    then
    clear
    echo "Установка начнется через 5 секунд"
    sleep 1
    clear
    echo "Установка начнется через 4 секунд"
    sleep 1
    clear
    echo "Установка начнется через 3 секунд"
    sleep 1
    clear
    echo "Установка начнется через 2 секунд"
    sleep 1
    clear
    echo "Установка начнется через 1 секунд"
    sleep 1
    clear
    echo "Начинаю инсталяцию"
    sleep 1
    clear
    apt update
    clear
    apt upgrade
    clear
     echo "Устанавливаю wget"
     sleep 2
     apt install wget -y
     clear
     if [ "$?" = 0 ];
      then
      echo "Скачиваю архив asterisk в /home/asterisk"
      sleep 2
      mkdir /home/asterisk
      cd /home/asterisk
      wget http://downloads.asterisk.org/pub/telephony/asterisk/asterisk-20-current.tar.gz
      if [ "$?" = 0 ];
       then
       clear
       echo "Устанавливаю tar"
       sleep 2
       apt install tar -y
        if [ "$?" = 0 ];
         then
         clear
         echo "Распаковываю архив"
         sleep 2
         tar -xf /home/asterisk/asterisk-20-current.tar.gz
          if [ "$?" = 0 ];
           then
           clear
           echo "Устанавливаю зависимости"
           sleep 2
           cd /home/asterisk/asterisk-20.*
           contrib/scripts/install_prereq install
           contrib/scripts/get_mp3_source.sh
            if [ "$?" = 0 ];
             then
             clear
             echo "Конфигурация..."
             sleep 2
             ./configure
              if [ "$?" = 0 ];
               then
               clear
               echo "Открываем меню"
               sleep 2
               make menuselect
                if [ "$?" = 0 ];
                 then
                 clear
                 echo "Делаем make"
                 sleep 2
                 make
                  if [ "$?" = 0 ];
                   then
                   clear
                   echo "Устанавливаем make"
                   sleep 2
                   make install
                    if [ "$?" = 0 ];
                     then
                     clear
                     echo "Создаем конфигурационные файлы:"
                     sleep 2
                     make samples
                      if [ "$?" = 0 ];
                       then
                       clear
                       echo "Добавляем asterisk в сценарии запуска linux"
                       sleep 2
                       make config
                        if [ "$?" = 0 ];
                         then
                         clear
                         echo "Перезапускаем asterisk"
                         sleep 2
                         systemctl restart asterisk
                         sleep 10
                         clear
                         echo "Проверка статуса asterisk"
                         systemctl status asterisk
                         rm -r /home/asterisk
                        else
                         echo "Что-то пошло не так"
                         echo "error 011"
                         rm -r /home/asterisk
                        fi
                       else
                        echo "Что-то пошло не так"
                        echo "error 010"
                        rm -r /home/asterisk
                       fi
                    else
                     echo "Что-то пошло не так"
                     echo "error 009"
                     rm -r /home/asterisk
                    fi
                  else
                   echo "Что-то пошло не так"
                   echo "error 008"
                   rm -r /home/asterisk
                  fi
                else
                 echo "Что-то пошло не так"
                 echo "error 007"
                 rm -r /home/asterisk
                fi
              else
               echo "Что-то пошло не так"
               echo "error 006"
               rm -r /home/asterisk
              fi
            else
             echo "Что-то пошло не так"
             echo "error 005"
             rm -r /home/asterisk
            fi
          else
           echo "Что-то пошло не так"
           echo "error 004"
           rm -r /home/asterisk
          fi
        else
         echo "Что-то пошло не так"
         echo "error 003"
         rm -r /home/asterisk
        fi
      else
       echo "Что-то пошло не так"
       echo "error 002"
       rm -r /home/asterisk
      fi
     else
      echo "Что-то пошло не так"
      echo "error 001"
      rm -r /home/asterisk
     fi
   fi
   if [ "$otvet" = n ];
    then
    clear
    echo "До скорой встречи"
   fi
 fi
 if [ "$lang" = 2 ];
  then
  clear
  echo "Good afternoon!"
  echo "You have run the asterisk 20 installer on debian 12"
  echo "I will help you download, install dependencies and mount asterisk."
  echo "Translated using Google translator"
  echo ""
  echo ""
  echo ""
  echo "Start installation ? y/n"
  read otvet
   if [ "$otvet" = y ];
    then
    clear
    echo "Installation will start in 5 seconds"
    sleep 1
    clear
    echo "Installation will start in 4 seconds"
    sleep 1
    clear
    echo "Installation will start in 3 seconds"
    sleep 1
    clear
    echo "Installation will start in 2 seconds"
    sleep 1
    clear
    echo "Installation will start in 1 seconds"
    sleep 1
    clear
    echo "I'm starting the installation"
    sleep 1
    clear
    apt update
    clear
    apt upgrade
    clear
     echo "Installing wget"
     sleep 2
     apt install wget -y
     clear
     if [ "$?" = 0 ];
      then
      echo "downloading the archive asterisk in /home/asterisk"
      sleep 2
      mkdir /home/asterisk
      cd /home/asterisk
      wget http://downloads.asterisk.org/pub/telephony/asterisk/asterisk-20-current.tar.gz
      if [ "$?" = 0 ];
       then
       clear
       echo "Installing tar"
       sleep 2
       apt install tar -y
        if [ "$?" = 0 ];
         then
         clear
         echo "Unpacking the archive"
         sleep 2
         tar -xf /home/asterisk/asterisk-20-current.tar.gz
          if [ "$?" = 0 ];
           then
           clear
           echo "Installing dependencies"
           sleep 2
           cd /home/asterisk/asterisk-20.*
           contrib/scripts/install_prereq install
           contrib/scripts/get_mp3_source.sh
            if [ "$?" = 0 ];
             then
             clear
             echo "Configuration..."
             sleep 2
             ./configure
              if [ "$?" = 0 ];
               then
               clear
               echo "Open the menu"
               sleep 2
               make menuselect
                if [ "$?" = 0 ];
                 then
                 clear
                 echo "Start make"
                 sleep 2
                 make
                  if [ "$?" = 0 ];
                   then
                   clear
                   echo "Install make"
                   sleep 2
                   make install
                    if [ "$?" = 0 ];
                     then
                     clear
                     echo "Creating configuration files:"
                     sleep 2
                     make samples
                      if [ "$?" = 0 ];
                       then
                       clear
                       echo "Adding asterisk to linux startup scripts"
                       sleep 2
                       make config
                        if [ "$?" = 0 ];
                         then
                         clear
                         echo "Restart asterisk"
                         sleep 2
                         systemctl restart asterisk
                         sleep 10
                         clear
                         echo "status check asterisk"
                         systemctl status asterisk
                         rm -r /home/asterisk
                        else
                         echo "Something went wrong"
                         echo "error 011"
                         rm -r /home/asterisk
                        fi
                       else
                        echo "Something went wrong"
                        echo "error 010"
                        rm -r /home/asterisk
                       fi
                    else
                     echo "Something went wrong"
                     echo "error 009"
                     rm -r /home/asterisk
                    fi
                  else
                   echo "Something went wrong"
                   echo "error 008"
                   rm -r /home/asterisk
                  fi
                else
                 echo "Something went wrong"
                 echo "error 007"
                 rm -r /home/asterisk
                fi
              else
               echo "Something went wrong"
               echo "error 006"
               rm -r /home/asterisk
              fi
            else
             echo "Something went wrong"
             echo "error 005"
             rm -r /home/asterisk
            fi
          else
           clear
           echo "Something went wrong"
           echo "error 004"
           rm -r /home/asterisk
          fi
        else
         clear
         echo "Something went wrong"
         echo "error 003"
         rm -r /home/asterisk
        fi
      else
       clear
       echo "Something went wrong"
       echo "error 002"
       rm -r /home/asterisk
      fi
     else
      clear
      echo "Something went wrong"
      echo "error 001"
      rm -r /home/asterisk
     fi
   fi
   if [ "$otvet" = n ];
    then
    clear
    echo "See you soon"
   fi
 fi
else
clear
echo "i am need root"
echo "pls run with sudo (no root profile)"
fi
