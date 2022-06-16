# buildnumber-maven-plugin-test

Simple project to reproduce a null pointer issue with the buildnumber-maven-plugin

## windows

- `tester.bat > output.txt`

## Linux

- `./tester.sh > output.txt`

### error will look like this:

```
[INFO] Scanning for projects...
[INFO]
[INFO] ----------< nl.wietseterpstra:buildnumber-maven-plugin-test >-----------
[INFO] Building buildnumber-maven-plugin-test 1.0-SNAPSHOT
[INFO] --------------------------------[ jar ]---------------------------------
[INFO]
[INFO] --- maven-clean-plugin:2.5:clean (default-clean) @ buildnumber-maven-plugin-test ---
[INFO]
[INFO] --- buildnumber-maven-plugin:3.0.0:create (default) @ buildnumber-maven-plugin-test ---
[INFO] Executing: cmd.exe /X /C "git rev-parse --verify HEAD"
[INFO] Working directory: REDACTED
[INFO] Storing buildNumber: 45bd66f884ff1e1118f4829d9b14ac9e266efb27 at timestamp: 1655374577395
[INFO] Storing buildScmBranch: null
[INFO] ------------------------------------------------------------------------
[INFO] BUILD FAILURE
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  0.838 s
[INFO] Finished at: 2022-06-16T12:16:17+02:00
[INFO] ------------------------------------------------------------------------
[ERROR] Failed to execute goal org.codehaus.mojo:buildnumber-maven-plugin:3.0.0:create (default) on project buildnumber-maven-plugin-test: Execution default of goal org.codehaus.mojo:buildnumber-maven-plugin:3.0.0:create failed.: NullPointerException -> [Help 1]
[ERROR]
[ERROR] To see the full stack trace of the errors, re-run Maven with the -e switch.
[ERROR] Re-run Maven using the -X switch to enable full debug logging.
[ERROR]
[ERROR] For more information about the errors and possible solutions, please read the following articles:
[ERROR] [Help 1] http://cwiki.apache.org/confluence/display/MAVEN/PluginExecutionException
```