.class public final enum Lcom/google/common/io/FileWriteMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/io/FileWriteMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum APPEND:Lcom/google/common/io/FileWriteMode;

.field public static final synthetic a:[Lcom/google/common/io/FileWriteMode;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    .line 28
    new-instance v1, Lcom/google/common/io/FileWriteMode;

    .line 26
    const-string v2, "APPEND"

    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    sput-object v1, Lcom/google/common/io/FileWriteMode;->APPEND:Lcom/google/common/io/FileWriteMode;

    const/4 v2, 0x1

    .line 25
    new-array v2, v2, [Lcom/google/common/io/FileWriteMode;

    aput-object v1, v2, v0

    sput-object v2, Lcom/google/common/io/FileWriteMode;->a:[Lcom/google/common/io/FileWriteMode;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/io/FileWriteMode;
    .locals 1

    .line 25
    const-class v0, Lcom/google/common/io/FileWriteMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/io/FileWriteMode;

    return-object p0
.end method

.method public static values()[Lcom/google/common/io/FileWriteMode;
    .locals 1

    .line 25
    sget-object v0, Lcom/google/common/io/FileWriteMode;->a:[Lcom/google/common/io/FileWriteMode;

    invoke-virtual {v0}, [Lcom/google/common/io/FileWriteMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/io/FileWriteMode;

    return-object v0
.end method
