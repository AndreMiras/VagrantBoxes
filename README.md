# VagrantBoxes
Personal Vagrant boxes repository containing Linux-based machines used for various projects.

I kinda use Vagrant in an unusual maner. I use them for deploying full development environments, including a desktop environment.

For example if I need Eclipse CDT for a C/C++ project. I'll create a dedicated box that automates GUI and Eclipse deployment. That way I always keep my host clean. If another developer wants to jump in my C/C++ project he has the choice to just `vagrant up` the dedicated box. Or he can just check my deployment script and adapt to his requirements.
