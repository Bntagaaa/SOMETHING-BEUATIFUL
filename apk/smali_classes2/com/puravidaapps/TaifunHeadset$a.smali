.class Lcom/puravidaapps/TaifunHeadset$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/puravidaapps/TaifunHeadset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/puravidaapps/TaifunHeadset;


# direct methods
.method public constructor <init>(Lcom/puravidaapps/TaifunHeadset;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/puravidaapps/TaifunHeadset$a;->a:Lcom/puravidaapps/TaifunHeadset;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 97
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 98
    const-string p1, "state"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 99
    iget-object p2, p0, Lcom/puravidaapps/TaifunHeadset$a;->a:Lcom/puravidaapps/TaifunHeadset;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 36
    const-string p1, "unknown"

    iput-object p1, p2, Lcom/puravidaapps/TaifunHeadset;->e:Ljava/lang/String;

    goto :goto_0

    .line 36
    :cond_0
    const-string p1, "plugged"

    iput-object p1, p2, Lcom/puravidaapps/TaifunHeadset;->e:Ljava/lang/String;

    goto :goto_0

    .line 36
    :cond_1
    const-string p1, "unplugged"

    iput-object p1, p2, Lcom/puravidaapps/TaifunHeadset;->e:Ljava/lang/String;

    .line 36
    :goto_0
    iget-object p1, p2, Lcom/puravidaapps/TaifunHeadset;->e:Ljava/lang/String;

    .line 109
    invoke-virtual {p2, p1}, Lcom/puravidaapps/TaifunHeadset;->Changed(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
