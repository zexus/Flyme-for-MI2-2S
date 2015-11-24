.class Lcom/android/settings_ext/ec;
.super Ljava/lang/Object;
.source "MiuiSecurityBluetoothMatchDeviceFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic qJ:Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/android/settings_ext/ec;->qJ:Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/settings_ext/ec;->qJ:Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-static {v0}, Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;->h(Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 253
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 256
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 249
    return-void
.end method
