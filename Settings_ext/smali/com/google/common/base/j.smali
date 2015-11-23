.class final Lcom/google/common/base/j;
.super Ljava/lang/ThreadLocal;
.source "Platform.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/google/common/base/j;->initialValue()[C

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()[C
    .locals 1

    .prologue
    .line 48
    const/16 v0, 0x400

    new-array v0, v0, [C

    return-object v0
.end method
