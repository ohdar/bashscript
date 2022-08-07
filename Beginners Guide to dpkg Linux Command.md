# Debian Linux and other Debian based Linux distributions, such as Ubuntu and Linux Mint, use dpkg as a package manager.

### **Note:** You might be thinking, “I thought those distributions used apt – that’s what I always use to install packages.” That’s true, apt is also a package manager, but really it’s just passing off tasks to dpkg in the background. apt and other package managers on Debian usually just utilize dpkg to install packages or perform similar tasks.

### Package manager commands like those from **apt or apt-get** are meant for end-users. They’re easy to use and are very familiar to most Linux users. dpkg is low-level tool that is more geared towards use by the system, but we can still use it with the **dpkg** command.

> **Example 1 :** The most common use for dpkg is probably to install .deb files, since apt is ordinarily used to install packages from repositories. Once you have downloaded a deb file, you can use the -i (install) option to install it.

>> <pre><code> $ dpkg -i package-name.deb </pre></code> 

> **Example 2 :** To see a full list of installed packages on your system, you can use the -l (list) option. This will give you extra details like the version of the package, system architecture, and a description.

>> <pre><code> $ dpkg -l </pre></code> 

> **Example 3 :** If you want to search for an installed package by its name, just specify your search string after the -l option.

>> <pre><code> $ dpkg -l nmap </pre></code> 

> **Example 4 :** You can remove a package by using the -r (remove) option. Note that this will leave behind configuration files, but uninstall the program.

>> <pre><code> $ sudo dpkg -r package-name </pre></code> 

> **Example 5 :** You can purge a package, which will uninstall the software and delete all of its configuration files instead of leaving them behind, by using the -P (Purge) option.

>> <pre><code> $ sudo dpkg -P package-name </pre></code> 

> **Example 6 :** To quickly check whether a package is installed or not, you can use the -s (status) option.

>> <pre><code> $ dpkg -s nmap </pre></code> 

> **Example 7 :** Use dpkg to examine the contents of a .deb file by appending the -c (contents) option.
>> <pre><code> $ dpkg -c package-name.deb </pre></code> 

> **Example 8 :** You can unpack a .deb file to see and manipulate its contents by using the --unpack option.
>> <pre><code> $ dpkg --unpack package-name.deb </pre></code> 

> **Example 9 :** If you make changes to the unpacked .deb files, you can repackage everything into a .deb file by using the --configure option.
>> <pre><code> $ sudo dpkg --configure package-name </pre></code> 

> **Example 10 :** If a package has already been installed and configured, you will probably have to opt for the dpkg-reconfigure command if you wish to configure its settings further`.
>> <pre><code> $ sudo dpkg-reconfigure unattended-upgrades </pre></code> 

>  If you’d like to delve even further, check the man page for more options.
>> <pre><code> $ man dpkg </pre></code> 
