.class public abstract Lcom/android/settings/V;
.super Ljava/lang/Object;
.source "BaseEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field protected bU:Lmiui/widget/SlidingButton;

.field protected bV:Z

.field protected mActivity:Landroid/app/Activity;

.field protected mObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lmiui/widget/SlidingButton;)V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/android/settings/W;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/W;-><init>(Lcom/android/settings/V;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/V;->mObserver:Landroid/database/ContentObserver;

    .line 25
    iput-object p1, p0, Lcom/android/settings/V;->mActivity:Landroid/app/Activity;

    .line 26
    iput-object p2, p0, Lcom/android/settings/V;->bU:Lmiui/widget/SlidingButton;

    .line 27
    return-void
.end method


# virtual methods
.method public a(Lmiui/widget/SlidingButton;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    iget-object v0, p0, Lcom/android/settings/V;->bU:Lmiui/widget/SlidingButton;

    if-ne v0, p1, :cond_0

    .line 61
    :goto_0
    return-void

    .line 51
    :cond_0
    if-eqz p1, :cond_1

    .line 52
    invoke-virtual {p1}, Lmiui/widget/SlidingButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/V;

    .line 53
    if-eqz v0, :cond_1

    .line 54
    invoke-virtual {v0, v1}, Lcom/android/settings/V;->a(Lmiui/widget/SlidingButton;)V

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/android/settings/V;->bU:Lmiui/widget/SlidingButton;

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 58
    iput-object p1, p0, Lcom/android/settings/V;->bU:Lmiui/widget/SlidingButton;

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/V;->update()V

    .line 60
    iget-object v0, p0, Lcom/android/settings/V;->bU:Lmiui/widget/SlidingButton;

    invoke-virtual {v0, p0}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method protected abstract getUri()Landroid/net/Uri;
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/android/settings/V;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/android/settings/V;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/V;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/android/settings/V;->bU:Lmiui/widget/SlidingButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/V;->bV:Z

    .line 47
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 30
    invoke-virtual {p0}, Lcom/android/settings/V;->update()V

    .line 31
    invoke-virtual {p0}, Lcom/android/settings/V;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/android/settings/V;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/V;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/V;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/android/settings/V;->bU:Lmiui/widget/SlidingButton;

    invoke-virtual {v0, p0}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 38
    iput-boolean v3, p0, Lcom/android/settings/V;->bV:Z

    .line 39
    return-void
.end method

.method protected abstract update()V
.end method
