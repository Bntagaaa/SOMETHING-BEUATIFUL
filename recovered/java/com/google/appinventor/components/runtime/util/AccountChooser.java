package com.google.appinventor.components.runtime.util;

import _COROUTINE.a;
import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.AuthenticatorException;
import android.accounts.OperationCanceledException;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.text.Html;
import android.util.Log;
import java.io.IOException;
import java.util.concurrent.SynchronousQueue;

/* loaded from: classes.dex */
public class AccountChooser {
    private static final String ACCOUNT_PREFERENCE = "account";
    private static final String ACCOUNT_TYPE = "com.google";
    private static final String LOG_TAG = "AccountChooser";
    private static final String NO_ACCOUNT = "";
    private AccountManager accountManager;
    private Activity activity;
    private String chooseAccountPrompt;
    private String preferencesKey;
    private String service;

    public AccountChooser(Activity activity, String str, String str2, String str3) {
        this.activity = activity;
        this.service = str;
        this.chooseAccountPrompt = str2;
        this.preferencesKey = str3;
        this.accountManager = AccountManager.get(activity);
    }

    public Account findAccount() {
        Account accountChooseAccount;
        Account[] accountsByType = this.accountManager.getAccountsByType(ACCOUNT_TYPE);
        if (accountsByType.length == 1) {
            persistAccountName(accountsByType[0].name);
            return accountsByType[0];
        }
        if (accountsByType.length == 0) {
            String strCreateAccount = createAccount();
            if (strCreateAccount != null) {
                persistAccountName(strCreateAccount);
                return this.accountManager.getAccountsByType(ACCOUNT_TYPE)[0];
            }
            Log.i(LOG_TAG, "User failed to create a valid account");
            return null;
        }
        String persistedAccountName = getPersistedAccountName();
        if (persistedAccountName != null && (accountChooseAccount = chooseAccount(persistedAccountName, accountsByType)) != null) {
            return accountChooseAccount;
        }
        String strSelectAccount = selectAccount(accountsByType);
        if (strSelectAccount != null) {
            persistAccountName(strSelectAccount);
            return chooseAccount(strSelectAccount, accountsByType);
        }
        Log.i(LOG_TAG, "User failed to choose an account");
        return null;
    }

    private Account chooseAccount(String str, Account[] accountArr) {
        for (Account account : accountArr) {
            if (account.name.equals(str)) {
                a.C("chose account: ", str, LOG_TAG);
                return account;
            }
        }
        return null;
    }

    private String createAccount() {
        Log.i(LOG_TAG, "Adding auth token account ...");
        try {
            String string = this.accountManager.addAccount(ACCOUNT_TYPE, this.service, null, null, this.activity, null, null).getResult().getString("authAccount");
            Log.i(LOG_TAG, "created: " + string);
            return string;
        } catch (AuthenticatorException e) {
            e.printStackTrace();
            return null;
        } catch (OperationCanceledException e2) {
            e2.printStackTrace();
            return null;
        } catch (IOException e3) {
            e3.printStackTrace();
            return null;
        }
    }

    private String selectAccount(Account[] accountArr) {
        String str;
        SynchronousQueue synchronousQueue = new SynchronousQueue();
        new SelectAccount(accountArr, synchronousQueue).start();
        Log.i(LOG_TAG, "Select: waiting for user...");
        try {
            str = (String) synchronousQueue.take();
        } catch (InterruptedException e) {
            e.printStackTrace();
            str = null;
        }
        Log.i(LOG_TAG, "Selected: " + str);
        if ("".equals(str)) {
            return null;
        }
        return str;
    }

    private SharedPreferences getPreferences() {
        return this.activity.getSharedPreferences(this.preferencesKey, 0);
    }

    private String getPersistedAccountName() {
        return getPreferences().getString(ACCOUNT_PREFERENCE, null);
    }

    private void persistAccountName(String str) {
        a.C("persisting account: ", str, LOG_TAG);
        getPreferences().edit().putString(ACCOUNT_PREFERENCE, str).commit();
    }

    public void forgetAccountName() {
        getPreferences().edit().remove(ACCOUNT_PREFERENCE).commit();
    }

    public class SelectAccount extends Thread implements DialogInterface.OnClickListener, DialogInterface.OnCancelListener {
        private String[] accountNames;
        private SynchronousQueue<String> queue;

        public SelectAccount(Account[] accountArr, SynchronousQueue<String> synchronousQueue) {
            this.queue = synchronousQueue;
            this.accountNames = new String[accountArr.length];
            for (int i = 0; i < accountArr.length; i++) {
                this.accountNames[i] = accountArr[i].name;
            }
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            AccountChooser.this.activity.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.util.AccountChooser.SelectAccount.1
                @Override // java.lang.Runnable
                public void run() {
                    new AlertDialog.Builder(AccountChooser.this.activity).setTitle(Html.fromHtml(AccountChooser.this.chooseAccountPrompt)).setOnCancelListener(SelectAccount.this).setSingleChoiceItems(SelectAccount.this.accountNames, -1, SelectAccount.this).show();
                    Log.i(AccountChooser.LOG_TAG, "Dialog showing!");
                }
            });
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) throws InterruptedException {
            try {
                if (i >= 0) {
                    String str = this.accountNames[i];
                    Log.i(AccountChooser.LOG_TAG, "Chose: " + str);
                    this.queue.put(str);
                } else {
                    this.queue.put("");
                }
            } catch (InterruptedException unused) {
            }
            dialogInterface.dismiss();
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialogInterface) throws InterruptedException {
            Log.i(AccountChooser.LOG_TAG, "Chose: canceled");
            onClick(dialogInterface, -1);
        }
    }
}
