.class public Lcom/android/settings/dq;
.super Lcom/android/settings/V;
.source "MiuiBackgroundDataEnable.java"


# instance fields
.field private ft:Landroid/net/NetworkPolicyManager;

.field private ov:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lmiui/widget/SlidingButton;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/settings/V;-><init>(Landroid/app/Activity;Lmiui/widget/SlidingButton;)V

    .line 95
    new-instance v0, Lcom/android/settings/dt;

    invoke-direct {v0, p0}, Lcom/android/settings/dt;-><init>(Lcom/android/settings/dq;)V

    iput-object v0, p0, Lcom/android/settings/dq;->ov:Landroid/content/BroadcastReceiver;

    .line 32
    invoke-static {p1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dq;->ft:Landroid/net/NetworkPolicyManager;

    .line 33
    return-void
.end method

.method static synthetic a(Lcom/android/settings/dq;)Landroid/net/NetworkPolicyManager;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/settings/dq;->ft:Landroid/net/NetworkPolicyManager;

    return-object v0
.end method


# virtual methods
.method protected getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .prologue
    .line 71
    if-eqz p2, :cond_0

    .line 72
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/dq;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 73
    const v1, 0x7f090cff

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 74
    const v1, 0x7f090d00

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 76
    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/dr;

    invoke-direct {v2, p0}, Lcom/android/settings/dr;-><init>(Lcom/android/settings/dq;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 82
    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings/ds;

    invoke-direct {v2, p0}, Lcom/android/settings/ds;-><init>(Lcom/android/settings/dq;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 88
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dq;->ft:Landroid/net/NetworkPolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkPolicyManager;->setRestrictBackground(Z)V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/settings/dq;->bV:Z

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/settings/dq;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/settings/dq;->ov:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 61
    :cond_0
    invoke-super {p0}, Lcom/android/settings/V;->pause()V

    .line 62
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/settings/V;->resume()V

    .line 51
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 52
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lcom/android/settings/dq;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/settings/dq;->ov:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 54
    return-void
.end method

.method protected update()V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/dq;->bU:Lmiui/widget/SlidingButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 38
    iget-object v0, p0, Lcom/android/settings/dq;->bU:Lmiui/widget/SlidingButton;

    iget-object v1, p0, Lcom/android/settings/dq;->ft:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v1}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 39
    iget-object v0, p0, Lcom/android/settings/dq;->bU:Lmiui/widget/SlidingButton;

    invoke-virtual {v0, p0}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 40
    return-void
.end method
