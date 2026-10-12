.class final enum Lcom/google/android/material/datepicker/MaterialCalendar$d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/datepicker/MaterialCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/material/datepicker/MaterialCalendar$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/android/material/datepicker/MaterialCalendar$d;

.field public static final enum b:Lcom/google/android/material/datepicker/MaterialCalendar$d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 65
    new-instance v0, Lcom/google/android/material/datepicker/MaterialCalendar$d;

    .line 64
    const-string v1, "DAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 65
    sput-object v0, Lcom/google/android/material/datepicker/MaterialCalendar$d;->a:Lcom/google/android/material/datepicker/MaterialCalendar$d;

    .line 66
    new-instance v0, Lcom/google/android/material/datepicker/MaterialCalendar$d;

    .line 64
    const-string v1, "YEAR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 66
    sput-object v0, Lcom/google/android/material/datepicker/MaterialCalendar$d;->b:Lcom/google/android/material/datepicker/MaterialCalendar$d;

    return-void
.end method
