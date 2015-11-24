.class Lcom/android/settings_ext/accounts/MiuiAccountListSettings$2;
.super Landroid/os/Handler;
.source "MiuiAccountListSettings.java"


# instance fields
.field final synthetic Cq:Lcom/android/settings_ext/accounts/MiuiAccountListSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/accounts/MiuiAccountListSettings;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/settings_ext/accounts/MiuiAccountListSettings$2;->Cq:Lcom/android/settings_ext/accounts/MiuiAccountListSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 96
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/settings_ext/accounts/MiuiAccountListSettings$2;->Cq:Lcom/android/settings_ext/accounts/MiuiAccountListSettings;

    invoke-virtual {v0}, Lcom/android/settings_ext/accounts/MiuiAccountListSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/settings_ext/accounts/MiuiAccountListSettings$2;->Cq:Lcom/android/settings_ext/accounts/MiuiAccountListSettings;

    invoke-static {v0}, Lcom/android/settings_ext/accounts/MiuiAccountListSettings;->b(Lcom/android/settings_ext/accounts/MiuiAccountListSettings;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 99
    iget-object v0, p0, Lcom/android/settings_ext/accounts/MiuiAccountListSettings$2;->Cq:Lcom/android/settings_ext/accounts/MiuiAccountListSettings;

    iget-object v1, p0, Lcom/android/settings_ext/accounts/MiuiAccountListSettings$2;->Cq:Lcom/android/settings_ext/accounts/MiuiAccountListSettings;

    invoke-static {v1}, Lcom/android/settings_ext/accounts/MiuiAccountListSettings;->b(Lcom/android/settings_ext/accounts/MiuiAccountListSettings;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/accounts/MiuiAccountListSettings;->onBuildHeaders(Ljava/util/List;)V

    .line 100
    iget-object v0, p0, Lcom/android/settings_ext/accounts/MiuiAccountListSettings$2;->Cq:Lcom/android/settings_ext/accounts/MiuiAccountListSettings;

    invoke-static {v0}, Lcom/android/settings_ext/accounts/MiuiAccountListSettings;->a(Lcom/android/settings_ext/accounts/MiuiAccountListSettings;)Lcom/android/settings_ext/accounts/MiuiAccountListSettings$HeaderAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ext/accounts/MiuiAccountListSettings$HeaderAdapter;->notifyDataSetChanged()V

    .line 103
    :cond_0
    return-void
.end method
