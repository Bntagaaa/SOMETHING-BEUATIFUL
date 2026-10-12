.class public final Lcom/google/appinventor/components/runtime/NiotronAppnextCore;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Niotron Appnext Core Component"
    iconName = "images/niotronAppnextCore.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "appnext-core.aar, appnext-core.jar, play-services-ads-identifier.aar, play-services-ads-identifier.jar, work-runtime.aar, work-runtime.jar, play-services-basement.aar, play-services-basement.jar, glide.aar, glide.jar, room-runtime.aar, room-runtime.jar, sqlite-framework.aar, sqlite-framework.jar, sqlite.aar, sqlite.jar, gifdecoder.aar, gifdecoder.jar, exifinterface.aar, exifinterface.jar, annotation.jar, disklrucache.jar, glide-annotations.jar"
.end annotation


# instance fields
.field private consent:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 32
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextCore;->consent:Z

    .line 33
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/appnext/base/Appnext;->init(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public Consent(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->PRIVACY:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set Consent"
    .end annotation

    .line 39
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextCore;->consent:Z

    .line 40
    const-string v0, "consent"

    if-eqz p1, :cond_0

    .line 41
    const-string p1, "true"

    invoke-static {v0, p1}, Lcom/appnext/base/Appnext;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 43
    :cond_0
    const-string p1, "false"

    invoke-static {v0, p1}, Lcom/appnext/base/Appnext;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public Consent()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get Consent"
    .end annotation

    .line 49
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextCore;->consent:Z

    return v0
.end method
