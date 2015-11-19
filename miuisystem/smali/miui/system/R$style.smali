.class public final Lmiui/system/R$style;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/system/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "style"
.end annotation


# static fields
.field public static Theme_Dark_System:I

.field public static Theme_Light_System:I

.field public static Widget_MiCloudStateView_Dark:I

.field public static Widget_MiCloudStateView_Light:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 117
    const v0, 0x12090001

    sput v0, Lmiui/system/R$style;->Theme_Dark_System:I

    .line 118
    const/high16 v0, 0x12090000

    sput v0, Lmiui/system/R$style;->Theme_Light_System:I

    .line 119
    const v0, 0x12090003

    sput v0, Lmiui/system/R$style;->Widget_MiCloudStateView_Dark:I

    .line 120
    const v0, 0x12090002

    sput v0, Lmiui/system/R$style;->Widget_MiCloudStateView_Light:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
