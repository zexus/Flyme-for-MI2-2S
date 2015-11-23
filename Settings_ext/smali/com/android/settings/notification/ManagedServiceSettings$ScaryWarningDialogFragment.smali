.class public Lcom/android/settings_ext/notification/ManagedServiceSettings$ScaryWarningDialogFragment;
.super Landroid/app/DialogFragment;
.source "ManagedServiceSettings.java"


# instance fields
.field final synthetic aef:Lcom/android/settings_ext/notification/ManagedServiceSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings_ext/notification/ManagedServiceSettings;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/settings_ext/notification/ManagedServiceSettings$ScaryWarningDialogFragment;->aef:Lcom/android/settings_ext/notification/ManagedServiceSettings;

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/content/ComponentName;Ljava/lang/String;)Lcom/android/settings_ext/notification/ManagedServiceSettings$ScaryWarningDialogFragment;
    .locals 3

    .prologue
    .line 95
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 96
    const-string v1, "c"

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v1, "l"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0, v0}, Lcom/android/settings_ext/notification/ManagedServiceSettings$ScaryWarningDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 99
    return-object p0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 104
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/settings_ext/notification/ManagedServiceSettings$ScaryWarningDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 106
    const-string v1, "l"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 107
    const-string v2, "c"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 109
    invoke-virtual {p0}, Lcom/android/settings_ext/notification/ManagedServiceSettings$ScaryWarningDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ext/notification/ManagedServiceSettings$ScaryWarningDialogFragment;->aef:Lcom/android/settings_ext/notification/ManagedServiceSettings;

    invoke-static {v3}, Lcom/android/settings_ext/notification/ManagedServiceSettings;->b(Lcom/android/settings_ext/notification/ManagedServiceSettings;)Lcom/android/settings_ext/notification/ManagedServiceSettings$Config;

    move-result-object v3

    iget v3, v3, Lcom/android/settings_ext/notification/ManagedServiceSettings$Config;->aei:I

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 110
    invoke-virtual {p0}, Lcom/android/settings_ext/notification/ManagedServiceSettings$ScaryWarningDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ext/notification/ManagedServiceSettings$ScaryWarningDialogFragment;->aef:Lcom/android/settings_ext/notification/ManagedServiceSettings;

    invoke-static {v4}, Lcom/android/settings_ext/notification/ManagedServiceSettings;->b(Lcom/android/settings_ext/notification/ManagedServiceSettings;)Lcom/android/settings_ext/notification/ManagedServiceSettings$Config;

    move-result-object v4

    iget v4, v4, Lcom/android/settings_ext/notification/ManagedServiceSettings$Config;->aej:I

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v1, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 111
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ext/notification/ManagedServiceSettings$ScaryWarningDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings_ext/notification/ManagedServiceSettings$ScaryWarningDialogFragment$2;

    invoke-direct {v3, p0, v0}, Lcom/android/settings_ext/notification/ManagedServiceSettings$ScaryWarningDialogFragment$2;-><init>(Lcom/android/settings_ext/notification/ManagedServiceSettings$ScaryWarningDialogFragment;Landroid/content/ComponentName;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings_ext/notification/ManagedServiceSettings$ScaryWarningDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ext/notification/ManagedServiceSettings$ScaryWarningDialogFragment$1;-><init>(Lcom/android/settings_ext/notification/ManagedServiceSettings$ScaryWarningDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
