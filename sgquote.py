#!/usr/bin/python

import requests
import re
from datetime import *

def remove_tags(text):
	regex = re.compile("<.*?>")
	ret = regex.sub("", text)
	return ret

def cleanup(text):
	return re.sub("Datei(.*)\n", "", text)

week_of_year = datetime.today().strftime("%U")
r = requests.get("http://stargate-wiki.de/wiki/Vorlage:Hauptseite/Zitat_der_Woche/" + week_of_year + "._Woche")
begin_marker = "mw-content-text"
end_marker = "\n<!--"
beg_index = r.text.index(begin_marker)
content = r.text[beg_index:]
end_index = content.index(end_marker)
content = "<" + content[:end_index]
content = cleanup(remove_tags(content))
print("\nStargate Zitat der Woche:\n")
print(content)
