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
   нам необходимо создать её с помощью команды mkdir -p.
5. После проверок наличия входных и выходных директорий мы используем find и
   -exec,эта комбинация для каждого найденного файла внутри входной
   директории выполняет определённую команду.
7. Далее используется bash -c, благодаря которому выполняется блок кода для
   каждого файла. В самом блоке проверяется, есть ли файл с таким же именем в
   выходной директории. Если он есть, к имени файла прибавляется индекс(i++),
   чтобы избежать потерю файлов.
7. Чтобы скопировать все файлы в выходную директорию, используемм cp.
8. Завершая свою работу, скопировав файлы, скрипт выводит текст, в котором
   говорится, что все файлы скопированы, вместе с указанием откуда они были
   скопированы и куда.

                          Показан пример использования скрипта с одинаковыми названиями файлов:
   
Воспользуемся папкой "input_dir8", в которую помещены ещё две папки и в каждой из них есть файл с одинаковым названием: filea.txt. Вызовем наш скрипт в терминале:

<img width="300" alt="image" src="https://github.com/Nickystm/projecttz/assets/167700874/080e756f-ea2c-422f-a6f8-d94815a364fb">

Далее по завершению процесса копирования выводит: 

<img width="396" alt="image" src="https://github.com/Nickystm/projecttz/assets/167700874/00e52813-af30-4623-a2e3-689f2430a4d5">

Проверим как перекопировались файлы в выходную дирекцию:

<img width="142" alt="image" src="https://github.com/Nickystm/projecttz/assets/167700874/2d360a49-b459-4228-8d9c-33d8c592f671">

По итогу файлы перекопировались так:

<img width="295" alt="image" src="https://github.com/Nickystm/projecttz/assets/167700874/313f1fce-b065-4864-a3d4-7d46a5a91615">

                          Показан пример использования скрипта с разными названиями файлов:
                          
Воспользуемся папкой "tests", в которую помещены ещё две папки и в каждой из них есть файл с одинаковым названием: filea.txt. Вызовем наш скрипт в терминале:

<img width="300" alt="image" src="https://github.com/Nickystm/projecttz/assets/167700874/080e756f-ea2c-422f-a6f8-d94815a364fb">

Далее по завершению процесса копирования выводит: 

<img width="396" alt="image" src="https://github.com/Nickystm/projecttz/assets/167700874/00e52813-af30-4623-a2e3-689f2430a4d5">

Проверим как перекопировались файлы в выходную дирекцию:

<img width="142" alt="image" src="https://github.com/Nickystm/projecttz/assets/167700874/2d360a49-b459-4228-8d9c-33d8c592f671">

По итогу файлы перекопировались так:

<img width="295" alt="image" src="https://github.com/Nickystm/projecttz/assets/167700874/313f1fce-b065-4864-a3d4-7d46a5a91615">

