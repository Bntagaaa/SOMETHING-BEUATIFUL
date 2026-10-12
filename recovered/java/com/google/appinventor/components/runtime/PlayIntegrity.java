package com.google.appinventor.components.runtime;

import android.app.Activity;
import com.google.android.play.core.integrity.IntegrityManager;
import com.google.android.play.core.integrity.IntegrityManagerFactory;
import com.google.android.play.core.integrity.IntegrityTokenRequest;
import com.google.android.play.core.integrity.IntegrityTokenResponse;
import com.google.android.play.core.integrity.StandardIntegrityManager;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;

@DesignerComponent(category = ComponentCategory.EXPERIMENTAL, description = "The Play Integrity API helps you check that interactions and server requests are coming from your genuine app binary running on a genuine Android device. By detecting potentially risky and fraudulent interactions, such as from tampered app versions and untrustworthy environments, your app’s backend server can respond with appropriate actions to prevent attacks and reduce abuse.", iconName = "images/playIntegrity.png", nonVisible = true, version = 1)
@UsesLibraries(libraries = "integrity.aar, integrity.jar, play-services-tasks.aar, play-services-tasks.jar, play-services-basement.aar, play-services-basement.jar, play-core-common.aar, play-core-common.jar, annotation.jar")
@SimpleObject
/* loaded from: classes.dex */
public final class PlayIntegrity extends AndroidNonvisibleComponent {
    private Activity context;
    private IntegrityManager integrityManager;
    private StandardIntegrityManager.StandardIntegrityTokenProvider integrityTokenProvider;
    private String projectNumber;
    private StandardIntegrityManager standardIntegrityManager;

    public PlayIntegrity(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.projectNumber = "";
        Activity activity$context = componentContainer.$context();
        this.context = activity$context;
        this.standardIntegrityManager = IntegrityManagerFactory.createStandard(activity$context);
        this.integrityManager = IntegrityManagerFactory.create(this.context);
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "Your Google Cloud project number. Only needed for standard request.")
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void CloudProjectNumber(String str) {
        this.projectNumber = str;
    }

    @SimpleProperty(description = "Your Google Cloud project number. Only needed for standard request.")
    public String CloudProjectNumber() {
        return this.projectNumber;
    }

    @SimpleFunction(description = "Request an integrity token from the Play Integrity API. The token can be used to verify the integrity of the request on your server.")
    public void RequestStandardIntegrityVerdict() {
        this.integrityTokenProvider = null;
        if (this.projectNumber.isEmpty()) {
            StandardIntegrityVerdictFailed("Google Cloud Project number is required for standard request.");
            return;
        }
        this.standardIntegrityManager.prepareIntegrityToken(StandardIntegrityManager.PrepareIntegrityTokenRequest.builder().setCloudProjectNumber(Long.parseLong(this.projectNumber)).build()).addOnSuccessListener(new c()).addOnFailureListener(new d());
        StandardIntegrityManager.StandardIntegrityTokenProvider standardIntegrityTokenProvider = this.integrityTokenProvider;
        if (standardIntegrityTokenProvider == null) {
            StandardIntegrityVerdictFailed("Integrity token provider is not ready yet.");
        } else {
            standardIntegrityTokenProvider.request(StandardIntegrityManager.StandardIntegrityTokenRequest.builder().build()).addOnSuccessListener(new c()).addOnFailureListener(new d());
        }
    }

    private /* synthetic */ void lambda$RequestStandardIntegrityVerdict$0(StandardIntegrityManager.StandardIntegrityTokenProvider standardIntegrityTokenProvider) {
        this.integrityTokenProvider = standardIntegrityTokenProvider;
    }

    private /* synthetic */ void lambda$RequestStandardIntegrityVerdict$1(Exception exc) {
        StandardIntegrityVerdictFailed(exc.getMessage());
    }

    private /* synthetic */ void lambda$RequestStandardIntegrityVerdict$2(StandardIntegrityManager.StandardIntegrityToken standardIntegrityToken) {
        StandardIntegrityVerdictReceived(standardIntegrityToken.token());
    }

    private /* synthetic */ void lambda$RequestStandardIntegrityVerdict$3(Exception exc) {
        StandardIntegrityVerdictFailed(exc.getMessage());
    }

