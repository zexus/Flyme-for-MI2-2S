.class Lcom/android/settings/accounts/AccountSyncSettings$1;
.super Ljava/lang/Object;
.source "AccountSyncSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic BU:Lcom/android/settings/accounts/AccountSyncSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/AccountSyncSettings;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/settings/accounts/AccountSyncSettings$1;->BU:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings$1;->BU:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accounts/AccountSyncSettings$1;->BU:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-static {v1}, Lcom/android/settings/accounts/AccountSyncSettings;->a(Lcom/android/settings/accounts/AccountSyncSettings;)Landroid/accounts/Account;

    move-result-object v1

    new-instance v2, Lcom/android/settings/accounts/AccountSyncSettings$1$1;

    invoke-direct {v2, p0}, Lcom/android/settings/accounts/AccountSyncSettings$1$1;-><init>(Lcom/android/settings/accounts/AccountSyncSettings$1;)V

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/accounts/AccountSyncSettings$1;->BU:Lcom/android/settings/accounts/AccountSyncSettings;

    iget-object v4, v4, Lcom/android/settings/accounts/AccountSyncSettings;->zA:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/accounts/AccountManager;->removeAccountAsUser(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/accounts/AccountManagerFuture;

    .line 124
    return-void
.end method
