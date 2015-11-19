.class public final Lmiui/system/R$array;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/system/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "array"
.end annotation


# static fields
.field public static mobile_operator_display_names:I

.field public static mobile_operator_numeric_equivalencies:I

.field public static mobile_operator_numeric_values:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/high16 v0, 0x12050000

    sput v0, Lmiui/system/R$array;->mobile_operator_display_names:I

    .line 15
    const v0, 0x12050001

    sput v0, Lmiui/system/R$array;->mobile_operator_numeric_equivalencies:I

    .line 16
    const v0, 0x12050002

    sput v0, Lmiui/system/R$array;->mobile_operator_numeric_values:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
