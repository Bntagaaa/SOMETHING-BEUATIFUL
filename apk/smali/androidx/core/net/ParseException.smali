.class public Landroidx/core/net/ParseException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field public final response:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    const-string v0, "Not a mailto scheme"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 30
    iput-object v0, p0, Landroidx/core/net/ParseException;->response:Ljava/lang/String;

    return-void
.end method
