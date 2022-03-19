# photo.messTEPL

Given a directory as input and the file extensions in cod.sh, create n folders named after the date the files in the pwd were modified(using the file's metadata) and move them into the directory's new folders.

### Usage
1. edit the F_EXTENSOES variable insided the code to select the file extensions you want to organize
2. put the code inside the same directory in which the files are in
3. run `$ bash cod.sh`
4.enter the destination `/div/` to move the files, if it doesn't exist it'll be created.

### Example
```
ofzboripenguin@THEMACHINE:/.../importantPhotos$ bash cod.sh
Estamos em /.../important Photos, diga o diretorio raiz destino:
~/PastaCustom/
Fotos serao movidas para /PastaCustom.
Fotos encontradas no diretorio atual: 
Procurando por *.png 
/20676848_1924346164505718_1413962821_0.png, modificada em: 2020-07-28
/REDACAO.png, modificada em: 2020-12-19
Procurando por *.jpg
12648102447685838771963_124177328_n.jpg, modificada em: 2020-07-28
20191005_165545.jpg, modificada em: 2020-06-21
20191116_152909.jpg, modificada em: 2020-06-21
20200714_234443.jpg, modificada em: 2020-07-29
20200714_234520.jpg, modificada em: 2020-07-29
20200717_201347.jpg, modificada em: 2020-07-29
20200717_201403.jpg, modificada em: 2020-07-29
20597586_1748794098751182_534751291_0.jpg, modificada em: 2020-07-28
20616248_1748794092084516_1541416224_0.jpg, modificada em: 2020-07-28 
22664399_1780009952296263_872224203_0.jpg, modificada em: 2020-07-28
orig.jpg, modificada em: 2020-04-15
Procurando por *.jpeg 
Sem fotos do tipo *.jpeg encontradas
```
Result
```
ofzboripenguin@THEMACHINE:~/PastaCustom$ ls $(ls) 
2020-04-15:
  orig.jpg
2020-06-21:
  20191005_165545.jpg 
  20191116_152989.jpg
2020-07-28: 
  12648102_447685838771963_124177328_n.jpg 20616248_1748794092084516_1541416224_o.jpg 22664399_1780689952296263_872224203_0.jpg
  20597586_1748794898751182_534751291_o.jpg 20676848_1924346164505718_1413962821_0.png
2020-07-29:
  20200714_234443.jpg 20208714_234528.jpg
  20260717_201347.jpg 28208717_201403.jpg
2020-12-19: 
  REDACAO.png
```
