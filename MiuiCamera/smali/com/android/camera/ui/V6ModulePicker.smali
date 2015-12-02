.class public Lcom/android/camera/ui/V6ModulePicker;
.super Lcom/android/camera/ui/V6BottomAnimationImageView;
.source "V6ModulePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static sCurrentModule:I


# instance fields
.field private mEnabled:Z

.field private mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput v0, Lcom/android/camera/ui/V6ModulePicker;->sCurrentModule:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6BottomAnimationImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    invoke-virtual {p0, p0}, Lcom/android/camera/ui/V6ModulePicker;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    return-void
.end method

.method public static isCameraModule()Z
    .locals 1

    .prologue
    .line 56
    sget v0, Lcom/android/camera/ui/V6ModulePicker;->sCurrentModule:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPanoramaModule()Z
    .locals 2

    .prologue
    .line 60
    sget v0, Lcom/android/camera/ui/V6ModulePicker;->sCurrentModule:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVideoModule()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 52
    sget v1, Lcom/android/camera/ui/V6ModulePicker;->sCurrentModule:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setCurrentModule(I)V
    .locals 0
    .param p0, "module"    # I

    .prologue
    .line 77
    sput p0, Lcom/android/camera/ui/V6ModulePicker;->sCurrentModule:I

    .line 78
    return-void
.end method


# virtual methods
.method public enableControls(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/android/camera/ui/V6ModulePicker;->mEnabled:Z

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/V6ModulePicker;->setEnabled(Z)V

    .line 41
    return-void
.end method

.method public onCameraOpen()V
    .locals 1

    .prologue
    .line 33
    invoke-super {p0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->onCameraOpen()V

    .line 34
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6ModulePicker;->setVisibility(I)V

    .line 35
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 65
    sget v0, Lcom/android/camera/ui/V6ModulePicker;->sCurrentModule:I

    if-ne v0, v6, :cond_0

    move v6, v1

    .line 66
    .local v6, "module":I
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6ModulePicker;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/ui/V6ModulePicker;->mEnabled:Z

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/android/camera/ui/V6ModulePicker;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const v2, 0x7f0c0049

    const/4 v3, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/V6ModulePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    .line 74
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 26
    invoke-super {p0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->onCreate()V

    .line 27
    iget-object v0, p0, Lcom/android/camera/ui/V6ModulePicker;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    .line 28
    .local v0, "activity":Lcom/android/camera/ActivityBase;
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isImageCaptureIntent()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isVideoCaptureIntent()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/camera/ui/V6ModulePicker;->mVisible:Z

    .line 29
    return-void

    .line 28
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/camera/ui/V6ModulePicker;->mVisible:Z

    if-nez v0, :cond_0

    .line 46
    const/16 p1, 0x8

    .line 48
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/ui/V6BottomAnimationImageView;->setVisibility(I)V

    .line 49
    return-void
.end method
