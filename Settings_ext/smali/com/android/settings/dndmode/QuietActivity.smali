.class public Lcom/android/settings_ext/dndmode/QuietActivity;
.super Lmiui/app/Activity;
.source "QuietActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    .line 31
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 22
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const v0, 0x7f040052

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/dndmode/QuietActivity;->setContentView(I)V

    .line 25
    if-nez p1, :cond_0

    .line 26
    invoke-virtual {p0}, Lcom/android/settings_ext/dndmode/QuietActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f1000bf

    new-instance v2, Lcom/android/settings_ext/dndmode/q;

    invoke-direct {v2}, Lcom/android/settings_ext/dndmode/q;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 29
    :cond_0
    return-void
.end method
