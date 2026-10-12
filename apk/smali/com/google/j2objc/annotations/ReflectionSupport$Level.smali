.class public final enum Lcom/google/j2objc/annotations/ReflectionSupport$Level;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/j2objc/annotations/ReflectionSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/j2objc/annotations/ReflectionSupport$Level;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FULL:Lcom/google/j2objc/annotations/ReflectionSupport$Level;

.field public static final enum NATIVE_ONLY:Lcom/google/j2objc/annotations/ReflectionSupport$Level;

.field public static final synthetic a:[Lcom/google/j2objc/annotations/ReflectionSupport$Level;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 40
    new-instance v2, Lcom/google/j2objc/annotations/ReflectionSupport$Level;

    .line 35
    const-string v3, "NATIVE_ONLY"

    invoke-direct {v2, v3, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    sput-object v2, Lcom/google/j2objc/annotations/ReflectionSupport$Level;->NATIVE_ONLY:Lcom/google/j2objc/annotations/ReflectionSupport$Level;

    .line 44
    new-instance v3, Lcom/google/j2objc/annotations/ReflectionSupport$Level;

    .line 35
    const-string v4, "FULL"

    invoke-direct {v3, v4, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    sput-object v3, Lcom/google/j2objc/annotations/ReflectionSupport$Level;->FULL:Lcom/google/j2objc/annotations/ReflectionSupport$Level;

    const/4 v4, 0x2

    .line 35
    new-array v4, v4, [Lcom/google/j2objc/annotations/ReflectionSupport$Level;

    aput-object v2, v4, v1

    aput-object v3, v4, v0

    sput-object v4, Lcom/google/j2objc/annotations/ReflectionSupport$Level;->a:[Lcom/google/j2objc/annotations/ReflectionSupport$Level;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/j2objc/annotations/ReflectionSupport$Level;
    .locals 1

    .line 35
    const-class v0, Lcom/google/j2objc/annotations/ReflectionSupport$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/j2objc/annotations/ReflectionSupport$Level;

    return-object p0
.end method

.method public static values()[Lcom/google/j2objc/annotations/ReflectionSupport$Level;
    .locals 1

    .line 35
    sget-object v0, Lcom/google/j2objc/annotations/ReflectionSupport$Level;->a:[Lcom/google/j2objc/annotations/ReflectionSupport$Level;

    invoke-virtual {v0}, [Lcom/google/j2objc/annotations/ReflectionSupport$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/j2objc/annotations/ReflectionSupport$Level;

    return-object v0
.end method
