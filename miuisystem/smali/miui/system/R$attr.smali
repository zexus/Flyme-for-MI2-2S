.class public final Lmiui/system/R$attr;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/system/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "attr"
.end annotation


# static fields
.field public static capability:I

.field public static cloudStateViewStyle:I

.field public static contentAuthority:I

.field public static pushName:I

.field public static pushType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/high16 v0, 0x12010000

    sput v0, Lmiui/system/R$attr;->capability:I

    .line 30
    const v0, 0x12010004

    sput v0, Lmiui/system/R$attr;->cloudStateViewStyle:I

    .line 38
    const v0, 0x12010001

    sput v0, Lmiui/system/R$attr;->contentAuthority:I

    .line 46
    const v0, 0x12010002

    sput v0, Lmiui/system/R$attr;->pushName:I

    .line 54
    const v0, 0x12010003

    sput v0, Lmiui/system/R$attr;->pushType:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
