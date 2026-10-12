.class public final enum Landroidx/loader/content/ModernAsyncTask$Status;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/loader/content/ModernAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/loader/content/ModernAsyncTask$Status;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FINISHED:Landroidx/loader/content/ModernAsyncTask$Status;

.field public static final enum PENDING:Landroidx/loader/content/ModernAsyncTask$Status;

.field public static final enum RUNNING:Landroidx/loader/content/ModernAsyncTask$Status;

.field public static final synthetic a:[Landroidx/loader/content/ModernAsyncTask$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 103
    new-instance v3, Landroidx/loader/content/ModernAsyncTask$Status;

    .line 99
    const-string v4, "PENDING"

    invoke-direct {v3, v4, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 103
    sput-object v3, Landroidx/loader/content/ModernAsyncTask$Status;->PENDING:Landroidx/loader/content/ModernAsyncTask$Status;

    .line 107
    new-instance v4, Landroidx/loader/content/ModernAsyncTask$Status;

    .line 99
    const-string v5, "RUNNING"

    invoke-direct {v4, v5, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 107
    sput-object v4, Landroidx/loader/content/ModernAsyncTask$Status;->RUNNING:Landroidx/loader/content/ModernAsyncTask$Status;

    .line 111
    new-instance v5, Landroidx/loader/content/ModernAsyncTask$Status;

    .line 99
    const-string v6, "FINISHED"

    invoke-direct {v5, v6, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 111
    sput-object v5, Landroidx/loader/content/ModernAsyncTask$Status;->FINISHED:Landroidx/loader/content/ModernAsyncTask$Status;

    const/4 v6, 0x3

    .line 99
    new-array v6, v6, [Landroidx/loader/content/ModernAsyncTask$Status;

    aput-object v3, v6, v2

    aput-object v4, v6, v1

    aput-object v5, v6, v0

    sput-object v6, Landroidx/loader/content/ModernAsyncTask$Status;->a:[Landroidx/loader/content/ModernAsyncTask$Status;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/loader/content/ModernAsyncTask$Status;
    .locals 1

    .line 99
    const-class v0, Landroidx/loader/content/ModernAsyncTask$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/loader/content/ModernAsyncTask$Status;

    return-object p0
.end method

.method public static values()[Landroidx/loader/content/ModernAsyncTask$Status;
    .locals 1

    .line 99
    sget-object v0, Landroidx/loader/content/ModernAsyncTask$Status;->a:[Landroidx/loader/content/ModernAsyncTask$Status;

    invoke-virtual {v0}, [Landroidx/loader/content/ModernAsyncTask$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/loader/content/ModernAsyncTask$Status;

    return-object v0
.end method
