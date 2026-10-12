package com.google.appinventor.components.runtime.util;

import _COROUTINE.a;
import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.AccountManagerCallback;
import android.accounts.AccountManagerFuture;
import android.accounts.AuthenticatorException;
import android.accounts.OperationCanceledException;
import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.google.common.net.HttpHeaders;
import java.io.IOException;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpUriRequest;

/* loaded from: classes.dex */
public class ClientLoginHelper implements IClientLoginHelper {
    private static final String ACCOUNT_TYPE = "com.google";
    private static final String AUTHORIZATION_HEADER_PREFIX = "GoogleLogin auth=";
    private static final String LOG_TAG = "ClientLoginHelper";
    private AccountChooser accountChooser;
    private AccountManager accountManager;
    private Activity activity;
    private String authToken;
    private HttpClient client;
    private boolean initialized;
    private String service;

    public ClientLoginHelper(Activity activity, String str, String str2, HttpClient httpClient) {
        throw null;
    }

    private void initialize() throws ClientProtocolException {
        if (this.initialized) {
            return;
        }
        Log.i(LOG_TAG, "initializing");
        if (isUiThread()) {
            throw new IllegalArgumentException("Can't initialize login helper from UI thread");
        }
        this.authToken = getAuthToken();
        this.initialized = true;
    }

    private boolean isUiThread() {
        return Looper.getMainLooper().getThread().equals(Thread.currentThread());
    }

    @Override // com.google.appinventor.components.runtime.util.IClientLoginHelper
    public HttpResponse execute(HttpUriRequest httpUriRequest) throws IOException {
        initialize();
        addGoogleAuthHeader(httpUriRequest, this.authToken);
        HttpResponse httpResponseExecute = this.client.execute(httpUriRequest);
        if (httpResponseExecute.getStatusLine().getStatusCode() != 401) {
            return httpResponseExecute;
        }
        a.C("Invalid token: ", this.authToken, LOG_TAG);
        this.accountManager.invalidateAuthToken(ACCOUNT_TYPE, this.authToken);
        this.authToken = getAuthToken();
        removeGoogleAuthHeaders(httpUriRequest);
        addGoogleAuthHeader(httpUriRequest, this.authToken);
        a.C("new token: ", this.authToken, LOG_TAG);
        return this.client.execute(httpUriRequest);
    }

    @Override // com.google.appinventor.components.runtime.util.IClientLoginHelper
    public void forgetAccountName() {
        this.accountChooser.forgetAccountName();
    }

    private static void addGoogleAuthHeader(HttpUriRequest httpUriRequest, String str) {
        if (str != null) {
            Log.i(LOG_TAG, "adding auth token token: ".concat(str));
            httpUriRequest.addHeader(HttpHeaders.AUTHORIZATION, AUTHORIZATION_HEADER_PREFIX.concat(str));
        }
    }

    private static void removeGoogleAuthHeaders(HttpUriRequest httpUriRequest) {
        for (Header header : httpUriRequest.getAllHeaders()) {
            if (header.getName().equalsIgnoreCase(HttpHeaders.AUTHORIZATION) && header.getValue().startsWith(AUTHORIZATION_HEADER_PREFIX)) {
                Log.i(LOG_TAG, "Removing header:" + header);
                httpUriRequest.removeHeader(header);
            }
        }
    }

    @Override // com.google.appinventor.components.runtime.util.IClientLoginHelper
    public String getAuthToken() throws ClientProtocolException {
        Account accountFindAccount = this.accountChooser.findAccount();
        if (accountFindAccount != null) {
            AccountManagerFuture<Bundle> authToken = this.accountManager.getAuthToken(accountFindAccount, this.service, (Bundle) null, this.activity, (AccountManagerCallback<Bundle>) null, (Handler) null);
            Log.i(LOG_TAG, "Have account, auth token: " + authToken);
            try {
                return authToken.getResult().getString("authtoken");
            } catch (AuthenticatorException e) {
                e.printStackTrace();
            } catch (OperationCanceledException e2) {
                e2.printStackTrace();
            } catch (IOException e3) {
                e3.printStackTrace();
            }
        }
        throw new ClientProtocolException("Can't get valid authentication token");
    }
}
