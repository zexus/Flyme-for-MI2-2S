.class final Lcom/google/common/base/i;
.super Ljava/lang/Object;
.source "Platform.java"


# static fields
.field private static final azX:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/google/common/base/j;

    invoke-direct {v0}, Lcom/google/common/base/j;-><init>()V

    sput-object v0, Lcom/google/common/base/i;->azX:Ljava/lang/ThreadLocal;

    return-void
.end method

.method static wD()J
    .locals 2

    .prologue
    .line 37
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method
