<h3>Prerequisite</h3>
1. Install python: website (https://www.python.org/)
2. Install Robot framework: `pip install robotframework`
3. Install Selenium2Library: `pip install robotframework-seleniumlibrary`
4. Use any IDE ( ie. PyCharm )
5. Install Robot Framework Language Server
   > https://docs.robotframework.org/docs/getting_started/ide#robot-framework-language-server



<h3> Output Report  </h3>
To handle the report.html, you can use the --output option when running the Robot Framework command. This option allows you to specify the name and location of the output file. Here's an example:

`robot --outputdir results --output report.html tests/`


<h3>Should Know</h3>
To use Data Driven Testing you should install packages robotframework-datadriver
1. Click on File > Setting
2. Project Robot framework > Python Interpreter
3. Install robotframework-datadriver



Reference: https://docs.robotframework.org/docs/examples/project_structure