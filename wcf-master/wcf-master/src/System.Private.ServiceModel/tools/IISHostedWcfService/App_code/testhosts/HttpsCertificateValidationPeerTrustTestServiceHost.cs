﻿// Licensed to the .NET Foundation under one or more agreements.
// The .NET Foundation licenses this file to you under the MIT license.
// See the LICENSE file in the project root for more information.


using System;
using System.Security.Cryptography.X509Certificates;
using System.ServiceModel;
using System.ServiceModel.Activation;
using System.ServiceModel.Channels;
using System.ServiceModel.Security;

namespace WcfService
{
    public class HttpsCertificateValidationPeerTrustTestServiceHostFactory : ServiceHostFactory
    {
        protected override ServiceHost CreateServiceHost(Type serviceType, Uri[] baseAddresses)
        {
            HttpsCertificateValidationPeerTrustTestServiceHost serviceHost = new HttpsCertificateValidationPeerTrustTestServiceHost(serviceType, baseAddresses);
            return serviceHost;
        }
    }
    public class HttpsCertificateValidationPeerTrustTestServiceHost : TestServiceHostBase<IWcfService>
    {
        protected override string Address { get { return "https-server-cert-valmode-peertrust"; } }

        protected override Binding GetBinding()
        {
            BasicHttpsBinding binding = new BasicHttpsBinding(BasicHttpsSecurityMode.Transport);
            binding.Security.Transport.ClientCredentialType = HttpClientCredentialType.None;

            return binding;
        }

        protected override void ApplyConfiguration()
        {
            base.ApplyConfiguration();

            string certThumprint = TestHost.CertificateFromFriendlyName(StoreName.TrustedPeople, StoreLocation.LocalMachine, "WCF Bridge - UserPeerTrustCertificateResource").Thumbprint;

            this.Credentials.ServiceCertificate.SetCertificate(StoreLocation.LocalMachine,
                                                        StoreName.TrustedPeople,
                                                        X509FindType.FindByThumbprint,
                                                        certThumprint);
        }

        public HttpsCertificateValidationPeerTrustTestServiceHost(Type serviceType, params Uri[] baseAddresses)
            : base(serviceType, baseAddresses)
        {
        }
    }
}
