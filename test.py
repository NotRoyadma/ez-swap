filetosearch = '/home/ersuhbyer4567/lol.sh'
texttoreplace = 'Database'
texttoinsert = 'Pterodactyl'

s = open(filetosearch).read()
s = s.replace(texttoreplace, texttoinsert)
f = open(filetosearch, 'w')
f.write(s)
f.close()
quit()
