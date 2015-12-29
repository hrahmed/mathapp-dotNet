using System;
using System.Web;
using System.Collections;
using System.Web.Services;
using System.Web.Services.Protocols;


/// <summary>
/// Summary description for MathWebService
/// </summary>
[WebService(Namespace = "http://mathws.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
public class MathWebService : System.Web.Services.WebService
{

    public MathWebService()
    {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public long Add(long num1, long num2)
    {
	  System.Threading.Thread.Sleep(1000);
        return num1 + num2;
    }

    [WebMethod]
    public long Multiply(long num1, long num2)
    {
	  System.Threading.Thread.Sleep(1000);
        return num1 * num2;
    }

}

