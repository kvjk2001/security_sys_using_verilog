# security_sys_using_verilog

Introduction


Passwords play a vital part of information and network security, serving to protect user accounts. Here we are trying to implement a basic password locker system through Verilog programming and FPGA. The password is a 3-digit binary number, which is preset in the code. The password can be set and reset with the help of dip switches. The digits are inputted through the dip switches, if the input data matches the password, then it is indicated by LEDs and a stepper motor which indicates the movement of door.

Implementation


During the implementation, all the input are controlled by dip switches. If the reset switch is made high, all the initial parameters will be set to their initial value. And when the reset switch is set to low we can alter the inputs and the preset passwords. There are two LED’s to display the results. The default password is predefined in the program itself which cannot be altered by the reset switch. To enter the input data we need to set the DK switch, and enter the expected data on the next 3 switches. Once the password is entered we need to confirm the input by setting the check switch high. If the input binary data matches the preset password, the access is granted and the 1st LED glows to indicate the access and the stepper motor rotates by 180`clockwise and then anticlock wise after a delay of 10 seconds, to cause the movement opening and closing of the safe door. Incase the input data does not match the preset password, the 2nd LED will glow to indicate the incorrect password. Incase the password is forgotten, there is temporary PK switch which when made high can change the password temporarily, this switch is to be held confidential and can only be accessed by the system user. Once the reset switch is made high the temporary password is cleared and the default password set in the code is implemented.

