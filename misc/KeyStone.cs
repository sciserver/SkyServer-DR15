using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using net.openstack.Core.Domain;
using net.openstack.Providers.Rackspace;
using System.Configuration;
using Newtonsoft.Json.Linq;
using System.Net.Http;

namespace SkyServer
{
    public class Keystone
    {

        /*
        public static UserAccess Authenticate(string token)
        {
            var identityProvider = new CloudIdentityProvider(new Uri(ConfigurationManager.AppSettings["Keystone.Uri"]));
            var identity = new ExtendedCloudIdentity()
            {
                TenantName = ConfigurationManager.AppSettings["Keystone.AdminTenant"],
                Username = ConfigurationManager.AppSettings["Keystone.AdminUser"],
                Password = ConfigurationManager.AppSettings["Keystone.AdminPassword"],
            };
            UserAccess userAccess = identityProvider.ValidateToken(token, null, identity);
            bool isUser = userAccess.User.Roles.Any(item => (item.Name == "user" || item.Name == "admin"));
            if (!isUser)
            {
                throw new Exception("You do not have the permission to access Skyserver");
            }
            return userAccess;
        }
        */

        public static UserAccess Authenticate(string token)
        {
            using (var client = new HttpClient() { BaseAddress = new Uri(ConfigurationManager.AppSettings["Keystone.Portal"]) })
            {
                try
                {
                    var request = new HttpRequestMessage(HttpMethod.Get, "keystone/v3/tokens/" + token);

                    var response = client.SendAsync(request).Result.EnsureSuccessStatusCode();

                    JObject json = JObject.Parse(response.Content.ReadAsStringAsync().Result);

                    UserAccess userAccess = new UserAccess(json);

                    return userAccess;
                }
                catch
                {
                    throw new Exception("Could not authenticate token with Authentication provider");
                }
            }
        }

        public static bool IsValidToken(string token)
        {
            if (string.IsNullOrEmpty(token)) return false;

            try
            {
                using (var client = new HttpClient() { BaseAddress = new Uri(ConfigurationManager.AppSettings["LoginPortal.Base"]) })
                {
                    var request = new HttpRequestMessage(HttpMethod.Head, "keystone/v3/tokens/" + token);
                    var response = client.SendAsync(request).Result;
                    return response.IsSuccessStatusCode;
                }
            }
            catch
            {
                return false;
            }
        }



    }



    public class UserAccess
    {
        public User User = new User();
        public UserAccess(JObject json)
        {
            string id = (string)json["token"]["user"]["id"];
            string name = (string)json["token"]["user"]["name"];

            User.setId(id);
            User.setName(name);
        }
    }


    public class User
    {
        public string Id = null;
        public string Name = null;

        public User()
        {

        }
        public User(string id, string name)
        {
            this.Id = id;
            this.Name = name;
        }

        public void setId(string id)
        {
            this.Id = id;
        }
        public void setName(string name)
        {
            this.Name = name;
        }

        public string getId()
        {
            return this.Id;
        }

        public string getName()
        {
            return this.Name;
        }



    }




}