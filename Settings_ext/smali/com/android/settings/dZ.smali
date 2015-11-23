.class Lcom/android/settings/dZ;
.super Ljava/lang/Object;
.source "MiuiSecurityBluetoothDeviceInfoFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic qC:Lcom/android/settings/dY;


# direct methods
.method constructor <init>(Lcom/android/settings/dY;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/settings/dZ;->qC:Lcom/android/settings/dY;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 133
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 134
    new-instance v0, Lcom/android/settings/ap;

    iget-object v1, p0, Lcom/android/settings/dZ;->qC:Lcom/android/settings/dY;

    iget-object v1, v1, Lcom/android/settings/dY;->qB:Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;

    invoke-virtual {v1}, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/dZ;->qC:Lcom/android/settings/dY;

    iget-object v2, v2, Lcom/android/settings/dY;->qB:Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/ap;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    const/16 v1, 0x64

    invoke-virtual {v0, v1, v3, v3}, Lcom/android/settings/ap;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 137
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 138
    return-void
.end method
