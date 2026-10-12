.class public abstract Lcom/google/zxing/client/android/result/ResultHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MAX_BUTTON_COUNT:I = 0x4


# instance fields
.field public final a:Lcom/google/zxing/client/result/ParsedResult;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;)V
    .locals 0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p2, p0, Lcom/google/zxing/client/android/result/ResultHandler;->a:Lcom/google/zxing/client/result/ParsedResult;

    return-void
.end method


# virtual methods
.method public areContentsSecure()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract getButtonCount()I
.end method

.method public abstract getButtonText(I)I
.end method

.method public getDisplayContents()Ljava/lang/CharSequence;
    .locals 3

    .line 177
    iget-object v0, p0, Lcom/google/zxing/client/android/result/ResultHandler;->a:Lcom/google/zxing/client/result/ParsedResult;

    invoke-virtual {v0}, Lcom/google/zxing/client/result/ParsedResult;->getDisplayResult()Ljava/lang/String;

    move-result-object v0

    .line 178
    const-string v1, "\r"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getDisplayTitle()I
.end method

.method public getResult()Lcom/google/zxing/client/result/ParsedResult;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/google/zxing/client/android/result/ResultHandler;->a:Lcom/google/zxing/client/result/ParsedResult;

    return-object v0
.end method

.method public final getType()Lcom/google/zxing/client/result/ParsedResultType;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/google/zxing/client/android/result/ResultHandler;->a:Lcom/google/zxing/client/result/ParsedResult;

    invoke-virtual {v0}, Lcom/google/zxing/client/result/ParsedResult;->getType()Lcom/google/zxing/client/result/ParsedResultType;

    move-result-object v0

    return-object v0
.end method

.method public abstract handleButtonPress(I)V
.end method
