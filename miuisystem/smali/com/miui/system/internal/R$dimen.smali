.class public final Lcom/miui/system/internal/R$dimen;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/system/internal/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "dimen"
.end annotation


# static fields
.field public static customizer_icon_size:I

.field public static notification_row_height:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const/high16 v0, 0x12080000

    sput v0, Lcom/miui/system/internal/R$dimen;->customizer_icon_size:I

    .line 85
    const v0, 0x12080004

    sput v0, Lcom/miui/system/internal/R$dimen;->notification_row_height:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