    @SimpleFunction(description = "Request an integrity token from the Play Integrity API with a hash. The token can be used to verify the integrity of the request on your server.")
    public void RequestStandardIntegrityVerdictWithHash(String str) {
        this.integrityTokenProvider = null;
        if (this.projectNumber.isEmpty()) {
            StandardIntegrityVerdictFailed("Google Cloud Project number is required for standard request.");
            return;
        }
        this.standardIntegrityManager.prepareIntegrityToken(StandardIntegrityManager.PrepareIntegrityTokenRequest.builder().setCloudProjectNumber(Long.parseLong(this.projectNumber)).build()).addOnSuccessListener(new c()).addOnFailureListener(new d());
        StandardIntegrityManager.StandardIntegrityTokenProvider standardIntegrityTokenProvider = this.integrityTokenProvider;
        if (standardIntegrityTokenProvider == null) {
            StandardIntegrityVerdictFailed("Integrity token provider is not ready yet.");
        } else {
            standardIntegrityTokenProvider.request(StandardIntegrityManager.StandardIntegrityTokenRequest.builder().setRequestHash(str).build()).addOnSuccessListener(new c()).addOnFailureListener(new d());
        }
    }

    private /* synthetic */ void lambda$RequestStandardIntegrityVerdictWithHash$4(StandardIntegrityManager.StandardIntegrityTokenProvider standardIntegrityTokenProvider) {
        this.integrityTokenProvider = standardIntegrityTokenProvider;
    }

    private /* synthetic */ void lambda$RequestStandardIntegrityVerdictWithHash$5(Exception exc) {
        StandardIntegrityVerdictFailed(exc.getMessage());
    }

    private /* synthetic */ void lambda$RequestStandardIntegrityVerdictWithHash$6(StandardIntegrityManager.StandardIntegrityToken standardIntegrityToken) {
        StandardIntegrityVerdictReceived(standardIntegrityToken.token());
    }

    private /* synthetic */ void lambda$RequestStandardIntegrityVerdictWithHash$7(Exception exc) {
        StandardIntegrityVerdictFailed(exc.getMessage());
    }

    @SimpleFunction(description = "Request an integrity token from the Play Integrity API. The token can be used to verify the integrity of the request on your server.")
    public void RequestClassicIntegrityVerdict() {
        this.integrityManager.requestIntegrityToken(IntegrityTokenRequest.builder().build()).addOnSuccessListener(new c()).addOnFailureListener(new d());
    }

    private /* synthetic */ void lambda$RequestClassicIntegrityVerdict$8(IntegrityTokenResponse integrityTokenResponse) {
        ClassicIntegrityVerdictReceived(integrityTokenResponse.token());
    }

    private /* synthetic */ void lambda$RequestClassicIntegrityVerdict$9(Exception exc) {
        ClassicIntegrityVerdictFailed(exc.getMessage());
    }

    @SimpleFunction(description = "Request an integrity token from the Play Integrity API with a nonce. The token can be used to verify the integrity of the request on your server.")
    public void RequestClassicIntegrityVerdictWithNonce(String str) {
        this.integrityManager.requestIntegrityToken(IntegrityTokenRequest.builder().setNonce(str).build()).addOnSuccessListener(new c()).addOnFailureListener(new d());
    }

    private /* synthetic */ void lambda$RequestClassicIntegrityVerdictWithNonce$10(IntegrityTokenResponse integrityTokenResponse) {
        ClassicIntegrityVerdictReceived(integrityTokenResponse.token());
    }

    private /* synthetic */ void lambda$RequestClassicIntegrityVerdictWithNonce$11(Exception exc) {
        ClassicIntegrityVerdictFailed(exc.getMessage());
    }

    @SimpleEvent(description = "Event indicating that the standard integrity request was successful. Use the integrity token on your server to verify the integrity of the request.")
    public void StandardIntegrityVerdictReceived(String str) {
        EventDispatcher.dispatchEvent(this, "StandardIntegrityVerdictReceived", str);
    }

    @SimpleEvent(description = "Event indicating that the standard integrity request failed.")
    public void StandardIntegrityVerdictFailed(String str) {
        EventDispatcher.dispatchEvent(this, "StandardIntegrityVerdictFailed", str);
    }

    @SimpleEvent(description = "Event indicating that the classic integrity request was successful. Use the integrity token on your server to verify the integrity of the request.")
    public void ClassicIntegrityVerdictReceived(String str) {
        EventDispatcher.dispatchEvent(this, "ClassicIntegrityVerdictReceived", str);
    }

    @SimpleEvent(description = "Event indicating that the classic integrity request failed.")
    public void ClassicIntegrityVerdictFailed(String str) {
        EventDispatcher.dispatchEvent(this, "ClassicIntegrityVerdictFailed", str);
    }
}
