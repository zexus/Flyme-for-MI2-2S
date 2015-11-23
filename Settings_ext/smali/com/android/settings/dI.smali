.class Lcom/android/settings/dI;
.super Ljava/lang/Object;
.source "MiuiFingerprintDetailFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic qa:Lcom/android/settings/MiuiFingerprintDetailFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiFingerprintDetailFragment;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/settings/dI;->qa:Lcom/android/settings/MiuiFingerprintDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 53
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 54
    new-instance v0, Lcom/android/settings/cu;

    iget-object v1, p0, Lcom/android/settings/dI;->qa:Lcom/android/settings/MiuiFingerprintDetailFragment;

    invoke-virtual {v1}, Lcom/android/settings/MiuiFingerprintDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/cu;-><init>(Landroid/content/Context;)V

    .line 55
    iget-object v1, p0, Lcom/android/settings/dI;->qa:Lcom/android/settings/MiuiFingerprintDetailFragment;

    invoke-static {v1}, Lcom/android/settings/MiuiFingerprintDetailFragment;->a(Lcom/android/settings/MiuiFingerprintDetailFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/cu;->w(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/android/settings/dI;->qa:Lcom/android/settings/MiuiFingerprintDetailFragment;

    invoke-virtual {v0}, Lcom/android/settings/MiuiFingerprintDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "settings_fingerprint_id_prefix_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/dI;->qa:Lcom/android/settings/MiuiFingerprintDetailFragment;

    invoke-static {v2}, Lcom/android/settings/MiuiFingerprintDetailFragment;->a(Lcom/android/settings/MiuiFingerprintDetailFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 59
    iget-object v0, p0, Lcom/android/settings/dI;->qa:Lcom/android/settings/MiuiFingerprintDetailFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/MiuiFingerprintDetailFragment;->a(Lcom/android/settings/MiuiFingerprintDetailFragment;Z)Z

    .line 61
    iget-object v0, p0, Lcom/android/settings/dI;->qa:Lcom/android/settings/MiuiFingerprintDetailFragment;

    invoke-virtual {v0}, Lcom/android/settings/MiuiFingerprintDetailFragment;->finish()V

    .line 63
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 64
    return-void
.end method
