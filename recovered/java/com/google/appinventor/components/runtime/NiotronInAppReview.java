package com.google.appinventor.components.runtime;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.NonNull;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.play.core.review.ReviewInfo;
import com.google.android.play.core.review.ReviewManager;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.common.ComponentCategory;

@DesignerComponent(category = ComponentCategory.EXTRAS, description = "The Google Play In-App Review API lets you prompt users to submit Play Store ratings and reviews without the inconvenience of leaving your app or game.", iconName = "images/niotronInAppReview.png", nonVisible = true, version = 1)
@UsesLibraries(libraries = "review.aar, review.jar, play-services-tasks.aar, play-services-tasks.jar, play-services-basement.aar, play-services-basement.jar, play-core-common.aar, play-core-common.jar, annotation.jar")
@SimpleObject
/* loaded from: classes.dex */
public final class NiotronInAppReview extends AndroidNonvisibleComponent {
    private Activity activity;
    private Context context;
    private ReviewManager manager;
    private ReviewInfo reviewInfo;

    public NiotronInAppReview(ComponentContainer componentContainer) {
        throw null;
    }

    /* renamed from: com.google.appinventor.components.runtime.NiotronInAppReview$1, reason: invalid class name */
    public class AnonymousClass1 implements OnCompleteListener<ReviewInfo> {
        public AnonymousClass1() {
        }

        public void onComplete(@NonNull Task<ReviewInfo> task) {
            if (task.isSuccessful()) {
                NiotronInAppReview.this.Initialized();
                NiotronInAppReview.this.reviewInfo = (ReviewInfo) task.getResult();
                return;
            }
            NiotronInAppReview.this.ErrorInitializing();
        }
    }

    @SimpleFunction(description = "Request for opening review form")
    public void OpenReviewForm() {
        this.manager.launchReviewFlow(this.activity, this.reviewInfo).addOnCompleteListener(new OnCompleteListener<Void>() { // from class: com.google.appinventor.components.runtime.NiotronInAppReview.2
            public void onComplete(@NonNull Task<Void> task) {
                NiotronInAppReview.this.ReviewCompleted();
            }
        });
    }

    @SimpleEvent(description = "SDK initialized")
    public void Initialized() {
        EventDispatcher.dispatchEvent(this, "Initialized", new Object[0]);
    }

    @SimpleEvent(description = "Error initializing the SDK")
    public void ErrorInitializing() {
        EventDispatcher.dispatchEvent(this, "ErrorInitializing", new Object[0]);
    }

    @SimpleEvent(description = "Review completed")
    public void ReviewCompleted() {
        EventDispatcher.dispatchEvent(this, "ReviewCompleted", new Object[0]);
    }
}
