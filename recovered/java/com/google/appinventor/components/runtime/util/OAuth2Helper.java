package com.google.appinventor.components.runtime.util;

import _COROUTINE.a;
import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.AccountManagerFuture;
import android.accounts.AuthenticatorException;
import android.accounts.OperationCanceledException;
import android.app.Activity;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import com.google.api.client.googleapis.auth.oauth2.GoogleCredential;
import com.google.api.client.googleapis.extensions.android2.auth.GoogleAccountManager;
import java.io.IOException;

/* loaded from: classes.dex */
public class OAuth2Helper {
    public static final String PREF_ACCOUNT_NAME = "accountName";
    public static final String PREF_AUTH_TOKEN = "authToken";
    public static final String TAG = "OAuthHelper";
    private static String errorMessage = "Error during OAuth";

    public String getRefreshedAuthToken(Activity activity, String str) throws OperationCanceledException, IOException, AuthenticatorException {
        Log.i(TAG, "getRefreshedAuthToken()");
        if (isUiThread()) {
            throw new IllegalArgumentException("Can't get authtoken from UI thread");
        }
        SharedPreferences preferences = activity.getPreferences(0);
        String string = preferences.getString(PREF_ACCOUNT_NAME, null);
        String string2 = preferences.getString(PREF_AUTH_TOKEN, null);
        GoogleCredential googleCredential = new GoogleCredential();
        googleCredential.setAccessToken(string2);
        try {
            Bundle result = getAccountManagerResult(activity, googleCredential, str, string).getResult();
            string2 = result.get("authtoken").toString();
            persistCredentials(preferences, result.getString("authAccount"), string2);
            return string2;
        } catch (AuthenticatorException e) {
            e.printStackTrace();
            errorMessage = "Error: Authenticator error";
            return string2;
        } catch (OperationCanceledException e2) {
            e2.printStackTrace();
            resetAccountCredential(activity);
            errorMessage = "Error: operation cancelled";
            return string2;
        } catch (IOException e3) {
            e3.printStackTrace();
            errorMessage = "Error: I/O error";
            return string2;
        }
    }

    private AccountManagerFuture<Bundle> getAccountManagerResult(Activity activity, GoogleCredential googleCredential, String str, String str2) {
        GoogleAccountManager googleAccountManager = new GoogleAccountManager(activity);
        googleAccountManager.invalidateAuthToken(googleCredential.getAccessToken());
        AccountManager.get(activity).invalidateAuthToken(str, null);
        Account accountByName = googleAccountManager.getAccountByName(str2);
        if (accountByName != null) {
            Log.i(TAG, "Getting token by account");
            return googleAccountManager.getAccountManager().getAuthToken(accountByName, str, true, null, null);
        }
        Log.i(TAG, "Getting token by features, possibly prompting user to select an account");
        return googleAccountManager.getAccountManager().getAuthTokenByFeatures("com.google", str, null, activity, null, null, null, null);
    }

    private boolean isUiThread() {
        return Looper.getMainLooper().getThread().equals(Thread.currentThread());
    }

    private void persistCredentials(SharedPreferences sharedPreferences, String str, String str2) {
        Log.i(TAG, "Persisting credentials, acct =" + str);
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.putString(PREF_ACCOUNT_NAME, str);
        editorEdit.putString(PREF_AUTH_TOKEN, str2);
        editorEdit.commit();
    }

    public static void resetAccountCredential(Activity activity) {
        Log.i(TAG, "Reset credentials");
        SharedPreferences.Editor editorEdit = activity.getPreferences(0).edit();
        editorEdit.remove(PREF_AUTH_TOKEN);
        editorEdit.remove(PREF_ACCOUNT_NAME);
        editorEdit.commit();
    }

    public static String getErrorMessage() {
        a.C("getErrorMessage = ", errorMessage, TAG);
        return errorMessage;
    }
}
