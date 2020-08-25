## Description
This project is written with Python and RobotFramework. It's consisted by testing an API and verifying if it's working as some business rules described it needed to work. 
By the tests created in this project, it's possible to recognize some errors: 
1) When the user sends values greater or inferior than permitted, the system returns a string instead of a json;
2) The same happens when the user sends invalid parameters, as letters, for example;
3) Another problem that was found is that, in the english version, you can not get the "extenso" json key, as asked by business rules, but "full" instead. 
 

## Setup

1 - Create a Virtualenv
```
python3.7 -m venv venv
```
2 - Activate the venv
```
source ./venv/bin/activate
```
3 - Install requirements

at the project root directory
```
pip install -r requirements.txt
```
## How to run
At the root directory
```
robot -d ./results src/tests
```

## Results
You can check the results at the file located in `results/report.html`.
