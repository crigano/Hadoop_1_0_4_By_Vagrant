Hadoop_1_0_4_By_Vagrant
=======================

An hadoop name node and two slaves on Ubuntu Precise (12.04)

1. Install Vagrant
2. Download this project.
3. Add the following to your /etc/host file.

10.211.55.100	affy-master
10.211.55.101	affy-slave1
10.211.55.102	affy-slave2

4. Run 'Vagrant up'

5. Run 'post_spinup.sh'

Now you can visit the following URLs in your browser:

http://affy-master:50070/dfshealth.jsp
