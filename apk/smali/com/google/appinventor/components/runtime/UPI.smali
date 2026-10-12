.class public Lcom/google/appinventor/components/runtime/UPI;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/ActivityResultListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "UPI (Unified Payment Interface) Payment Gateway. Use this to accept payment using UPI"
    iconName = "images/upi.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static LOG_TAG:Ljava/lang/String; = "Niotron UPI"


# instance fields
.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private receiverName:Ljava/lang/String;

.field private requestCode:I

.field private result:Ljava/lang/String;

.field private resultIntent:Landroid/content/Intent;

.field private transactionAmount:Ljava/lang/String;

.field private transactionNote:Ljava/lang/String;

.field public upiId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 33
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/UPI;->upiId:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/UPI;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    return-void
.end method

.method private upiValidation(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 83
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 84
    sget-object v1, Lcom/google/appinventor/components/runtime/UPI;->LOG_TAG:Ljava/lang/String;

    const-string v2, "upiValidation: "

    .line 0
    invoke-static {v2, p1, v1}, L_COROUTINE/a;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 87
    const-string p1, "discard"

    .line 91
    :cond_0
    const-string v1, "&"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 92
    array-length v1, p1

    const-string v2, ""

    move-object v3, v2

    move-object v4, v3

    const/4 v5, 0x0

    :goto_0
    const-string v6, "Payment cancelled by user."

    if-ge v5, v1, :cond_5

    aget-object v7, p1, v5

    .line 93
    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 94
    array-length v8, v7

    const/4 v9, 0x2

    if-ge v8, v9, :cond_1

    move-object v3, v6

    goto :goto_1

    .line 96
    :cond_1
    aget-object v6, v7, v0

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v8, "Status"

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v8, 0x1

    if-eqz v6, :cond_2

    .line 97
    aget-object v2, v7, v8

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 98
    :cond_2
    aget-object v6, v7, v0

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v9, "ApprovalRefNo"

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    aget-object v6, v7, v0

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v9, "txnRef"

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 99
    :cond_3
    aget-object v4, v7, v8

    :cond_4
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 103
    :cond_5
    const-string p1, "Success"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 104
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/UPI;->transactionAmount:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/UPI;->TransactionSuccessful(Ljava/lang/String;)V

    .line 105
    sget-object p1, Lcom/google/appinventor/components/runtime/UPI;->LOG_TAG:Ljava/lang/String;

    const-string v0, "responseStr: "

    .line 0
    invoke-static {v0, v4, p1}, L_COROUTINE/a;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 106
    :cond_6
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 107
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/UPI;->TransactionCancelled()V

    return-void

    .line 109
    :cond_7
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/UPI;->TransactionFailed()V

    return-void
.end method


# virtual methods
.method public ActivityNotFound()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered when activity not found"
    .end annotation

    const/4 v0, 0x0

    .line 131
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ActivityNotFound"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Amount(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->GENERAL:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 156
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/UPI;->transactionAmount:Ljava/lang/String;

    return-void
.end method

.method public Note(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->GENERAL:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 150
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/UPI;->transactionNote:Ljava/lang/String;

    return-void
.end method

.method public Pay(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Starts the payment"
    .end annotation

    .line 163
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/UPI;->startTransaction(Ljava/lang/String;)V

    return-void
.end method

.method public ReceiverName(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->CREDENTIALS:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 144
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/UPI;->receiverName:Ljava/lang/String;

    return-void
.end method

.method public TransactionCancelled()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered when Payment Cancel"
    .end annotation

    const/4 v0, 0x0

    .line 126
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TransactionCancelled"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public TransactionFailed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered when Payment Fail"
    .end annotation

    const/4 v0, 0x0

    .line 121
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TransactionFailed"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public TransactionSuccessful(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered when transaction successful"
    .end annotation

    .line 116
    const-string v0, "PaymentSuccessful"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public UpiId(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->CREDENTIALS:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 138
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/UPI;->upiId:Ljava/lang/String;

    return-void
.end method

.method public resultReturned(IILandroid/content/Intent;)V
    .locals 3

    .line 60
    iget v0, p0, Lcom/google/appinventor/components/runtime/UPI;->requestCode:I

    if-ne p1, v0, :cond_3

    const/4 p1, -0x1

    .line 61
    const-string v0, "nothing"

    const-string v1, "onActivityResult: Return data is null"

    const-string v2, "UPI"

    if-eq p1, p2, :cond_1

    const/16 p1, 0xb

    if-ne p2, p1, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 77
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/UPI;->upiValidation(Ljava/util/ArrayList;)V

    return-void

    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    .line 63
    const-string p1, "response"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 64
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "onActivityResult: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 66
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/UPI;->upiValidation(Ljava/util/ArrayList;)V

    return-void

    .line 69
    :cond_2
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 71
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/UPI;->upiValidation(Ljava/util/ArrayList;)V

    :cond_3
    return-void
.end method

.method public startTransaction(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/UPI;->resultIntent:Landroid/content/Intent;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/UPI;->result:Ljava/lang/String;

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/google/appinventor/components/runtime/UPI;->requestCode:I

    .line 41
    const-string v0, "upi://pay"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "pa"

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/UPI;->upiId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "pn"

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/UPI;->receiverName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "tn"

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/UPI;->transactionNote:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "am"

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/UPI;->transactionAmount:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "cu"

    const-string v2, "INR"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 42
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 44
    invoke-static {v1, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    .line 45
    iget v0, p0, Lcom/google/appinventor/components/runtime/UPI;->requestCode:I

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/UPI;->requestCode:I

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/UPI;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/UPI;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/UPI;->requestCode:I

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 53
    sget-object v0, Lcom/google/appinventor/components/runtime/UPI;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/UPI;->ActivityNotFound()V

    :cond_1
    return-void
.end method
