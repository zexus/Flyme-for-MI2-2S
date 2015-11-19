.class public final Lmiui/system/R$layout;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/system/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "layout"
.end annotation


# static fields
.field public static cloud_panel:I

.field public static micloud_state_view:I

.field public static provision_bg:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const/high16 v0, 0x12030000

    sput v0, Lmiui/system/R$layout;->cloud_panel:I

    .line 69
    const v0, 0x12030001

    sput v0, Lmiui/system/R$layout;->micloud_state_view:I

    .line 70
    const v0, 0x12030002

    sput v0, Lmiui/system/R$layout;->provision_bg:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
