package com.google.appinventor.components.runtime;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.facebook.AccessToken;
import com.facebook.CallbackManager;
import com.facebook.FacebookCallback;
import com.facebook.FacebookException;
import com.facebook.FacebookSdk;
import com.facebook.GraphRequest;
import com.facebook.GraphResponse;
import com.facebook.login.LoginManager;
import com.facebook.login.LoginResult;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.runtime.util.YailList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.json.JSONObject;

@SimpleObject
@UsesPermissions(permissionNames = "android.permission.INTERNET")
@DesignerComponent(category = ComponentCategory.INTERNAL, description = "Component that allows the login with facebook", iconName = "images/facebook.png", nonVisible = true, version = 1)
@UsesLibraries(libraries = "facebook-login.jar, facebook-core.jar, facebook-common.jar, facebook-login.aar, facebook-core.aar, facebook-common.aar")
/* loaded from: classes.dex */
public class FacebookLogin extends AndroidNonvisibleComponent implements Component {
    private AccessToken accessToken;
    private Activity activity;
    private CallbackManager callbackManager;
    private ComponentContainer container;
    private Context context;

    public FacebookLogin(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.container = componentContainer;
        this.context = componentContainer.$context();
        this.activity = componentContainer.$form();
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, userVisible = false)
    @DesignerProperty
    public void ApplicationID(String str) {
        initSDK(str, this.context);
    }

    @SimpleFunction(description = "Attempts a log in")
    public void LogIn(YailList yailList) {
        LoginManager.getInstance().logInWithReadPermissions(this.activity, Arrays.asList(yailList.toStringArray()));
    }

    @SimpleFunction(description = "Attempts a log out")
    public void LogOut() {
        LoginManager.getInstance().logOut();
    }

    @SimpleEvent(description = "Triggers when login successful")
    public void OnLoginSuccess(YailList yailList, YailList yailList2) {
        EventDispatcher.dispatchEvent(this, "OnLoginSuccess", yailList, yailList2);
    }

    @SimpleEvent(description = "Triggers When succesfully got user data")
    public void OnGotUserData(String str) {
        EventDispatcher.dispatchEvent(this, "OnGotUserData", str);
    }

    @SimpleEvent(description = "Triggers when error occured during login")
    public void OnLoginError(String str) {
        EventDispatcher.dispatchEvent(this, "OnLoginError", str);
    }

    @SimpleEvent(description = "Triggers when login canceled")
    public void OnCancel() {
        EventDispatcher.dispatchEvent(this, "OnCancel", new Object[0]);
    }

    private void initSDK(String str, Context context) {
        FacebookSdk.setApplicationId(str);
        FacebookSdk.sdkInitialize(context);
        this.callbackManager = CallbackManager.Factory.create();
    }

    public void resultReturned(int i, int i2, Intent intent) {
        this.callbackManager.onActivityResult(i, i2, intent);
    }

    private void addListeners() {
        LoginManager.getInstance().registerCallback(this.callbackManager, new FacebookCallback<LoginResult>() { // from class: com.google.appinventor.components.runtime.FacebookLogin.1
            public void onSuccess(LoginResult loginResult) {
                FacebookLogin.this.accessToken = loginResult.getAccessToken();
                Set recentlyDeniedPermissions = loginResult.getRecentlyDeniedPermissions();
                Set recentlyGrantedPermissions = loginResult.getRecentlyGrantedPermissions();
                ArrayList arrayList = new ArrayList();
                Iterator it = recentlyDeniedPermissions.iterator();
                while (it.hasNext()) {
                    arrayList.add(it.next().toString());
                }
                ArrayList arrayList2 = new ArrayList();
                Iterator it2 = recentlyGrantedPermissions.iterator();
                while (it2.hasNext()) {
                    arrayList2.add(it2.next().toString());
                }
                FacebookLogin.this.OnLoginSuccess(YailList.makeList((List) arrayList), YailList.makeList((List) arrayList2));
            }

            public void onCancel() {
                FacebookLogin.this.OnCancel();
            }

            public void onError(FacebookException facebookException) {
                FacebookLogin.this.OnLoginError(facebookException.toString());
            }
        });
    }

    private void getUserData(AccessToken accessToken, String str) {
        GraphRequest graphRequestNewMeRequest = GraphRequest.newMeRequest(accessToken, new GraphRequest.GraphJSONObjectCallback() { // from class: com.google.appinventor.components.runtime.FacebookLogin.2
            public void onCompleted(JSONObject jSONObject, GraphResponse graphResponse) {
                FacebookLogin.this.OnGotUserData(jSONObject.toString());
            }
        });
        Bundle bundle = new Bundle();
        bundle.putString("fields", str);
        graphRequestNewMeRequest.setParameters(bundle);
        graphRequestNewMeRequest.executeAsync();
    }
}
