.class public final Lcom/google/appinventor/components/runtime/NiotronInAppReview;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXTRAS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "The Google Play In-App Review API lets you prompt users to submit Play Store ratings and reviews without the inconvenience of leaving your app or game."
    iconName = "images/niotronInAppReview.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "review.aar, review.jar, play-services-tasks.aar, play-services-tasks.jar, play-services-basement.aar, play-services-basement.jar, play-core-common.aar, play-core-common.jar, annotation.jar"
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private context:Landroid/content/Context;

.field private manager:Lcom/google/android/play/core/review/ReviewManager;

.field private reviewInfo:Lcom/google/android/play/core/review/ReviewInfo;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static bridge synthetic a(Lcom/google/appinventor/components/runtime/NiotronInAppReview;Lcom/google/android/play/core/review/ReviewInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronInAppReview;->reviewInfo:Lcom/google/android/play/core/review/ReviewInfo;

    return-void
.end method


# virtual methods
.method public ErrorInitializing()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Error initializing the SDK"
    .end annotation

    const/4 v0, 0x0

    .line 88
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ErrorInitializing"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Initialized()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "SDK initialized"
    .end annotation

    const/4 v0, 0x0

    .line 83
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Initialized"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public OpenReviewForm()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Request for opening review form"
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronInAppReview;->manager:Lcom/google/android/play/core/review/ReviewManager;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronInAppReview;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronInAppReview;->reviewInfo:Lcom/google/android/play/core/review/ReviewInfo;

    invoke-interface {v0, v1, v2}, Lcom/google/android/play/core/review/ReviewManager;->launchReviewFlow(Landroid/app/Activity;Lcom/google/android/play/core/review/ReviewInfo;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 70
    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronInAppReview$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronInAppReview$2;-><init>(Lcom/google/appinventor/components/runtime/NiotronInAppReview;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public ReviewCompleted()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Review completed"
    .end annotation

    const/4 v0, 0x0

    .line 93
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ReviewCompleted"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method
