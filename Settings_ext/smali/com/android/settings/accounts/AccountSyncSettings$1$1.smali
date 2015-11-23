.class Lcom/android/settings/accounts/AccountSyncSettings$1$1;
.super Ljava/lang/Object;
.source "AccountSyncSettings.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# instance fields
.field final synthetic BV:Lcom/android/settings/accounts/AccountSyncSettings$1;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/AccountSyncSettings$1;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/settings/accounts/AccountSyncSettings$1$1;->BV:Lcom/android/settings/accounts/AccountSyncSettings$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 101
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings$1$1;->BV:Lcom/android/settings/accounts/AccountSyncSettings$1;

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings$1;->BU:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v0}, Lcom/android/settings/accounts/AccountSyncSettings;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    :goto_0
    return-void

    .line 106
    :cond_0
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-ne v0, v1, :cond_2

    .line 107
    const/4 v0, 0x0

    :goto_1
    move v1, v0

    .line 116
    :goto_2
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings$1$1;->BV:Lcom/android/settings/accounts/AccountSyncSettings$1;

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings$1;->BU:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings$1$1;->BV:Lcom/android/settings/accounts/AccountSyncSettings$1;

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings$1;->BU:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings$1$1;->BV:Lcom/android/settings/accounts/AccountSyncSettings$1;

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings$1;->BU:Lcom/android/settings/accounts/AccountSyncSettings;

    const/16 v1, 0x65

    invoke-static {v0, v1}, Lcom/android/settings/accounts/AccountSyncSettings;->a(Lcom/android/settings/accounts/AccountSyncSettings;I)V

    goto :goto_0

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings$1$1;->BV:Lcom/android/settings/accounts/AccountSyncSettings$1;

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings$1;->BU:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v0}, Lcom/android/settings/accounts/AccountSyncSettings;->finish()V

    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    goto :goto_2

    .line 111
    :catch_1
    move-exception v0

    goto :goto_2

    .line 109
    :catch_2
    move-exception v0

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1
.end method
