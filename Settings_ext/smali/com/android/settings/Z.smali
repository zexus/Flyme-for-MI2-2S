.class public abstract Lcom/android/settings_ext/Z;
.super Ljava/lang/Object;
.source "BaseSettingsController.java"


# instance fields
.field protected ca:Landroid/widget/TextView;

.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/settings_ext/Z;->mContext:Landroid/content/Context;

    .line 12
    iput-object p2, p0, Lcom/android/settings_ext/Z;->ca:Landroid/widget/TextView;

    .line 13
    return-void
.end method


# virtual methods
.method public a(Landroid/widget/TextView;)V
    .locals 2

    .prologue
    .line 16
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings_ext/Z;->ca:Landroid/widget/TextView;

    if-eq v0, p1, :cond_0

    .line 17
    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/Z;

    .line 18
    if-eqz v0, :cond_0

    .line 19
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/Z;->a(Landroid/widget/TextView;)V

    .line 22
    :cond_0
    iput-object p1, p0, Lcom/android/settings_ext/Z;->ca:Landroid/widget/TextView;

    .line 23
    invoke-virtual {p0}, Lcom/android/settings_ext/Z;->ad()V

    .line 24
    return-void
.end method

.method protected abstract ad()V
.end method

.method public abstract pause()V
.end method

.method public abstract resume()V
.end method
