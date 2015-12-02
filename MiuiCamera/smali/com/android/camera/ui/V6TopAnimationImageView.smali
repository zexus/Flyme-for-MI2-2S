.class public Lcom/android/camera/ui/V6TopAnimationImageView;
.super Lcom/android/camera/ui/RotateImageView;
.source "V6TopAnimationImageView.java"

# interfaces
.implements Lcom/android/camera/ui/V6FunctionUI;


# instance fields
.field protected mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/android/camera/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    return-void
.end method


# virtual methods
.method public enableControls(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/V6TopAnimationImageView;->setEnabled(Z)V

    .line 57
    return-void
.end method

.method public handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "what"    # I
    .param p2, "sender"    # I
    .param p3, "extra1"    # Ljava/lang/Object;
    .param p4, "extra2"    # Ljava/lang/Object;

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public onCameraOpen()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 25
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 19
    invoke-super {p0}, Lcom/android/camera/ui/RotateImageView;->onFinishInflate()V

    .line 20
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .locals 0
    .param p1, "p"    # Lcom/android/camera/ui/MessageDispacher;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/camera/ui/V6TopAnimationImageView;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 47
    return-void
.end method
