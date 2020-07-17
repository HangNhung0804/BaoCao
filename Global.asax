<%@ Application Language="C#" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e) 
    {
        // Code that runs on application startup
        /*System.IO.StreamReader stReader = new System.IO.StreamReader(Server.MapPath("sl.txt"));
        String s = stReader.ReadLine();
        stReader.Close();
       */
        //Application.Add("Luot_truy_cap", s);
        Application["Luot_truy_cap"]=0;
        Application["So_nguoi_online"] = 0;
    }
    
    void Application_End(object sender, EventArgs e) 
    {
        //  Code that runs on application shutdown
    }
        
    void Application_Error(object sender, EventArgs e) 
    { 
        // Code that runs when an unhandled error occurs
    }

    void Session_Start(object sender, EventArgs e) 
    {
        // Code that runs when a new session is started
        Application.Lock();
        Application["So_nguoi_online"] = int.Parse(Application["So_nguoi_online"].ToString()) + 1;
        Application["Luot_truy_cap"] = int.Parse(Application["Luot_truy_cap"].ToString()) + 1;
        Application.UnLock();
       // System.IO.StreamWriter stWriter = new System.IO.StreamWriter(Server.MapPath("sl.txt"));
        //stWriter.Write(Application["Luot_truy_cap"]);
        //stWriter.Close();
      
    }

    void Session_End(object sender, EventArgs e) 
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.
        Application.Lock(); 
        Application["So_nguoi_online"] = int.Parse(Application["So_nguoi_online"].ToString()) - 1;
        Application.UnLock();
        
    }
       
</script>
