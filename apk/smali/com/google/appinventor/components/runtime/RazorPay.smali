.class public final Lcom/google/appinventor/components/runtime/RazorPay;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->INTERNAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Razorpay payment gateway for users. Allows you to receive payment using mulltiple providers"
    iconName = "images/razorpay.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesActivities;
    activities = {
        .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/ActivityElement;
            name = "com.google.appinventor.components.runtime.RazorPay$RazorActivity"
        .end subannotation
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "razorpay.aar, razorpay.jar, play-services-auth.aar, play-services-auth.jar, play-services-auth-api-phone.aar, play-services-auth-api-phone.jar, play-services-wallet.aar, play-services-wallet.jar, play-services-auth-base.aar, play-services-auth-base.jar, play-services-identity.aar, play-services-identity.jar, play-services-maps.aar, play-services-maps.jar, play-services-base.aar, play-services-base.jar, play-services-tasks.aar, play-services-tasks.jar, play-services-basement.aar, play-services-basement.jar, annotation.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/RazorPay$RazorActivity;
    }
.end annotation


# static fields
.field private static API_KEY:Ljava/lang/String; = ""

.field private static TAG:Ljava/lang/String; = "RazorPay Niotron"

.field private static activity:Landroid/app/Activity; = null

.field private static amount:F = 100.0f

.field private static contact:Ljava/lang/String; = ""

.field private static currency:Ljava/lang/String; = ""

.field private static description:Ljava/lang/String; = ""

.field private static email:Ljava/lang/String; = ""

.field private static image:Ljava/lang/String; = ""

.field private static name:Ljava/lang/String; = ""

.field private static orderId:Ljava/lang/String; = ""

.field private static razorPay:Lcom/google/appinventor/components/runtime/RazorPay;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 47
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 48
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/RazorPay;->context:Landroid/content/Context;

    .line 49
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    sput-object p1, Lcom/google/appinventor/components/runtime/RazorPay;->activity:Landroid/app/Activity;

    .line 50
    sput-object p0, Lcom/google/appinventor/components/runtime/RazorPay;->razorPay:Lcom/google/appinventor/components/runtime/RazorPay;

    .line 51
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/RazorPay;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/razorpay/Checkout;->preload(Landroid/content/Context;)V

    return-void
.end method

.method public static ErrorOccurred(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 178
    sget-object v0, Lcom/google/appinventor/components/runtime/RazorPay;->razorPay:Lcom/google/appinventor/components/runtime/RazorPay;

    const-string v1, "ErrorOccurred"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public static OnPaymentFail(ILjava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Raises on payment fails"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 165
    sget-object v0, Lcom/google/appinventor/components/runtime/RazorPay;->razorPay:Lcom/google/appinventor/components/runtime/RazorPay;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const-string p0, "OnPaymentFail"

    invoke-static {v0, p0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public static OnPaymentSuccessful(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Raises on payment successfull"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 159
    sget-object v0, Lcom/google/appinventor/components/runtime/RazorPay;->razorPay:Lcom/google/appinventor/components/runtime/RazorPay;

    const-string v1, "PaymentSuccess"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public static bridge synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/appinventor/components/runtime/RazorPay;->API_KEY:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/appinventor/components/runtime/RazorPay;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic c()F
    .locals 1

    sget v0, Lcom/google/appinventor/components/runtime/RazorPay;->amount:F

    return v0
.end method

.method public static bridge synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/appinventor/components/runtime/RazorPay;->contact:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/appinventor/components/runtime/RazorPay;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic f()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/appinventor/components/runtime/RazorPay;->description:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic g()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/appinventor/components/runtime/RazorPay;->email:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic h()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/appinventor/components/runtime/RazorPay;->image:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic i()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/appinventor/components/runtime/RazorPay;->name:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic j()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/appinventor/components/runtime/RazorPay;->orderId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public Amount(F)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Amount for the payment"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p1, p1, v0

    .line 135
    sput p1, Lcom/google/appinventor/components/runtime/RazorPay;->amount:F

    return-void
.end method

.method public ApiKey(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->CREDENTIALS:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set API KEY"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 105
    sput-object p1, Lcom/google/appinventor/components/runtime/RazorPay;->API_KEY:Ljava/lang/String;

    return-void
.end method

.method public Currency(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Description for the payment"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 129
    sput-object p1, Lcom/google/appinventor/components/runtime/RazorPay;->currency:Ljava/lang/String;

    return-void
.end method

.method public Description(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Description for the payment"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 117
    sput-object p1, Lcom/google/appinventor/components/runtime/RazorPay;->description:Ljava/lang/String;

    return-void
.end method

.method public OrderId(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 141
    sput-object p1, Lcom/google/appinventor/components/runtime/RazorPay;->orderId:Ljava/lang/String;

    return-void
.end method

.method public PrefillContact(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Prefilled contact number"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 153
    sput-object p1, Lcom/google/appinventor/components/runtime/RazorPay;->contact:Ljava/lang/String;

    return-void
.end method

.method public PrefillEmail(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Prefilled email address"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 147
    sput-object p1, Lcom/google/appinventor/components/runtime/RazorPay;->email:Ljava/lang/String;

    return-void
.end method

.method public ReceiverLogo(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Logo of the receiver"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 123
    sput-object p1, Lcom/google/appinventor/components/runtime/RazorPay;->image:Ljava/lang/String;

    return-void
.end method

.method public RecieverName(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Name of the reciever"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 111
    sput-object p1, Lcom/google/appinventor/components/runtime/RazorPay;->name:Ljava/lang/String;

    return-void
.end method

.method public StartPayment()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = ""
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 171
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/google/appinventor/components/runtime/RazorPay;->activity:Landroid/app/Activity;

    const-class v2, Lcom/google/appinventor/components/runtime/RazorPay$RazorActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 172
    sget-object v1, Lcom/google/appinventor/components/runtime/RazorPay;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
