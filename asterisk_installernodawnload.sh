#!/bin/bash
clear
user=`whoami`
PC=`uname -a`
download=`test`

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
  echo "Вы запустили установщик asterisk на debian 12"
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
     echo "Устанавливаю wget"
     sleep 2
     apt install wget -y
     clear
     if [ "$?" = 0 ];
      then
      echo "скачиваю архив asterisk в /home/asterisk"
      sleep 2
      mkdir /home/asterisk
      cd /home/asterisk
      wget http://downloads.asterisk.org/pub123/telephony/asterisk/asterisk-20-current.tar.gz
      if [ "$download" = test ];
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
            if [ "$?" = 0 ];
             then
             clear
             echo "Конфигурация..."
             sleep 2
             ./configure
              if [ "$?" = 0 ];
               then
               echo "check"
              else
               echo "что-то пошло не так"
               echo "error 005"
               rm -r /home/asterisk
              fi
            else
             echo "что-то пошло не так"
             echo "error 005"
             rm -r /home/asterisk
            fi
          else
           clear
           echo "что-то пошло не так"
           echo "error 004"
           rm -r /home/asterisk
          fi
        else
         clear
         echo "что-то пошло не так"
         echo "error 003"
         rm -r /home/asterisk
        fi
      else
       clear
       echo "что-то пошло не так"
       echo "error 002"
       rm -r /home/asterisk
      fi
     else
      clear
      echo "что-то пошло не так"
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
  echo "hi"
 fi
else
clear
echo "i am need root"
echo "pls run with sudo (no root profile)"
fi
