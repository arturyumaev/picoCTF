# picoCTF

#### ✅ Task name: "Nice netcat..."

⚙️ Solving

```bash
$ nc mercury.picoctf.net 49039 > numbers.txt # Save integer nubmbers into file
$ ( echo "obase=16" ; cat numbers.txt ) | bc # Convert integers into hex

# Then convert given hex numbers into ascii
# Done
```
