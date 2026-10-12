.class public final enum Lorg/jetbrains/annotations/Nls$Capitalization;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jetbrains/annotations/Nls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Capitalization"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jetbrains/annotations/Nls$Capitalization;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum NotSpecified:Lorg/jetbrains/annotations/Nls$Capitalization;

.field public static final enum Sentence:Lorg/jetbrains/annotations/Nls$Capitalization;

.field public static final enum Title:Lorg/jetbrains/annotations/Nls$Capitalization;

.field public static final synthetic a:[Lorg/jetbrains/annotations/Nls$Capitalization;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 51
    new-instance v3, Lorg/jetbrains/annotations/Nls$Capitalization;

    .line 49
    const-string v4, "NotSpecified"

    invoke-direct {v3, v4, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    sput-object v3, Lorg/jetbrains/annotations/Nls$Capitalization;->NotSpecified:Lorg/jetbrains/annotations/Nls$Capitalization;

    .line 55
    new-instance v4, Lorg/jetbrains/annotations/Nls$Capitalization;

    .line 49
    const-string v5, "Title"

    invoke-direct {v4, v5, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    sput-object v4, Lorg/jetbrains/annotations/Nls$Capitalization;->Title:Lorg/jetbrains/annotations/Nls$Capitalization;

    .line 59
    new-instance v5, Lorg/jetbrains/annotations/Nls$Capitalization;

    .line 49
    const-string v6, "Sentence"

    invoke-direct {v5, v6, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 59
    sput-object v5, Lorg/jetbrains/annotations/Nls$Capitalization;->Sentence:Lorg/jetbrains/annotations/Nls$Capitalization;

    const/4 v6, 0x3

    .line 49
    new-array v6, v6, [Lorg/jetbrains/annotations/Nls$Capitalization;

    aput-object v3, v6, v2

    aput-object v4, v6, v1

    aput-object v5, v6, v0

    sput-object v6, Lorg/jetbrains/annotations/Nls$Capitalization;->a:[Lorg/jetbrains/annotations/Nls$Capitalization;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jetbrains/annotations/Nls$Capitalization;
    .locals 1

    .line 49
    const-class v0, Lorg/jetbrains/annotations/Nls$Capitalization;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/jetbrains/annotations/Nls$Capitalization;

    return-object p0
.end method

.method public static values()[Lorg/jetbrains/annotations/Nls$Capitalization;
    .locals 1

    .line 49
    sget-object v0, Lorg/jetbrains/annotations/Nls$Capitalization;->a:[Lorg/jetbrains/annotations/Nls$Capitalization;

    invoke-virtual {v0}, [Lorg/jetbrains/annotations/Nls$Capitalization;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jetbrains/annotations/Nls$Capitalization;

    return-object v0
.end method
