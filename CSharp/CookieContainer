        private static CookieContainer GetCookieContainer(string postData)
        {
            string postData = "login={0}&password={1}";
            string url = string.Epty();
            string refererUrl = url;
            var httpWebRequest = (HttpWebRequest)WebRequest.Create(url);
            httpWebRequest.AllowAutoRedirect = false;
            httpWebRequest.Method = "POST";
            httpWebRequest.UserAgent = "Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.76 Mobile Safari/537.36";
            httpWebRequest.ContentType = "application/x-www-form-urlencoded";
            httpWebRequest.ProtocolVersion = HttpVersion.Version10;
            httpWebRequest.Referer = refererUrl;
            var buffer = Encoding.ASCII.GetBytes(postData);
            httpWebRequest.ContentLength = buffer.Length;
            using (var writer = httpWebRequest.GetRequestStream())
            {
                writer.Write(buffer, 0, buffer.Length);
            }
            httpWebRequest.CookieContainer = new CookieContainer();
            using (var httpWebResponse = (HttpWebResponse)httpWebRequest.GetResponse())
            {
                httpWebRequest.CookieContainer.Add(httpWebResponse.Cookies);
            }
            return httpWebRequest.CookieContainer;
        }

        private static string GetJsonDataAsString(CookieContainer cookieContainer, string args)
        {
            string fullUrl = string.Empty();
            var getJsonDataRequest = (HttpWebRequest)WebRequest.Create(fullUrl);
            getJsonDataRequest.Method = "GET";
            getJsonDataRequest.CookieContainer = cookieContainer;
            string jsonString = string.Empty;
            using (var response = getJsonDataRequest.GetResponse().GetResponseStream())
            {
                jsonString = (new StreamReader(response, Encoding.GetEncoding("Utf-8"))).ReadToEnd();
            }
            return jsonString;
        }
