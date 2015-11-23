.class public abstract Lcom/google/common/base/n;
.super Ljava/lang/Object;
.source "Ticker.java"


# static fields
.field private static final azY:Lcom/google/common/base/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/google/common/base/o;

    invoke-direct {v0}, Lcom/google/common/base/o;-><init>()V

    sput-object v0, Lcom/google/common/base/n;->azY:Lcom/google/common/base/n;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static wF()Lcom/google/common/base/n;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/google/common/base/n;->azY:Lcom/google/common/base/n;

    return-object v0
.end method


# virtual methods
.method public abstract wE()J
.end method
