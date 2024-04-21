                                      Техническое задание №1
Данный скрипт, написанный на bash, принимает два параметра - две директории: 
"input_dir(входная директория)" и "output_dir(выходная директория)".
В input_dir могут находится как файлы, так и вложенные директории (внутри
которых тоже могут быть как файлы, так и папки) - уровень вложенности любой.
Скрипт выполнят "обход" input_dir" и копирует все файлы из неё в output_dir -
но уже без иерархии, а просто все файлы - внутри output_dir.

Описание работы скрипта и команд, которые были применены:
1. Как и сказано выше, скрипт принимает два параметра, поэтому изначально мы
   проверяем количество аргументов, которые были переданы. Если их не два, то
   работа скрипта завершена: ошибка 1.
2. Если параметра два, то присваивается значение первого аргумента и второго:
   input_dir="$1", output_dir="$2".
3. Далее мы проверяем, есть ли входная директория,если её нет, то работа скрипта
   завершена: ошибка 1.
4. Далее мы проверяем, есть ли выходная директория, если её не существует,
   нам необходимо создать её с помощью команды mkdir -p
5. После проверок наличия входных и выходных директорий мы используем
   find, эта команда помогает найти файлы внутри входной директории и её
   поддиректорий.
6. Чтобы скопировать все файлы в выходную директорию, используемм cp.
7. Завершая свою работу, скопировав файлы, скрипт выводит текст, в котором
   говорится, что все файлы скопированы, вместе с указанием откуда они были
   скопированы и куда.
