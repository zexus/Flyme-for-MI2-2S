.class Lcom/android/settings_ext/dR;
.super Ljava/lang/Object;
.source "MiuiMasterClear.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic qr:Lcom/android/settings_ext/MiuiMasterClear;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/MiuiMasterClear;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/android/settings_ext/dR;->qr:Lcom/android/settings_ext/MiuiMasterClear;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 297
    invoke-static {}, Lcom/android/settings_ext/hl;->hr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    :goto_0
    return-void

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/dR;->qr:Lcom/android/settings_ext/MiuiMasterClear;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings_ext/MiuiMasterClear;->a(Lcom/android/settings_ext/MiuiMasterClear;Z)V

    .line 302
    iget-object v0, p0, Lcom/android/settings_ext/dR;->qr:Lcom/android/settings_ext/MiuiMasterClear;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings_ext/MiuiMasterClear;->b(Lcom/android/settings_ext/MiuiMasterClear;Z)V

    .line 304
    iget-object v0, p0, Lcom/android/settings_ext/dR;->qr:Lcom/android/settings_ext/MiuiMasterClear;

    invoke-static {v0}, Lcom/android/settings_ext/MiuiMasterClear;->b(Lcom/android/settings_ext/MiuiMasterClear;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ext/dR;->qr:Lcom/android/settings_ext/MiuiMasterClear;

    invoke-static {v0}, Lcom/android/settings_ext/MiuiMasterClear;->b(Lcom/android/settings_ext/MiuiMasterClear;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/android/settings_ext/dR;->qr:Lcom/android/settings_ext/MiuiMasterClear;

    invoke-static {v0}, Lcom/android/settings_ext/MiuiMasterClear;->c(Lcom/android/settings_ext/MiuiMasterClear;)V

    goto :goto_0

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/dR;->qr:Lcom/android/settings_ext/MiuiMasterClear;

    invoke-static {v0}, Lcom/android/settings_ext/MiuiMasterClear;->d(Lcom/android/settings_ext/MiuiMasterClear;)V

    goto :goto_0
.end method
