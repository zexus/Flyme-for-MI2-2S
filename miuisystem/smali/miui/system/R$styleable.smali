.class public final Lmiui/system/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/system/R;
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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 144
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lmiui/system/R$styleable;->CloudPush:[I

    .line 160
    const/4 v0, 0x0

    sput v0, Lmiui/system/R$styleable;->CloudPush_capability:I

    .line 174
    const/4 v0, 0x1

    sput v0, Lmiui/system/R$styleable;->CloudPush_contentAuthority:I

    .line 188
    const/4 v0, 0x2

    sput v0, Lmiui/system/R$styleable;->CloudPush_pushName:I

    .line 202
    sput v1, Lmiui/system/R$styleable;->CloudPush_pushType:I

    .line 211
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lmiui/system/R$styleable;->MiCloudStateView:[I

    return-void

    .line 144
    :array_0
    .array-data 4
        0x12010000
        0x12010001
        0x12010002
        0x12010003
    .end array-data

    .line 211
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
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
