# picoCTF

#### ✅ Task name: "Nice netcat..."

⚙️ Solving

```bash
$ nc mercury.picoctf.net 49039 > numbers.txt # Save integer nubmbers into file
$ ( echo "obase=16" ; cat numbers.txt ) | bc # Convert integers into hex

# Then convert given hex numbers into ascii
# Done
```

#### ✅ Task name: "Obedient Cat"

⚙️ Solving

```bash
$ wget https://mercury.picoctf.net/static/a5683698ac318b47bd060cb786859f23/flag # Load file from the server
$ cat flag 

# Done
```

#### ✅ Task name: "GET aHEAD"

⚙️ Solving

```bash
$ curl --head http://mercury.picoctf.net:28916
# Done
```
