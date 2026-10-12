.class Lcom/google/appinventor/components/runtime/NiotronAdManagerNativeAd$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronAdManagerNativeAd;->LoadAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronAdManagerNativeAd;

.field final synthetic val$backgroundColor:Ljava/lang/String;

.field final synthetic val$buttonColor:Ljava/lang/String;

.field final synthetic val$buttonTextColor:Ljava/lang/String;

.field final synthetic val$primaryTextColor:Ljava/lang/String;

.field final synthetic val$secondaryTextColor:Ljava/lang/String;

.field final synthetic val$tertiaryTextColor:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronAdManagerNativeAd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerNativeAd$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronAdManagerNativeAd;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerNativeAd$2;->val$backgroundColor:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerNativeAd$2;->val$primaryTextColor:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerNativeAd$2;->val$secondaryTextColor:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerNativeAd$2;->val$tertiaryTextColor:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerNativeAd$2;->val$buttonColor:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerNativeAd$2;->val$buttonTextColor:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNativeAdLoaded(Lcom/google/android/gms/ads/nativead/NativeAd;)V
    .locals 5

    .line 58
    :try_start_0
    new-instance v0, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle$Builder;

    invoke-direct {v0}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle$Builder;-><init>()V

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerNativeAd$2;->val$backgroundColor:Ljava/lang/String;

    .line 59
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle$Builder;->withMainBackgroundColor(Landroid/graphics/drawable/ColorDrawable;)Lcom/google/android/ads/nativetemplates/NativeTemplateStyle$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerNativeAd$2;->val$primaryTextColor:Ljava/lang/String;

    .line 60
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle$Builder;->withPrimaryTextTypefaceColor(I)Lcom/google/android/ads/nativetemplates/NativeTemplateStyle$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerNativeAd$2;->val$secondaryTextColor:Ljava/lang/String;

    .line 61
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle$Builder;->withSecondaryTextTypefaceColor(I)Lcom/google/android/ads/nativetemplates/NativeTemplateStyle$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerNativeAd$2;->val$tertiaryTextColor:Ljava/lang/String;

    .line 62
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle$Builder;->withTertiaryTextTypefaceColor(I)Lcom/google/android/ads/nativetemplates/NativeTemplateStyle$Builder;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerNativeAd$2;->val$buttonColor:Ljava/lang/String;

    .line 63
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle$Builder;->withCallToActionBackgroundColor(Landroid/graphics/drawable/ColorDrawable;)Lcom/google/android/ads/nativetemplates/NativeTemplateStyle$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerNativeAd$2;->val$buttonTextColor:Ljava/lang/String;

    .line 64
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle$Builder;->withCallToActionTypefaceColor(I)Lcom/google/android/ads/nativetemplates/NativeTemplateStyle$Builder;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle$Builder;->build()Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;

    move-result-object v0

    .line 66
    new-instance v1, Lcom/google/android/ads/nativetemplates/TemplateView;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerNativeAd$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronAdManagerNativeAd;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerNativeAd$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronAdManagerNativeAd;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/NiotronAdManagerNativeAd;->b(Lcom/google/appinventor/components/runtime/NiotronAdManagerNativeAd;)I

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "medium_template"

    goto :goto_0

    :cond_0
    const-string v3, "small_template"

    :goto_0
    invoke-direct {v1, v2, v3}, Lcom/google/android/ads/nativetemplates/TemplateView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 67
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/google/android/ads/nativetemplates/TemplateView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerNativeAd$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronAdManagerNativeAd;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NiotronAdManagerNativeAd;->c(Lcom/google/appinventor/components/runtime/NiotronAdManagerNativeAd;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 69
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerNativeAd$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronAdManagerNativeAd;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NiotronAdManagerNativeAd;->c(Lcom/google/appinventor/components/runtime/NiotronAdManagerNativeAd;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 70
    invoke-virtual {v1, v0}, Lcom/google/android/ads/nativetemplates/TemplateView;->setStyles(Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;)V

    .line 71
    invoke-virtual {v1, p1}, Lcom/google/android/ads/nativetemplates/TemplateView;->setNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd;)V

    .line 72
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerNativeAd$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronAdManagerNativeAd;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronAdManagerNativeAd;->AdLoaded()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 74
    :catch_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerNativeAd$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronAdManagerNativeAd;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/NiotronAdManagerNativeAd;->a(Lcom/google/appinventor/components/runtime/NiotronAdManagerNativeAd;)Landroid/app/Activity;

    move-result-object p1

    const-string v0, "Invalid hex value given in Load Ad Block"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
