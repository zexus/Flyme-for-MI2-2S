.class Lcom/android/settings/dR;
.super Ljava/lang/Object;
.source "MiuiMasterClear.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic qr:Lcom/android/settings/MiuiMasterClear;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiMasterClear;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/android/settings/dR;->qr:Lcom/android/settings/MiuiMasterClear;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 297
    invoke-static {}, Lcom/android/settings/hl;->hr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    :goto_0
    return-void

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dR;->qr:Lcom/android/settings/MiuiMasterClear;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/MiuiMasterClear;->a(Lcom/android/settings/MiuiMasterClear;Z)V

    .line 302
    iget-object v0, p0, Lcom/android/settings/dR;->qr:Lcom/android/settings/MiuiMasterClear;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/MiuiMasterClear;->b(Lcom/android/settings/MiuiMasterClear;Z)V

    .line 304
    iget-object v0, p0, Lcom/android/settings/dR;->qr:Lcom/android/settings/MiuiMasterClear;

    invoke-static {v0}, Lcom/android/settings/MiuiMasterClear;->b(Lcom/android/settings/MiuiMasterClear;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/dR;->qr:Lcom/android/settings/MiuiMasterClear;

    invoke-static {v0}, Lcom/android/settings/MiuiMasterClear;->b(Lcom/android/settings/MiuiMasterClear;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/android/settings/dR;->qr:Lcom/android/settings/MiuiMasterClear;

    invoke-static {v0}, Lcom/android/settings/MiuiMasterClear;->c(Lcom/android/settings/MiuiMasterClear;)V

    goto :goto_0

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/android/settings/dR;->qr:Lcom/android/settings/MiuiMasterClear;

    invoke-static {v0}, Lcom/android/settings/MiuiMasterClear;->d(Lcom/android/settings/MiuiMasterClear;)V

    goto :goto_0
.end method
