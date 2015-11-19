.class public final Lcom/miui/system/internal/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/system/internal/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CloudPush:[I

.field public static CloudPush_capability:I

.field public static CloudPush_contentAuthority:I

.field public static CloudPush_pushName:I

.field public static CloudPush_pushType:I

.field public static final MiCloudStateView:[I

.field public static MiCloudStateView_cloudCountNormalTextAppearance:I

.field public static MiCloudStateView_cloudStatusHighlightTextAppearance:I

.field public static MiCloudStateView_cloudStatusNormalTextAppearance:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 300
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/system/internal/R$styleable;->CloudPush:[I

    .line 316
    sput v1, Lcom/miui/system/internal/R$styleable;->CloudPush_capability:I

    .line 330
    sput v2, Lcom/miui/system/internal/R$styleable;->CloudPush_contentAuthority:I

    .line 344
    sput v3, Lcom/miui/system/internal/R$styleable;->CloudPush_pushName:I

    .line 358
    sput v4, Lcom/miui/system/internal/R$styleable;->CloudPush_pushType:I

    .line 373
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/miui/system/internal/R$styleable;->MiCloudStateView:[I

    .line 385
    sput v1, Lcom/miui/system/internal/R$styleable;->MiCloudStateView_cloudCountNormalTextAppearance:I

    .line 395
    sput v3, Lcom/miui/system/internal/R$styleable;->MiCloudStateView_cloudStatusHighlightTextAppearance:I

    .line 405
    sput v2, Lcom/miui/system/internal/R$styleable;->MiCloudStateView_cloudStatusNormalTextAppearance:I

    return-void

    .line 300
    :array_0
    .array-data 4
        0x12010000
        0x12010001
        0x12010002
        0x12010003
    .end array-data

    .line 373
    :array_1
    .array-data 4
        0x12010005
        0x12010006
        0x12010007
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
