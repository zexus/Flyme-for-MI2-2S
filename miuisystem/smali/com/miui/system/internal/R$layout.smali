.class public final Lcom/miui/system/internal/R$layout;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/system/internal/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "layout"
.end annotation


# static fields
.field public static app_list_item:I

.field public static app_picker:I

.field public static cloud_panel:I

.field public static component_list:I

.field public static micloud_state_view:I

.field public static notification_panel:I

.field public static provision_bg:I

.field public static status_bar_notification:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    const v0, 0x12030003

    sput v0, Lcom/miui/system/internal/R$layout;->app_list_item:I

    .line 107
    const v0, 0x12030004

    sput v0, Lcom/miui/system/internal/R$layout;->app_picker:I

    .line 108
    const/high16 v0, 0x12030000

    sput v0, Lcom/miui/system/internal/R$layout;->cloud_panel:I

    .line 109
    const v0, 0x12030005

    sput v0, Lcom/miui/system/internal/R$layout;->component_list:I

    .line 110
    const v0, 0x12030001

    sput v0, Lcom/miui/system/internal/R$layout;->micloud_state_view:I

    .line 111
    const v0, 0x12030006

    sput v0, Lcom/miui/system/internal/R$layout;->notification_panel:I

    .line 112
    const v0, 0x12030002

    sput v0, Lcom/miui/system/internal/R$layout;->provision_bg:I

    .line 113
    const v0, 0x12030007

    sput v0, Lcom/miui/system/internal/R$layout;->status_bar_notification:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
