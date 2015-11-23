.class public Lcom/android/settings/bp;
.super Lcom/android/settings/br;
.source "DataUsageSummary.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 1479
    const v0, 0x7f09085b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/br;-><init>(Ljava/lang/CharSequence;)V

    .line 1480
    return-void
.end method
