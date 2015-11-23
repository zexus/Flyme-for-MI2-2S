.class Lcom/android/settings_ext/au;
.super Ljava/lang/Object;
.source "ConfirmLockPassword.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic em:Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lcom/android/settings_ext/au;->em:Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/settings_ext/au;->em:Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v0}, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->a(Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/au;->em:Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v1}, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->b(Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 304
    return-void
.end method
