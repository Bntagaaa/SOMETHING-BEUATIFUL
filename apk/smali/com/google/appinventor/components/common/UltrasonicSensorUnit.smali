.class public final enum Lcom/google/appinventor/components/common/UltrasonicSensorUnit;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/common/UltrasonicSensorUnit;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Centimeters:Lcom/google/appinventor/components/common/UltrasonicSensorUnit;

.field public static final enum Inches:Lcom/google/appinventor/components/common/UltrasonicSensorUnit;

.field public static final c:Ljava/util/HashMap;

.field public static final synthetic d:[Lcom/google/appinventor/components/common/UltrasonicSensorUnit;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 15
    new-instance v0, Lcom/google/appinventor/components/common/UltrasonicSensorUnit;

    const-string v1, "Centimeters"

    const/4 v2, 0x0

    const-string v3, "cm"

    invoke-direct {v0, v2, v2, v1, v3}, Lcom/google/appinventor/components/common/UltrasonicSensorUnit;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/UltrasonicSensorUnit;->Centimeters:Lcom/google/appinventor/components/common/UltrasonicSensorUnit;

    .line 16
    new-instance v1, Lcom/google/appinventor/components/common/UltrasonicSensorUnit;

    const-string v3, "inch"

    const-string v4, "Inches"

    const/4 v5, 0x1

    invoke-direct {v1, v5, v5, v4, v3}, Lcom/google/appinventor/components/common/UltrasonicSensorUnit;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/google/appinventor/components/common/UltrasonicSensorUnit;->Inches:Lcom/google/appinventor/components/common/UltrasonicSensorUnit;

    const/4 v3, 0x2

    .line 14
    new-array v3, v3, [Lcom/google/appinventor/components/common/UltrasonicSensorUnit;

    aput-object v0, v3, v2

    aput-object v1, v3, v5

    .line 14
    sput-object v3, Lcom/google/appinventor/components/common/UltrasonicSensorUnit;->d:[Lcom/google/appinventor/components/common/UltrasonicSensorUnit;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/common/UltrasonicSensorUnit;->c:Ljava/util/HashMap;

    .line 37
    invoke-static {}, Lcom/google/appinventor/components/common/UltrasonicSensorUnit;->values()[Lcom/google/appinventor/components/common/UltrasonicSensorUnit;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 38
    sget-object v4, Lcom/google/appinventor/components/common/UltrasonicSensorUnit;->c:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/google/appinventor/components/common/UltrasonicSensorUnit;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v2, v5

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput-object p4, p0, Lcom/google/appinventor/components/common/UltrasonicSensorUnit;->a:Ljava/lang/String;

    .line 23
    iput p2, p0, Lcom/google/appinventor/components/common/UltrasonicSensorUnit;->b:I

    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/UltrasonicSensorUnit;
    .locals 1

    .line 43
    sget-object v0, Lcom/google/appinventor/components/common/UltrasonicSensorUnit;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/common/UltrasonicSensorUnit;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/UltrasonicSensorUnit;
    .locals 1

    .line 14
    const-class v0, Lcom/google/appinventor/components/common/UltrasonicSensorUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/common/UltrasonicSensorUnit;

    return-object p0
.end method

.method public static values()[Lcom/google/appinventor/components/common/UltrasonicSensorUnit;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/appinventor/components/common/UltrasonicSensorUnit;->d:[Lcom/google/appinventor/components/common/UltrasonicSensorUnit;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/UltrasonicSensorUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/UltrasonicSensorUnit;

    return-object v0
.end method


# virtual methods
.method public toInt()Ljava/lang/Integer;
    .locals 1

    .line 31
    iget v0, p0, Lcom/google/appinventor/components/common/UltrasonicSensorUnit;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/UltrasonicSensorUnit;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUnderlyingValue()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/google/appinventor/components/common/UltrasonicSensorUnit;->a:Ljava/lang/String;

    return-object v0
.end method
