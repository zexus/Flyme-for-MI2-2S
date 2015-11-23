.class Lcom/android/settings_ext/accounts/MiuiAccountListSettings$1;
.super Ljava/lang/Object;
.source "MiuiAccountListSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic Cq:Lcom/android/settings_ext/accounts/MiuiAccountListSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/accounts/MiuiAccountListSettings;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/settings_ext/accounts/MiuiAccountListSettings$1;->Cq:Lcom/android/settings_ext/accounts/MiuiAccountListSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/settings_ext/accounts/MiuiAccountListSettings$1;->Cq:Lcom/android/settings_ext/accounts/MiuiAccountListSettings;

    invoke-static {v0}, Lcom/android/settings_ext/accounts/MiuiAccountListSettings;->a(Lcom/android/settings_ext/accounts/MiuiAccountListSettings;)Lcom/android/settings_ext/accounts/MiuiAccountListSettings$HeaderAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/settings_ext/accounts/MiuiAccountListSettings$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 87
    if-eqz v0, :cond_0

    .line 88
    iget-object v1, p0, Lcom/android/settings_ext/accounts/MiuiAccountListSettings$1;->Cq:Lcom/android/settings_ext/accounts/MiuiAccountListSettings;

    invoke-virtual {v1, v0}, Lcom/android/settings_ext/accounts/MiuiAccountListSettings;->c(Landroid/preference/PreferenceActivity$Header;)V

    .line 90
    :cond_0
    return-void
.end method
