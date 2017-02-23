// Licensed to the .NET Foundation under one or more agreements.
// The .NET Foundation licenses this file to you under the MIT license.
// See the LICENSE file in the project root for more information.


using System;
using System.ServiceModel.Channels;
using System.Collections.Generic;
using System.IdentityModel.Claims;
using System.IdentityModel.Policy;
using System.Net.Security;
using System.ServiceModel.Security.Tokens;

namespace System.ServiceModel
{
    public interface IClientChannel : IContextChannel, IDisposable
    {
        bool AllowInitializationUI { get; set; }
        bool DidInteractiveInitialization { get; }
        Uri Via { get; }

        event EventHandler<UnknownMessageReceivedEventArgs> UnknownMessageReceived;

        void DisplayInitializationUI();
        IAsyncResult BeginDisplayInitializationUI(AsyncCallback callback, object state);
        void EndDisplayInitializationUI(IAsyncResult result);
    }
}
