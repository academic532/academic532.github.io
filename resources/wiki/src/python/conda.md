## Install Anaconda

Login into your terminal using Putty.

Download Anaconda installer into `tmp` of your home directory.

```bash
mkdir tmp
cd tmp
```

download Anaconda2 or Anaconda3 installer, depending on your demands of Python version.

```bash
aria2c https://repo.continuum.io/archive/Anaconda2-4.2.0-Linux-x86_64.sh
```

or

```bash
aria2c https://repo.continuum.io/archive/Anaconda3-4.2.0-Linux-x86_64.sh
```

After the download process is finished, execute the installer

```bash
bash -x Anaconda2-4.2.0-Linux-x86_64.sh
```

or

```bash
bash -x Anaconda3-4.2.0-Linux-x86_64.sh
```

Follow the installer prompts to finish the installation. 

Then add Anaconda binaries to **PATH**:

```bash
tail -1 ~/.bashrc >> ~/.zshrc
source ~/.zshrc
```

run `python` in your terminal, if you see something like below:

```
Python 2.7.12 |Anaconda 4.2.0 (64-bit)| (default, Jul  2 2016, 17:42:40)
[GCC 4.4.7 20120313 (Red Hat 4.4.7-1)] on linux2
Type "help", "copyright", "credits" or "license" for more information.
Anaconda is brought to you by Continuum Analytics.
Please check out: http://continuum.io/thanks and https://anaconda.org
>>>
```

Anaconda is successfully installed!