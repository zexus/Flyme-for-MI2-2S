.class Lcom/android/settings_ext/cV;
.super Ljava/lang/Object;
.source "MasterClearConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic oc:Lcom/android/settings_ext/MasterClearConfirm;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/MasterClearConfirm;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/settings_ext/cV;->oc:Lcom/android/settings_ext/MasterClearConfirm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private eo()Landroid/app/ProgressDialog;
    .locals 3

    .prologue
    .line 94
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/settings_ext/cV;->oc:Lcom/android/settings_ext/MasterClearConfirm;

    invoke-virtual {v1}, Lcom/android/settings_ext/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 95
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 96
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 97
    iget-object v1, p0, Lcom/android/settings_ext/cV;->oc:Lcom/android/settings_ext/MasterClearConfirm;

    invoke-virtual {v1}, Lcom/android/settings_ext/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f090482

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v1, p0, Lcom/android/settings_ext/cV;->oc:Lcom/android/settings_ext/MasterClearConfirm;

    invoke-virtual {v1}, Lcom/android/settings_ext/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f090483

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 101
    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 58
    invoke-static {}, Lcom/android/settings_ext/hl;->hr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/cV;->oc:Lcom/android/settings_ext/MasterClearConfirm;

    invoke-virtual {v0}, Lcom/android/settings_ext/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "persistent_data_block"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 65
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/service/persistentdata/PersistentDataBlockManager;->getOemUnlockEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 67
    invoke-direct {p0}, Lcom/android/settings_ext/cV;->eo()Landroid/app/ProgressDialog;

    move-result-object v1

    .line 68
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 72
    iget-object v2, p0, Lcom/android/settings_ext/cV;->oc:Lcom/android/settings_ext/MasterClearConfirm;

    invoke-virtual {v2}, Lcom/android/settings_ext/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v2

    .line 73
    iget-object v3, p0, Lcom/android/settings_ext/cV;->oc:Lcom/android/settings_ext/MasterClearConfirm;

    invoke-virtual {v3}, Lcom/android/settings_ext/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 74
    new-instance v3, Lcom/android/settings_ext/cW;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/android/settings_ext/cW;-><init>(Lcom/android/settings_ext/cV;Landroid/service/persistentdata/PersistentDataBlockManager;Landroid/app/ProgressDialog;I)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v3, v0}, Lcom/android/settings_ext/cW;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/cV;->oc:Lcom/android/settings_ext/MasterClearConfirm;

    invoke-static {v0}, Lcom/android/settings_ext/MasterClearConfirm;->a(Lcom/android/settings_ext/MasterClearConfirm;)V

    goto :goto_0
.end method
