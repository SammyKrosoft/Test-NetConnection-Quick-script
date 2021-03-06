# Test-NetConnection-Quick-script

Quick Powershell script to test a connection to one or more remote servers, and store results in a CSV file

# Usage

Edit the ```$ResultsFile```, ```$Ports``` and ```$Computers``` variables to your needs, and simply run the script

```powershell
.\TestNetConnectionToServers.ps1
```

The script will output something similar to the below:

![image](https://user-images.githubusercontent.com/33433229/140596263-7f886bb9-bf01-4381-8d9b-ba0a5e1e3352.png)

And the content of your CSV file will look like the below:

![image](https://user-images.githubusercontent.com/33433229/140596267-66e135a0-52ea-41a6-80f0-9623827c8672.png)

If you load it in a CSV friendly application (like Excel, with some conditionnal formatting), you would have something similar to the below:

![image](https://user-images.githubusercontent.com/33433229/140596352-4b61b99f-e442-43dc-8c76-d311cc17a5ee.png)

