.class Lcom/android/settings_ext/eQ;
.super Ljava/lang/Object;
.source "NewFingerprintInternalActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic sX:Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/settings_ext/eQ;->sX:Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/settings_ext/eQ;->sX:Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-static {v0}, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->c(Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;)Landroid/app/AlertDialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/settings_ext/eQ;->sX:Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;

    iget-object v1, p0, Lcom/android/settings_ext/eQ;->sX:Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;

    const v2, 0x7f090e4d

    invoke-static {v1, v2}, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->a(Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;I)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->a(Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/eQ;->sX:Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-static {v0}, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->c(Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 161
    return-void
.end method
