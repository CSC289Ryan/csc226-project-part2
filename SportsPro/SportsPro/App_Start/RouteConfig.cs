using System;
using System.Collections.Generic;
using System.Web;
using System.Web.Routing;
using Microsoft.AspNet.FriendlyUrls;

namespace SportsPro
{
    public static class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            var settings = new FriendlyUrlSettings();
            settings.AutoRedirectMode = RedirectMode.Permanent;
            routes.EnableFriendlyUrls(settings);

            routes.MapPageRoute("RegisterProducts", "CustomerSupport/RegisterProducts", "~/ProductRegistration.aspx");
            routes.MapPageRoute("CustomerSurvey", "CustomerSupport/CustomerSurvey", "~/CustomerSurvey.aspx");
            routes.MapPageRoute("SurveyComplete", "CustomerSupport/SurveyComplete", "~/SurveyComplete.aspx");

            routes.MapPageRoute("CustomerIncidentDisplay", "TechSupport/CustomerIncidents", "~/CustomerIncidentDisplay.aspx");
            routes.MapPageRoute("IncidentUpdate", "TechSupport/UpdateIncidents", "~/IncidentUpdate.aspx");
        }
    }
}
