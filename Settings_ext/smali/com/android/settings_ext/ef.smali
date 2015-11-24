.class Lcom/android/settings_ext/ef;
.super Ljava/lang/Object;
.source "MiuiSecurityBluetoothSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic qL:Lcom/android/settings_ext/MiuiSecurityBluetoothSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/MiuiSecurityBluetoothSettingsFragment;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/settings_ext/ef;->qL:Lcom/android/settings_ext/MiuiSecurityBluetoothSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 108
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/settings_ext/ef;->qL:Lcom/android/settings_ext/MiuiSecurityBluetoothSettingsFragment;

    invoke-static {v0}, Lcom/android/settings_ext/MiuiSecurityBluetoothSettingsFragment;->a(Lcom/android/settings_ext/MiuiSecurityBluetoothSettingsFragment;)Lcom/android/settings_ext/ap;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/settings_ext/ap;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 112
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 113
    return-void
.end method
