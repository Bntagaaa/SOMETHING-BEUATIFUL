.class public final enum Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/j2objc/annotations/LoopTranslation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LoopStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FAST_ENUMERATION:Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;

.field public static final enum JAVA_ITERATOR:Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;

.field public static final synthetic a:[Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 44
    new-instance v2, Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;

    .line 36
    const-string v3, "JAVA_ITERATOR"

    invoke-direct {v2, v3, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    sput-object v2, Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;->JAVA_ITERATOR:Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;

    .line 50
    new-instance v3, Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;

    .line 36
    const-string v4, "FAST_ENUMERATION"

    invoke-direct {v3, v4, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 50
    sput-object v3, Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;->FAST_ENUMERATION:Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;

    const/4 v4, 0x2

    .line 36
    new-array v4, v4, [Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;

    aput-object v2, v4, v1

    aput-object v3, v4, v0

    sput-object v4, Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;->a:[Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;
    .locals 1

    .line 36
    const-class v0, Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;

    return-object p0
.end method

.method public static values()[Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;
    .locals 1

    .line 36
    sget-object v0, Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;->a:[Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;

    invoke-virtual {v0}, [Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/j2objc/annotations/LoopTranslation$LoopStyle;

    return-object v0
.end method
