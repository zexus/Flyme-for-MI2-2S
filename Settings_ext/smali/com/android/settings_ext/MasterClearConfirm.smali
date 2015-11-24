.class public Lcom/android/settings_ext/MasterClearConfirm;
.super Landroid/app/Fragment;
.source "MasterClearConfirm.java"


# instance fields
.field private fh:Landroid/view/View;

.field private fj:Landroid/view/View$OnClickListener;

.field private ob:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 55
    new-instance v0, Lcom/android/settings_ext/cV;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/cV;-><init>(Lcom/android/settings_ext/MasterClearConfirm;)V

    iput-object v0, p0, Lcom/android/settings_ext/MasterClearConfirm;->fj:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/MasterClearConfirm;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings_ext/MasterClearConfirm;->en()V

    return-void
.end method

.method private aX()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/settings_ext/MasterClearConfirm;->fh:Landroid/view/View;

    const v1, 0x7f100132

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/MasterClearConfirm;->fj:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    return-void
.end method

.method private en()V
    .locals 3

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/android/settings_ext/MasterClearConfirm;->ob:Z

    if-eqz v0, :cond_0

    .line 107
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 108
    const-string v1, "android.intent.extra.REASON"

    const-string v2, "MasterClearConfirm"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    sget-object v1, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 110
    invoke-virtual {p0}, Lcom/android/settings_ext/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 118
    :goto_0
    return-void

    .line 112
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 113
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 114
    const-string v1, "android.intent.extra.REASON"

    const-string v2, "MasterClearConfirm"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    invoke-virtual {p0}, Lcom/android/settings_ext/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 142
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 144
    invoke-virtual {p0}, Lcom/android/settings_ext/MasterClearConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_0

    const-string v1, "erase_sd"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ext/MasterClearConfirm;->ob:Z

    .line 146
    return-void

    .line 145
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 131
    invoke-virtual {p0}, Lcom/android/settings_ext/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    const-string v1, "no_factory_reset"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    const v0, 0x7f040082

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 137
    :goto_0
    return-object v0

    .line 135
    :cond_0
    const v0, 0x7f040081

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/MasterClearConfirm;->fh:Landroid/view/View;

    .line 136
    invoke-direct {p0}, Lcom/android/settings_ext/MasterClearConfirm;->aX()V

    .line 137
    iget-object v0, p0, Lcom/android/settings_ext/MasterClearConfirm;->fh:Landroid/view/View;

    goto :goto_0
.end method
