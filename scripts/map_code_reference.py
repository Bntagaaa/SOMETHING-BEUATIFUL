from pathlib import Path
import re,json,base64,urllib.parse,collections
root=Path(__file__).resolve().parents[1]
output=root/'docs/analysis'
src=root/'recovered/java/com/niotron/muhammad_robi1996/V15_DATABASE'
index={}; network=collections.defaultdict(set); transitions={}; keys={}
string=r'"(?:\\.|[^"\\])*"'
for p in sorted(src.glob('*.java')):
 if p.stem in ('R','Manifest') or '$' in p.stem: continue
 s=p.read_text()
 index[p.stem]={k:json.loads(v) for k,v in re.findall(r'(\w+) = \(SimpleSymbol\) a\.f\(('+string+r')\);',s)}
 transitions[p.stem]=sorted(set(re.findall(r'LList\.list1\("([A-Za-z][A-Za-z0-9_]*)"\).*?"open another screen"',s)))
 keys[p.stem]=sorted(set(re.findall(r'LList\.list2\("([A-Za-z][A-Za-z0-9_]*)",',s)))
 for raw,key in re.findall(r'LList\.list2\(('+string+r'), ('+string+r')\)',s):
  try:
   text=json.loads(raw); k=json.loads(key)
   if not text or not k: continue
   decoded=''.join(chr((ord(c)^(len(text)-i)^ord(k[i%len(k)]))&255) for i,c in enumerate(text))
   for _ in range(4):
    if decoded.startswith(('https://','http://')):
     h=urllib.parse.urlsplit(decoded).hostname
     if h: network[h].add(p.stem)
     break
    decoded=base64.b64decode(decoded,validate=True).decode()
  except (ValueError,UnicodeDecodeError): pass
 for url in re.findall(r'https?://[^\s"<>\\]+',s):
  try:
   h=urllib.parse.urlsplit(url).hostname
   if h: network[h].add(p.stem)
  except ValueError: pass
(output/'symbol-map.json').write_text(json.dumps(index,indent=2))
(output/'navigation-map.json').write_text(json.dumps(transitions,indent=2))
(output/'storage-key-candidates.json').write_text(json.dumps(keys,indent=2))
(output/'network-hosts.json').write_text(json.dumps({k:sorted(v) for k,v in network.items()},indent=2))
print('Screen symbol maps:',len(index))
print('Hostnames:',', '.join(network))
print('Screen1 destinations:',transitions['Screen1'])
print('HOME destinations:',transitions['HOME'])
print('Screen1 key candidates:',', '.join(keys['Screen1']))
