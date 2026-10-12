package com.google.appinventor.components.runtime;

import android.accounts.AccountManager;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.runtime.util.ErrorMessages;

@DesignerComponent(category = ComponentCategory.SOCIAL, description = "Google Account Picker. This component will show you a list of Google accounts registered in given device.", iconName = "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAADrElEQVRIS41Va2wUVRT+zkx3Z3btA1daIVJsuqQtmGITxEpCMAT8YVRCYtAfJKgJiVF5dGdLBQxhExK0QKIYTdSYiH8oOxh2F9JEfIRQotYKwdYgC5GlQqkC5VWg7cxu55q5211nprNbzq977nl853HPuYQpKBJhwu15mWaCsU0AnksNMAbgKIOwIx7y/AYiky9I5CZRDozVEdFmRniVAL9VJzVg90fAfQbsZxm0x9vkC05/eYCWjtEaURROAnikWEROABfd6wYzFiTC/sumLA+gRLWXifDNVCV7AADT7cqYIiUcAGMbiGhvMYDxzDj6BxlIEIvHQVgXC8mf2gBaotp2kRBxWqY1HX909UIbGbOJRElGoH4+BI93EhhjtDUelt53lihChO1W7X8vDuJiX7Zvra/VYvkz0/n5h+4h7Pk6xc9ls4PwV860gRDovUOKtNMGED4wth4CfZzTHB66gzM/9XH2yfpytLc02Jy8+1ESveeG+d3DdY3wllVY5W/FFPmzok3+5fAJYOJFbnq9Fsuas9Hn6Mdfh7B7XzYLkx5dsNgidWlySNUaBYCHfP/2PfQdP503aGooxwcb7Rls3pvE78lsBiYF5jbB4y/lZ8OgJxKt0p+2DNoSrGxc07lFqvcvXO3/x16SN4JY+nR2RI713ED7V/aZ8lXORPnsIJeXSFLZwXfong3AZMKqxouS7D6DW1dv2gCmYqSKAKbNmcfVYoqcny/bqgirmg7Ac+lsP66c54PIqb6mFFvXBlEVkDh/7aaGnV9ewLl+HiSnh2ZUo/Sxx82jHlPkrKJ1knkGUf17EFuuj2o49V0PV9gVasD8unLXBPrOD6PtwySXTW9cCNHL/X4bU+TnXQE2dujNJSLrNoU9nT/j7VXVeGFJVdHqdHZdwyfqZVQ1LeJ6zBCeird6T7kC8Cwm+pBJZ7DjpfGiznPCNZ8LILGEs9b6TyqReaGo2hECXjTP03wGNjyb/n8jOuDMn2GT6sH1u/lWJmKKvNKqNuk/CKnMJ0AfsSotqU1jcdCAZ2LH6Rmgs1dA/HQ26hxVDEu+fRGyLS3XDycc1aIgvOJWn0LrmoHtjyu+1U4bV4CJXqTNmXEaFABIxxR58lp1PlOrs5DKAgL0Gw8CoGtSoHML3XLLuGAGvOEdI9Ukipeshs4MSmDMOqj4rxR6bkUBTKOIyrx3of8NYIbJ5wEIg5V+qeaLN8ksZUGaEiBnqURHlxIJidQAM0hgKw61+LqKOc7J/gNttkYocToLHQAAAABJRU5ErkJggg==", nonVisible = true, version = 1)
@UsesLibraries(libraries = "play-services-auth.jar, play-services-auth.aar, play-services-auth-base.aar, play-services-auth-base.jar, play-services-basement.aar, play-services-basement.jar, play-services-base.aar, play-services-base.jar")
@SimpleObject
/* loaded from: classes.dex */
public class NiotronGoogleAccountPicker extends AndroidNonvisibleComponent implements Component, ActivityResultListener {
    public static final int VERSION = 1;
    private final int RESULT_OK;
    private ComponentContainer container;
    private Context context;
    private int requestCode;

    public NiotronGoogleAccountPicker(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.requestCode = 0;
        this.RESULT_OK = -1;
        this.container = componentContainer;
        this.context = componentContainer.$context();
    }

    @SimpleFunction(description = "Show a popup with list of Google accounts registered in device.")
    public void ShowAccountPicker() {
        if (this.requestCode == 0) {
            this.requestCode = this.form.registerForActivityResult(this);
        }
        try {
            this.container.$context().startActivityForResult(AccountManager.newChooseAccountIntent(null, null, new String[]{"com.google"}, false, null, null, null, null), this.requestCode);
        } catch (ActivityNotFoundException unused) {
            this.form.dispatchErrorOccurredEvent(this, "Pick", ErrorMessages.ERROR_ACTIVITY_STARTER_NO_CORRESPONDING_ACTIVITY, new Object[0]);
        }
    }

    @SimpleEvent(description = "Triggered after account has been picked.")
    public void Picked(String str) {
        EventDispatcher.dispatchEvent(this, "Picked", str);
    }

    @Override // com.google.appinventor.components.runtime.ActivityResultListener
    public void resultReturned(int i, int i2, Intent intent) {
        if (i2 == -1) {
            Picked(intent.getStringExtra("authAccount"));
        }
    }
}
