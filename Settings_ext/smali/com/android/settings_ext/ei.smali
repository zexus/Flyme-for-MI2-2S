.class Lcom/android/settings_ext/ei;
.super Ljava/lang/Object;
.source "MiuiSecurityCommonSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic rf:Lcom/android/settings_ext/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;)V
    .locals 0

    .prologue
    .line 940
    iput-object p1, p0, Lcom/android/settings_ext/ei;->rf:Lcom/android/settings_ext/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 943
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ext/ei;->rf:Lcom/android/settings_ext/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;

    invoke-static {v0}, Lcom/android/settings_ext/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->a(Lcom/android/settings_ext/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ext/ei;->rf:Lcom/android/settings_ext/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;

    invoke-static {v0}, Lcom/android/settings_ext/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->a(Lcom/android/settings_ext/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 945
    new-instance v1, Lcom/android/settings_ext/cu;

    iget-object v0, p0, Lcom/android/settings_ext/ei;->rf:Lcom/android/settings_ext/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;

    invoke-virtual {v0}, Lcom/android/settings_ext/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/settings_ext/cu;-><init>(Landroid/content/Context;)V

    .line 947
    iget-object v0, p0, Lcom/android/settings_ext/ei;->rf:Lcom/android/settings_ext/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;

    invoke-static {v0}, Lcom/android/settings_ext/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->a(Lcom/android/settings_ext/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 948
    invoke-virtual {v1, v0}, Lcom/android/settings_ext/cu;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 950
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/ei;->rf:Lcom/android/settings_ext/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;

    invoke-static {v0}, Lcom/android/settings_ext/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->a(Lcom/android/settings_ext/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 952
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/ei;->rf:Lcom/android/settings_ext/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;

    invoke-static {v0}, Lcom/android/settings_ext/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->f(Lcom/android/settings_ext/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;)V

    .line 953
    return-void
.end method
