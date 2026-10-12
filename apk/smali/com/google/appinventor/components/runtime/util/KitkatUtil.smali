.class public final Lcom/google/appinventor/components/runtime/util/KitkatUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMessagesFromIntent(Landroid/content/Intent;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    invoke-static {p0}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 39
    array-length v1, p0

    if-ltz v1, :cond_0

    .line 40
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public static getMinHeight(Landroid/widget/TextView;)I
    .locals 0

    .line 67
    invoke-virtual {p0}, Landroid/widget/TextView;->getMinHeight()I

    move-result p0

    return p0
.end method

.method public static getMinWidth(Landroid/widget/TextView;)I
    .locals 0

    .line 53
    invoke-virtual {p0}, Landroid/widget/TextView;->getMinWidth()I

    move-result p0

    return p0
.end method
