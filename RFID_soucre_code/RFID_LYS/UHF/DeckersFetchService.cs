using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;

namespace UHF
{
    class DeckersFetchService
    {
        private static readonly HttpClient _httpClient = new HttpClient();


        // Lấy OAuth Token
        private static string _token;
        private static DateTime _tokenExpiry = DateTime.MinValue; // Lưu thời gian hết hạn token
        public class OAuthTokenResponse
        {
            public string Token { get; set; }
            public int ExpiresIn { get; set; }
        }
        public static async Task<OAuthTokenResponse> GetOAuthToken(string databaseType)
        {
            string clientId, clientSecret;
            switch (databaseType)
            {
                case "A": clientId = "483564781400133"; clientSecret = "ZERyCFfULDYfvJmNRRccoEZFWPtcRODy"; break;
                case "B": clientId = "547316905955397"; clientSecret = "AwQxilueSZLIRASNvKiOXwJbbawpEHqk"; break;
                case "C": clientId = "579171156533317"; clientSecret = "jgSzUiAYwaEXyfANdJirsXbrgsamonxG"; break;
                case "D": clientId = "527410088992837"; clientSecret = "TeCULZuarkZAgNYEowdDphSeeBYBKhaX"; break;
                default: throw new ArgumentException($"Invalid database type: {databaseType}");
            }

            string tokenUri = "https://divzen.deckers.com/oauth2/token";
            //string tokenUri = "https://divzen.uat.turtle.deckers.com/oauth2/token";
            string authHeader = Convert.ToBase64String(Encoding.UTF8.GetBytes($"{clientId}:{clientSecret}"));
            var formData = new StringContent("grant_type=client_credentials", Encoding.UTF8, "application/x-www-form-urlencoded");

            try
            {
                var requestMessage = new HttpRequestMessage(HttpMethod.Post, tokenUri)
                {
                    Headers = { Authorization = new System.Net.Http.Headers.AuthenticationHeaderValue("Basic", authHeader) },
                    Content = formData
                };

                HttpResponseMessage response = await _httpClient.SendAsync(requestMessage);
                string responseData = await response.Content.ReadAsStringAsync();
                Console.WriteLine($"OAuth Response: {response.StatusCode} - {responseData}");

                if (!response.IsSuccessStatusCode)
                {
                    throw new Exception($"Failed to obtain token: {response.StatusCode}, Response: {responseData}");
                }

                var jsonDocument = JsonDocument.Parse(responseData);
                JsonElement root = jsonDocument.RootElement;

                if (root.TryGetProperty("access_token", out JsonElement accessTokenElement) &&
                    root.TryGetProperty("expires_in", out JsonElement expiresInElement))
                {
                    return new OAuthTokenResponse
                    {
                        Token = accessTokenElement.GetString(),
                        ExpiresIn = expiresInElement.GetInt32()  // ✅ Đã sửa lỗi ở đây
                    };
                }

                throw new Exception("access_token hoặc expires_in không có trong phản hồi");
            }
            catch (Exception ex)
            {
                throw new Exception($"Error fetching OAuth token: {ex.Message}");
            }
        }
        // Lấy dữ liệu từ API
        public static async Task<string> GetDataSize(string epc, string token)
        {
            string apiUrl = $"https://mfg.deckers.com/pdm-api/v1/epc/{epc}";

            try
            {
                var requestMessage = new HttpRequestMessage(HttpMethod.Get, apiUrl)
                {
                    Headers = { Authorization = new System.Net.Http.Headers.AuthenticationHeaderValue("Bearer", token) }
                };

                HttpResponseMessage response = await _httpClient.SendAsync(requestMessage).ConfigureAwait(false);

                if (!response.IsSuccessStatusCode)
                    throw new Exception($"Failed to fetch data: Status {response.StatusCode}");

                string responseData = await response.Content.ReadAsStringAsync().ConfigureAwait(false);
                var apiResponse = JsonSerializer.Deserialize<JsonElement>(responseData);

                // Trích xuất thông tin từ JSON response
                string sizeNumber = apiResponse.TryGetProperty("sizeNumber", out var sizeProp) ? sizeProp.GetString() : null;

                return sizeNumber;
            }
            catch (Exception ex)
            {
                throw new Exception($"Error fetching data: {ex.Message}");
            }
        }
    }
}
