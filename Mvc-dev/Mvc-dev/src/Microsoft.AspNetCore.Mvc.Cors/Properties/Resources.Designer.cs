// <auto-generated />
namespace Microsoft.AspNetCore.Mvc.Cors
{
    using System.Globalization;
    using System.Reflection;
    using System.Resources;

    internal static class Resources
    {
        private static readonly ResourceManager _resourceManager
            = new ResourceManager("Microsoft.AspNetCore.Mvc.Cors.Resources", typeof(Resources).GetTypeInfo().Assembly);

        /// <summary>
        /// A CORS policy named '{0}' could not be found.
        /// </summary>
        internal static string CorsAuthorizationFilter_MissingCorsPolicy
        {
            get { return GetString("CorsAuthorizationFilter_MissingCorsPolicy"); }
        }

        /// <summary>
        /// A CORS policy named '{0}' could not be found.
        /// </summary>
        internal static string FormatCorsAuthorizationFilter_MissingCorsPolicy(object p0)
        {
            return string.Format(CultureInfo.CurrentCulture, GetString("CorsAuthorizationFilter_MissingCorsPolicy"), p0);
        }

        private static string GetString(string name, params string[] formatterNames)
        {
            var value = _resourceManager.GetString(name);

            System.Diagnostics.Debug.Assert(value != null);

            if (formatterNames != null)
            {
                for (var i = 0; i < formatterNames.Length; i++)
                {
                    value = value.Replace("{" + formatterNames[i] + "}", "{" + i + "}");
                }
            }

            return value;
        }
    }
}
