This is a Cross Process Application which involves calls from .NET-->.NET


Installation steps:

1) Stop the IIS Server.
2) Extract the file "Dotnet_Dotnet.zip" to temp directory.
3) Deploy the "MathWebClient" and "MathWebService" apps on IIS by creating virtual directories with the same names, using the IIS Manager.  You add new virtual directories under Web Sites | Default Web Site
4) Restart the IIS server.

Usage:

1) Test client with "http://localhost/MathWebClient/testMultiply.aspx".
2) Enter the two numbers you would like to multiply.
3) Click the "Multiply" button to invoke the webservice.
4) This will invoke the MathWebService .NET program, multiply the numbers, and give you the result

Note that a 2 second delay is built into the client and a 1 second delay is built into the server to make it easier to see cross-process transaction tracing in Introscope.

Working:

.NET client calls -->  .NET Webservice


MathWebClient: http://localhost/MathWebClient/testMultiply.aspx
MathWebService: Add() and Multiply() (server: http://localhost/MathWebService/MathWebService.asmx)





