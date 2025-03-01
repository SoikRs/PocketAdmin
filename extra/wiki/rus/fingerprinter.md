Механизм работы сканера ОС основан на том факте, что разные USB драйверы  
реагируют по-разному на подключение PocketAdmin. Каждое устройство при  
подключении получает от компьютера последовательность запросов настройки.  
  
Например, компьютер с Windows может отправить это:  
* GET DEVICE DESCRIPTOR  
* SET ADDRESS  
* GET DEVICE DESCRIPTOR  
* GET CONFIGURATION DESCRIPTOR  
* GET STRING DESCRIPTOR  
* GET DEVICE QUALIFIER  
* GET DEVICE DESCRIPTOR  
* GET CONFIGURATION DESCRIPTOR  
* GET CONFIGURATION DESCRIPTOR  
* GET STRING DESCRIPTOR  
  
В то время как компьютер с Linux может отправить:  
* GET DEVICE DESCRIPTOR  
* SET ADDRESS  
* GET DEVICE DESCRIPTOR  
* GET DEVICE QUALIFIER  
* GET DEVICE QUALIFIER  
* GET DEVICE QUALIFIER  
* GET CONFIGURATION DESCRIPTOR  
* GET CONFIGURATION DESCRIPTOR  
* GET STRING DESCRIPTOR  
* GET STRING DESCRIPTOR  
  
Эти последовательности запросов не меняются от раза к разу, когда вы  
вставляете устройство, а также не различаются от одного компьютера  
к другому, до тех пор пока на них установлена одинаковая ОС.  
Этот факт позволяет вам создать базу данных и хранить ее на устройстве.  
При подключении устройство сможет запомнить входящую последовательность  
запросов и сравнить её с файлами уже сохраненными на устройстве, чтобы  
определить какой USB драйвер используется компьютером и так определить ОС.  
  
Эти файлы отпечатков ОС (fingerprint) состоят из данных полученных в 10  
самых первых запросах, отправленных компьютером. Конкретно это поля  
bmRequestType, bRequest и wValue, которые дают в общей сложности 4  
сохранённых байта на каждый запрос. Порядок байтов в файле такой же,  
как и в самом USB запросе. Только байты 0, 1 и 3 используются для  
сравнения каждого 4-байтового элемента в массиве.  
  
---
  
Если в config.txt присутствует команда предварительной конфигурации "USE_FINGERPRINTER",  
устройство игнорирует payload.txt и вместо этого выбирает файл рабочего скрипта на основе  
обнаруженной ОС. Эти предназнченные для ОС скрипты должны быть размещены в каталоге  
/fgscript/ и их имена должны быть в формате 8.3 с .txt расширением. Разрешенные символы  
в названии - это заглавные буквы A-Z, маленькие буквы a-z, цифры 0-9, знаки подчеркивания  
и точки. Имена этих файлов могут быть любыми, до тех пор пока вышеуказанные ограничения  
соблюдены. Например такими: linux.txt, windows.txt, mac.txt, someOS.txt, HP_bios.txt;  
  
Как только вы вставите устройство, оно запомнит полученную от ПК последовательность  
команд настройки (отпечаток ОС) и сохранит его в файл под названием CURRENT.FGP  
внутри каталога /fingerdb/; Если файл CURRENT.FGP уже существует и не соответствует  
только что собранному отпечатку ОС, старый CURRENT.FGP будет перемещен в PREVIOUS.FGP  
перезаписывая PREVIOUS.FGP если он уже есть. То есть, устройство будет хранить 2 самых  
последних отпечатка ОС, из 2 разных компьютеров в которые было подключено устройство.  
Затем устройство будет просматривать все подкаталоги внутри /fingerdb/ и если найдёт  
соответствующий файл с отпечатком ОС в одном из этих каталогов, он будет использовать  
имя каталога как имя ОС. Если соответствующего файла отпечатков так и не нашлось, то  
будет запущен скрипт под названием other.txt (адрес /fgscript/other.txt)  
  
Итак, если вы включили сканер ОС и подключили устройство к компьютеру, то всегда  
будет создаваться новый файл /fingerdb/CURRENT.FGP с отпечатком ОС который был  
собран на этой машине. Если у вас не было отпечатков ОС в базе данных, устройство  
попытается запустить рабочий скрипт /fgscript/other.txt; теперь вы можете добавить  
этот новый файл CURRENT.FGP в свою базу данных, перенеся файл в каталог конкретной  
ОС. Допустим, на компьютере был установлен Linux. В этом случае вы можете переместить  
файл CURRENT.FGP в каталог /fingerdb/linux/ и, возможно, переименовать его для большей  
ясности, например в lin0.fgp; Имена файлов отпечатков ОС должны быть в том же формате  
8.3, с расширением .FGP; С этого момента устройство должно находить соответствующий  
файл отпечатков в /fingerdb/linux/lin0.fgp, и будет использовать название каталога  
(linux) чтобы запустить рабочий скрипт по адресу /fgscript/linux.txt;  
  
Имейте в виду, что отпечатки ОС могут быть разными для разных версий  
какой-то конкретной ОС и могут измениться со временем. Например, если  
у вашего компьютера с Windows 10 было обновление, которое изменило его  
драйвер USB, отпечаток ОС скорее всего тоже изменится. Поэтому новый  
.fgp файл нужно будет добавить в базу данных. По этой же причине, вам  
могут потребоваться несколько файлов отпечатков для одной той же ОС.  
  
Отпечаток ОС собирается только один раз, когда устройство включается.  
Другие события, такие как перезагрузка компьютера или любой другой вид  
сброса USB устройства, который не приводит к отключению питания, не  
приведут к новому сбору отпечатка ОС или новому запуску рабочего скрипта.  
Перезапуск устройства в режим MSD-only через нажатия CapsLock тоже не  
приводит к новому сбору отпечатка ОС. Это всё значит, что если вы  
вставите устройство до того, как компьютер будет включен, собранный  
отпечаток ОС будет принадлежать BIOS, а не ОС, так как именно BIOS  
раньше всех нашёл и настроил устройство.  
  
PREVIOUS.FGP бывает полезен в ситуациях когда нет удобной возможности  
скопировать CURRENT.FGP в базу отпечатков ОС на той же машине где он был  
собран, например если эта машина по какой-то причине заблокирована.  
В такой ситуации вы сначала собираете отпечаток ОС на заблокированном  
компьютере, это перезаписывает CURRENT.FGP; Затем вы подключаете устройство  
к своему компьютеру. Поскольку отпечаток ОС, собранный на вашей машине,  
не совпадает с отпечатком ОС заблокированной машины, старый CURRENT.FGP  
будет перемещен в PREVIOUS.FGP, а CURRENT.FGP будет перезаписан с самым  
последним отпечатком. Теперь PREVIOUS.FGP можно будет перенести в  
правильный каталог и дать ему подходящее имя. Если вы подключите  
PocketAdmin к своей машине ещё несколько раз, данные в CURRENT.FGP будут  
соответствовать собранному отпечатку ОС, поэтому PREVIOUS.FGP будет  
оставаться нетронутым (пока вы снова не подключите устройство к новой машине)  
  
В этом репозитории для примера есть образец базы данных отпечатков ОС:  
[/extra/payloads/FingerprinterTest/fingerdb/](https://github.com/krakrukra/PocketAdmin/tree/master/extra/payloads/FingerprinterTest/fingerdb)  
При необходимости эту базу несложно расширить самостоятельно.  
  