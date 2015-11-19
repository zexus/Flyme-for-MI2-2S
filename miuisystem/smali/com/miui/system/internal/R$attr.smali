.class public final Lcom/miui/system/internal/R$attr;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/system/internal/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "attr"
.end annotation


# static fields
.field public static capability:I

.field public static cloudCountNormalTextAppearance:I

.field public static cloudStateViewStyle:I

.field public static cloudStatusHighlightTextAppearance:I

.field public static cloudStatusNormalTextAppearance:I

.field public static contentAuthority:I

.field public static pushName:I

.field public static pushType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/high16 v0, 0x12010000

    sput v0, Lcom/miui/system/internal/R$attr;->capability:I

    .line 40
    const v0, 0x12010005

    sput v0, Lcom/miui/system/internal/R$attr;->cloudCountNormalTextAppearance:I

    .line 44
    const v0, 0x12010004

    sput v0, Lcom/miui/system/internal/R$attr;->cloudStateViewStyle:I

    .line 48
    const v0, 0x12010007

    sput v0, Lcom/miui/system/internal/R$attr;->cloudStatusHighlightTextAppearance:I

    .line 52
    const v0, 0x12010006

    sput v0, Lcom/miui/system/internal/R$attr;->cloudStatusNormalTextAppearance:I

    .line 60
    const v0, 0x12010001

    sput v0, Lcom/miui/system/internal/R$attr;->contentAuthority:I

    .line 68
    const v0, 0x12010002

    sput v0, Lcom/miui/system/internal/R$attr;->pushName:I

    .line 76
    const v0, 0x12010003

    sput v0, Lcom/miui/system/internal/R$attr;->pushType:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
